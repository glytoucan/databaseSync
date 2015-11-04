#!/bin/sh
export FILENAME=client-0.0.1-SNAPSHOT.jar
export CLIENT_JAR=~/glytoucanClient/target/$FILENAME
export API_KEY=asdf
export API_CONTRIBUTOR_ID=254;
cp $CLIENT_JAR target/
cd target;jar xvf $FILENAME;cd ..
java -cp ./target/$FILENAME:./target/sync-0.0.1-SNAPSHOT.jar:./target/lib/* org.glytoucan.sync.SyncApp
