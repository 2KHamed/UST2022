#!/usr/bin/env bash

SONYC_UST_PATH=/home/server/Dcase/task5 ### Project path

pushd src

# Feature Extration
python3 feature_extraction.py $SONYC_UST_PATH/data/audio/ $SONYC_UST_PATH/embeddings_ef_3ch_5s_train/

# Train
python3 classify.py $SONYC_UST_PATH/data/annotations_train.csv $SONYC_UST_PATH/data/dcase-ust-taxonomy.yaml $SONYC_UST_PATH/output baseline_fine \
  --label_mode fine \
  --learning_rate 1e-4 \
  --l2_reg 1e-4 \
  --dropout_size 0.4 \
  --ef_mode 4 \
  --num_epochs 8 \
  --emb_dir $SONYC_UST_PATH/embeddings_ef_3ch_5s_train/

# Evaluation
python3 evaluate_predictions.py $SONYC_UST_PATH/output/baseline_fine/ $SONYC_UST_PATH/data/annotations_train.csv $SONYC_UST_PATH/data/dcase-ust-taxonomy.yaml

popd

python src/classify.py [D:\Bach code\Dcase2020_Task5-master\data\annotations_train.csv] [D:\Bach code\Dcase2020_Task5-master\data\dcase-ust-taxonomy.yaml] [D:\Bach code\Dcase2020_Task5-master\output] [--D:\Bach code\Dcase2020_Task5-master\embeddings_ef_3ch_5s_train] [--ef_mode 4] [--dropout_size 0.4] [--learning_rate 1e-4] [--l2_reg 1e-4] [--batch_size] [--num_epochs 8] [--patience] [--random-state]


python classify.py "D:\Bach code\Dcase2020_Task5-master\data\annotations_train.csv" "D:\Bach code\Dcase2020_Task5-master\data\dcase-ust-taxonomy.yaml" "D:\Bach code\Dcase2020_Task5-master\embeddings_ef_3ch_5s_train" "D:\Bach code\Dcase2020_Task5-master\output" baseline_fine --label_mode fine


python classify.py "D:\Bach code\Dcase2020_Task5-master\data\annotations_train.csv" "D:\Bach code\Dcase2020_Task5-master\data\dcase-ust-taxonomy.yaml" "D:\Bach code\Dcase2020_Task5-master\output" baseline_fine\
  --label_mode fine \
  --learning_rate 1e-4 \
  --l2_reg 1e-4 \
  --dropout_size 0.4 \
  --ef_mode 4 \
  --num_epochs 8 \
  --emb_dir $SONYC_UST_PATH/embeddings_ef_3ch_5s_train/



#python evaluate_predictions.py "Z:/Bach code/Dcase2020_Task5-master/output/baseline_fine/" "Z:/Bach code/Dcase2020_Task5-master/data/annotations_train.csv" "Z:/Bach code/Dcase2020_Task5-master/data/dcase-ust-taxonomy.yaml"

#python evaluate_predictions.py "Z:\Bach code\Dcase2020_Task5-master\output\baseline_fine\" "Z:\Bach code\Dcase2020_Task5-master\data\annotations_train.csv" "Z:\Bach code\Dcase2020_Task5-master\data\dcase-ust-taxonomy.yaml"


#python classify.py "Z:\Bach code\Dcase2020_Task5-master\data\annotations_train.csv" "Z:\Bach code\Dcase2020_Task5-master\data\dcase-ust-taxonomy.yaml" "Z:\Bach code\Dcase2020_Task5-master\output" baseline_fine --label_mode fine --learning_rate 1e-4 --l2_reg 1e-4 --dropout_size 0.4 --ef_mode 3 --num_epochs 8 --emb_dir "Z:\Bach code\Dcase2020_Task5-master\src"\


#python classify.py "Z:\Bach code\Dcase2020_Task5-master\data\annotations_train.csv" "Z:\Bach code\Dcase2020_Task5-master\data\dcase-ust-taxonomy.yaml" "Z:\Bach code\Dcase2020_Task5-master\output" baseline_coarse --label_mode coarse --learning_rate 1e-4 --l2_reg 1e-4 --dropout_size 0.4 --ef_mode 3 --num_epochs 8 --emb_dir "Z:\Bach code\Dcase2020_Task5-master\src"\


#python classify.py "D:\Bach code\Dcase2020_Task5-master\data\annotations_train.csv" "D:\Bach code\Dcase2020_Task5-master\data\dcase-ust-taxonomy.yaml" "D:\Bach code\Dcase2020_Task5-master\output" baseline_fine --label_mode fine --learning_rate 1e-4 --l2_reg 1e-4 --dropout_size 0.4 --ef_mode 4 --num_epochs 8 --emb_dir "D:\Bach code\Dcase2020_Task5-master\embeddings_ef_3ch_5s_train"\

python classify.py "D:\Bach code\Dcase2020_Task5-master\data\annotations_train.csv" "D:\Bach code\Dcase2020_Task5-master\data\dcase-ust-taxonomy.yaml" "D:\Bach code\Dcase2020_Task5-master\output" baseline_fine --label_mode fine --learning_rate 1e-4 --l2_reg 1e-4 --dropout_size 0.4 --ef_mode 4 --num_epochs 8 --emb_dir "D:\Bach code\Dcase2020_Task5-master\embeddings_ef_3ch_5s_train"\


#python classify.py "D:\Bach code\Dcase2020_Task5-master\data\annotations_train.csv" "D:\Bach code\Dcase2020_Task5-master\data\dcase-ust-taxonomy.yaml" "D:\Bach code\Dcase2020_Task5-master\output" baseline_fine\--label_mode fine\ --learning_rate 1e-4\ --l2_reg 1e-4\ --dropout_size 0.4\ --ef_mode 4\ --num_epochs 8\ --emb_dir D:\Bach code\Dcase2020_Task5-master\embeddings_ef_3ch_5s_train\