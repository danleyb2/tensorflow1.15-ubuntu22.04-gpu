# TensorFlow1.15 Ubuntu22.04 with GPU(cuda11)
- Tensorflow 1.15.5
- Python 3.8 
- Ubuntu 20.04
- CUDA 11.8
- CUDNN 8

## Build Image
First make `nvidia` the default Docker runtime https://stackoverflow.com/a/61737404

Build image
```shell
docker build -t platerecognizer/alpr-gpu:base .
```
