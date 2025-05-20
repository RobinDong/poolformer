MODEL=poolformer_s12 # poolformer_{s12, s24, s36, m36, m48}
python3 validate.py /data/imagenet  --model $MODEL -b 128 \
  --pretrained \
  --log-freq 100

