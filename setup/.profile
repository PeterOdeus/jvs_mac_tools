JVS_PATH=/Users/podeus/Documents/dev/java/jvs
JVS_TOOLS_PATH=$JVS_PATH/tools

export JVS_VERSION=3.0.6;
export JVS_TOOLS_VERSION=$JVS_VERSION;
export JVS_DEV_TOOLS_VERSION=2011C;
export JVS_HOME=$JVS_TOOLS_PATH/jvs-tools-$JVS_VERSION;

export PATH=$JVS_HOME:$PATH;

JAVA_HOME=/Library/Java/Home
export JAVA_HOME;
JAVA=$JAVA_HOME/bin
export PATH=$JAVA:$PATH;

M2_HOME=$JVS_TOOLS_PATH/apache-maven-3.0.3
export M2_HOME;
M2=$M2_HOME/bin
export M2;
export PATH=$M2:$PATH;
MAVEN_OPTS="-Xms256m -Xmx1024m -XX:MaxPermSize=192m"
export MAVEN_OPTS;

ANT_HOME=$JVS_TOOLS_PATH/apache-ant-1.8.2
export ANT_HOME;
export PATH=$ANT_HOME/bin:$PATH;

CATALINA_HOME=$JVS_TOOLS_PATH/apache-tomcat-6.0.33
export CATALINA_HOME;
export PATH=$CATALINA_HOME/bin:$PATH;

DERBY_HOME=$JVS_TOOLS_PATH/db-derby-10.8.2.2
export DERBY_HOME;
export PATH=$DERBY_HOME/bin:$PATH;
DERBY_OPTS="-Dderby.system.home="$JVS_PATH/db
export DERBY_OPTS;
