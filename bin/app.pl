#!/usr/bin/env perl

use Sys::Hostname;
use Mojolicious::Lite;

get '/healthz' => sub {
  my $c = shift;
  $c->render(status => 200, json => {});
};

get '/' => sub {
  my $c = shift;
  $c->render(
    status => 200,
    json => {
      "Powered-By" => $ENV{'POWERED_BY'} || "Perl",
      "Hostname"   => hostname(), 
    }
  );
};

app->start;
