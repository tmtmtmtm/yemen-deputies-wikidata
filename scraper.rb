#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

query = 'SELECT DISTINCT ?item WHERE { ?item p:P39/ps:P39 wd:Q24810806 }'
p39s = EveryPolitician::Wikidata.sparql(query)

EveryPolitician::Wikidata.scrape_wikidata(ids: p39s)
