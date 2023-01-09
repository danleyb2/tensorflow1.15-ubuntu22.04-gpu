# TensorFlow1.15 Ubuntu22.04 GPU
- Tensorflow 1.15.5
- Python 3.7 
- Ubuntu 20.04
- CUDA 11.8
- CUDNN 8.6.0.163-1


## Quick Setup
```shell

docker run --rm -v /tmp/tensorflow1.15-ubuntu22.04-gpu:/builder -it ubuntu:22.04 /bin/bash
docker run --gpus all --name=tf -it -v /nvme/home/danleyb2/Desktop/tensorflow1.15-ubuntu20.04-gpu:/builder ubuntu:22.04 /bin/bash
/builder/build.sh

```

