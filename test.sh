#!/bin/sh
export API_KEY=asdf
export API_CONTRIBUTOR_ID=254;
java -jar ../../glytoucanClient/target/client-0.0.1-SNAPSHOT.jar -cp ./target/sync-0.0.1-SNAPSHOT.jar org.glytoucan.sync.SyncApp
