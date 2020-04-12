#!/bin/bash

VERSION=$(mvn help:evaluate -Dexpression=project.version -q -DforceStdout)

rm -rf apache-maven-* &&\

mvn clean package -DskipTests -Drat.skip=true &&\

unzip ./apache-maven/target/apache-maven-$VERSION-bin.zip -d . &&\

apache-maven-$VERSION/bin/mvn -f /Users/monstervivi/Downloads/git/maven-issue-reproduction/pom.xml compile
