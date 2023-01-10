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

If you don't wan't to change the default runtime, manually run the builder image with `--gpus all` on the default(`runc`) runtime, build the TensorFlow wheel then copy it into the release image.
