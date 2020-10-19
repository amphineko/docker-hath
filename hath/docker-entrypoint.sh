#!/bin/sh -ex

cd /hath

echo -n "$CLIENT_ID-$CLIENT_KEY" > /hath/data/client_login

exec java -jar HentaiAtHome.jar
