#!/bin/bash

function update() {
  mkdir -p tmp
  wget -O tmp/wsdl.zip $2
  unzip -d "$1/src/main/wsdl" tmp/wsdl.zip
  rm tmp/wsdl.zip
  rm -r tmp
}
update "arkiv" "http://maven.adeo.no/nexus/content/groups/public/no/nav/esb/nav/nav-tjeneste-arkiv/1.2.1/nav-tjeneste-arkiv-1.2.1-wsdlif.zip"
