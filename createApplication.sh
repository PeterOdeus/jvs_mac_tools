#!/bin/bash

ARTIFACT_ID=$1
if [ -z $ARTIFACT_ID ]
then
  read -p 'Enter ArtifactId: ' TEMP_ARTIFACT_ID
  ARTIFACT_ID=$TEMP_ARTIFACT_ID
fi
echo ArtifactId = $ARTIFACT_ID

GROUP_ID=$2
if [ -z $GROUP_ID ]
then
  read -p 'Enter GroupId: ' TEMP_GROUP_ID
  GROUP_ID=$TEMP_GROUP_ID
fi
echo GroupId = $GROUP_ID

if [ -n $JVS_VERSION ]
then
  ARCHETYPE_VERSION='-DarchetypeVersion='$JVS_VERSION
fi
echo $ARCHETYPE_VERSION

function onError(){
    echo --- ERROR ENCOUNTERED - aborting ---
    ARCHETYPE_VERSION=
    exit -1
}

mvn archetype:create -DarchetypeGroupId=com.volvo.jvs.archetypes -DarchetypeArtifactId=jvs-application-archetype -DartifactId=$ARTIFACT_ID -DgroupId=$GROUP_ID $ARCHETYPE_VERSION

if [ $? != 0 ]
then
    onError
fi

cd $ARTIFACT_ID

rm -R src

mvn -N install
