FROM mhulscher/perl-carton-base:latest

## Expose the webserver
EXPOSE 8080

## Start the app!
CMD ["./bin/app.pl daemon -l http://*:8080"]
