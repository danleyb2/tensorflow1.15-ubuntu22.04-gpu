# TensorFlow1.15 Ubuntu22.04 with GPU(cuda11)
- Tensorflow 1.15.5
- Python 3.8 
- Ubuntu 20.04
- CUDA 11.8
- CUDNN 8

## Build Image
First [make](https://stackoverflow.com/a/61737404) `nvidia` the default Docker runtime instead of the default `runc`

Build image
```shell
docker build -t platerecognizer/alpr-gpu:base .
```

> You could also mnually run the builder container with `--gpus all` on the default(`runc`) runtime then copy the TensorFlow wheel into the release image.
