#!/bin/bash

specs=(
  spec/services/rss_reader
)
num_copies=10

for spec in ${specs[*]}; do
  for i in $(seq 1 $num_copies); do
    copy=${spec}_${i}_spec.rb
    cp ${spec}_spec.rb $copy
  done
done
