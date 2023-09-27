python train.py --workers 8 --device 7 --batch-size 16 --data data/voc.yaml --img 640 --cfg cfg/training/yolov7.yaml --weights '' --name test --hyp data/hyp.scratch.p5.yaml

python train.py --workers 8 --device 7 --batch-size 16 --data ./data/voc.yaml --img 640 --cfg cfg/myconfig/0914_v7_init2_t1-S42.yaml  --weights '' --name cfg/myconfig/0914_v7_init2_t1-S42 --hyp data/hyp.scratch.p5.yaml

python train.py --workers 8 --device 6 --batch-size 16 --data ./data/voc.yaml --img 640 --cfg cfg/training/yolov7.yaml  --weights '' --name yolov7-voc-02 --hyp data/hyp.scratch.p5.yaml

python train.py --workers 8 --device 5 --batch-size 16 --data ./data/voc.yaml --img 640 --cfg cfg/myconfig/0914_v7_init2_t1-S44.yaml --weights '' --name 0914_v7_init2_t1-S44 --hyp data/hyp.scratch.p5.yaml

python ./tools/train_izdnas.py --cfg ./config/search/train_izdnas-t1-coco.yaml --data ./config/dataset/coco_dnas.yaml --hyp ./config/training/hyp.zerocost.yaml --model ./config/model/Search-YOLOv4-CSP.yaml --device 7 --exp_name 0918_coco-v4-t1-S42 --nas DNAS-104 --zc naswot


python train.py --workers 8 --device 5 --batch-size 16 --data ./data/voc.yaml --img 640 --cfg cfg/myconfig/0923_v7_init2_t3-S42.yaml --weights '' --name 0923_v7_init2_t3-S42 --hyp data/hyp.scratch.p5.yaml
python train.py --workers 8 --device 6 --batch-size 16 --data ./data/voc.yaml --img 640 --cfg cfg/myconfig/0923_v7_init2_t3-S43.yaml --weights '' --name 0923_v7_init2_t3-S43 --hyp data/hyp.scratch.p5.yaml
python train.py --workers 8 --device 7 --batch-size 16 --data ./data/voc.yaml --img 640 --cfg cfg/myconfig/0923_v7_init2_t3-S44.yaml --weights '' --name 0923_v7_init2_t3-S44 --hyp data/hyp.scratch.p5.yaml
python train.py --workers 8 --device 4 --batch-size 16 --data ./data/voc.yaml --img 640 --cfg cfg/myconfig/0923_v7_init2_t3-S45.yaml --weights '' --name 0923_v7_init2_t3-S45 --hyp data/hyp.scratch.p5.yaml

export NCCL_P2P_DISABLE=1
export NCCL_IB_DISABLE=1
export NCCL_DEBUG=info
export NCCL_P2P_LEVEL=NVL 
python -m torch.distributed.launch --nproc_per_node 4 --master_port 7237 train.py   --workers 8 --device 4,5,6,7  --batch-size 64 --data data/coco.yaml --img 640 --cfg cfg/myconfig/0914_v7_init2_t1-S45.yaml --weights '' --name izdnasV7-COCO-0914_v7_init2_t1-S45 --hyp data/hyp.scratch.p5.yaml