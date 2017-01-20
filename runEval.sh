#!/bin/bash
#source ~/.bashrc




#train-val
#th eval.lua -input_img_h5 ./split1/data_img.h5 -input_ques_h5 ./split1/data_prepro.h5 -input_json ./split1/data_prepro.json -model_path ./model/lstm.t7 -out_path ./result_split1

#train-val-test on test2105 result
#th eval.lua -input_img_h5 ./split2/data_img.h5 -input_ques_h5 ./split2/data_prepro.h5 -input_json ./split2/data_prepro.json -model_path pretrained/model_train_val_test/lstm.t7  -out_path ./result_split2

#train-val-test on test-dev2015 result
th eval.lua -input_img_h5 ./data_img.h5 -input_ques_h5 ./data_prepro.h5 -input_json ./data_prepro.json -model_path ./model/lstm.t7  -out_path ./result_MultiChoice_testdev/

#train-val-test on val result
#th eval.lua -input_img_h5 ./split2/data_img.h5 -input_ques_h5 ./split2-val/data_prepro.h5 -input_json ./split2-val/data_prepro.json -model_path ./model/lstm.t7  -out_path ./result_split2_val/
