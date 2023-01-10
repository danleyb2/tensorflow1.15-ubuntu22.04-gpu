FROM nvcr.io/nvidia/tensorflow:22.12-tf1-py3 AS builder
WORKDIR /opt/tensorflow
# Build TensorFlow Wheel
RUN ./nvbuild.sh

FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04

# Build and Install Python3.8 from source, apt installs python 3.10
COPY install-python.sh .
RUN /install-python.sh

# Copy in built TensorFlow wheel
COPY --from=builder /tmp/pip/tensorflow-1.15.5+nv-cp38-cp38-linux_x86_64.whl /tmp/

# Install built TensorFlow and expected Numpy version
RUN pip install --no-cache-dir /tmp/tensorflow-1.15.5+nv-cp38-cp38-linux_x86_64.whl numpy==1.21.1 && rm /tmp/tensorflow-1.15.5+nv-cp38-cp38-linux_x86_64.whl

