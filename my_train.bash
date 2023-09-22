python train.py --workers 8 --device 7 --batch-size 16 --data data/voc.yaml --img 640 --cfg cfg/training/yolov7.yaml --weights '' --name test --hyp data/hyp.scratch.p5.yaml

python train.py --workers 8 --device 7 --batch-size 16 --data ./data/voc.yaml --img 640 --cfg cfg/myconfig/0914_v7_init2_t1-S42.yaml  --weights '' --name cfg/myconfig/0914_v7_init2_t1-S42 --hyp data/hyp.scratch.p5.yaml

python train.py --workers 8 --device 6 --batch-size 16 --data ./data/voc.yaml --img 640 --cfg cfg/training/yolov7.yaml  --weights '' --name yolov7-voc-02 --hyp data/hyp.scratch.p5.yaml

python train.py --workers 8 --device 5 --batch-size 16 --data ./data/voc.yaml --img 640 --cfg cfg/myconfig/0914_v7_init2_t1-S44.yaml --weights '' --name 0914_v7_init2_t1-S44 --hyp data/hyp.scratch.p5.yaml

python ./tools/train_izdnas.py --cfg ./config/search/train_izdnas-t1-coco.yaml --data ./config/dataset/coco_dnas.yaml --hyp ./config/training/hyp.zerocost.yaml --model ./config/model/Search-YOLOv4-CSP.yaml --device 7 --exp_name 0918_coco-v4-t1-S42 --nas DNAS-104 --zc naswot