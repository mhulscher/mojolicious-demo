# Mojolicious Demo

Small application used to demonstrate Docker fundamentals.

## Build
`docker build -t mojolicious-demo .`

## Run
`docker run -dp 8080:8080 mojolicious-demo`

## Configure
`docker run -dp 8080:8080 -e POWERED_BY=Perl mojolicious-demo`

## Use
```
curl -s http://127.0.0.1:8080 | jq -Mc .
{
  "Hostname": "2e84f7c832d5",
  "Powered-By": "Perl"
}
```
