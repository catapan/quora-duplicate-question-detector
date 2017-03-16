#!/bin/bash
#d=50
#d=100
d=200
#d=300

s=.04
#s=.1

lambda=0.0
#lambda=0.1
#lambda=1.0

#set="dev"
set="full"

#vectors="./glove.6B/glove.6B"
vectors="./glove.twitter.27B/glove.twitter.27B"

python train.py \
    --training_data_file="./data/training.${set}.tsv" \
    --dev_sample_percentage=${s} \
    --batch_size=64 \
    --embeddings_file="${vectors}.${d}d.txt" \
    --embedding_dim=${d} \
    --l2_reg_lambda=${lambda}
