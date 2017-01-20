#!/bin/bash
#source ~/.bashrc


#python prepro.py --input_train_json data/vqa_raw_train.json --input_test_json data/vqa_raw_test.json --num_ans 1000

th prepro_img.lua -input_json data_prepro.json -image_root /data/user/xiaohui/vqa/ -cnn_proto /data/user/xiaohui/vqa/pretrainedVGG19/VGG_ILSVRC_19_layers_deploy.prototxt  -cnn_model /data/user/xiaohui/vqa/pretrainedVGG19/VGG_ILSVRC_19_layers.caffemodel 
#th prepro_img.lua -input_json data_prepro.json -image_root /data/user/xiaohui/vqa/ -cnn_proto ./pretrained/model_train_val/VGG_ILSVRC_19_layers_deploy.prototxt  -cnn_model ./pretrained/model_train_val/VGG_ILSVRC_19_layers.caffemodel 
