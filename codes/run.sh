rm -r ../datasets/*
python3 -m preprocess.create_bicubic_dataset --dataset df2k --artifacts tdsr -opt options/df2k/train_bicubic_noise.yml
python3 -m preprocess.collect_noise --dataset df2k --artifacts tdsr -opt options/df2k/train_bicubic_noise.yml
CUDA_VISIBLE_DEVICES=0 python3 train.py -opt options/df2k/train_bicubic_noise.yml
