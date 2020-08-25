#!/bin/bash

function update() {
  local destination=$1/$2
  local url=$3
  local tmpfile=$(mktemp)

  mkdir -p $destination

  curl -s -o $tmpfile $url && unzip -o -d $destination $tmpfile && rm $tmpfile
}

update "pen-arkiv-esb-wsclient-legacy" "src/main/resources/wsdl" "https://repo.adeo.no/repository/maven-public/no/nav/esb/nav/nav-tjeneste-arkiv/1.2.1/nav-tjeneste-arkiv-1.2.1-wsdlif.zip"
