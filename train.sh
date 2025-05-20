MODEL=poolformer_s12 # poolformer_{s12, s24, s36, m36, m48}
DROP_PATH=0.1 # drop path rates [0.1, 0.1, 0.2, 0.3, 0.4] responding to model [s12, s24, s36, m36, m48]
python3 train.py /data/imagenet \
  --model $MODEL \
  --batch-size 512 \
  --lr 1e-5 \
  --epochs 100 \
  --drop-path $DROP_PATH \
  --log-interval 5000 \
  --resume poolformer_s12.pth
