#!/bin/bash

export TF_RELEASE=v1.9.0
export BAZEL_VERSION=0.15.2
export TF_HOME=../tensorflow4jetson
export TF_NEED_CUDA=1
export TF_CUDA_VERSION=9.0
export CUDA_TOOLKIT_PATH=/usr/local/cuda
export TF_CUDNN_VERSION=7.0.5
export CUDNN_INSTALL_PATH=/usr/lib/aarch64-linux-gnu/
export TF_CUDA_COMPUTE_CAPABILITIES=6.2

# No Google Cloud Platform support
export TF_NEED_GCP=0

# No Hadoop file system support
export TF_NEED_HDFS=0

# Setup gcc ; just use the default
default_gcc_host_compiler_path=$(which gcc)
export GCC_HOST_COMPILER_PATH=$default_gcc_host_compiler_path

# Setup the environment variables for configuration
# PYTHON Path is the default
default_python_bin_path=$(which python3)
export PYTHON_BIN_PATH=$default_python_bin_path

default_cudnn_path=/usr/lib/aarch64-linux-gnu
export CUDNN_INSTALL_PATH=$default_cudnn_path

export CC_OPT_FLAGS='-O3 -ffast-math -flto -march=armv8-a+crypto -mcpu=cortex-a57+crypto'
export TF_NEED_JEMALLOC=1
export TF_NEED_OPENCL=0
export TF_ENABLE_XLA=0

# Added for TensorFlow 1.3
export TF_NEED_MKL=0
export TF_NEED_MPI=0
export TF_NEED_VERBS=0

# Use nvcc for CUDA compiler
export TF_CUDA_CLANG=0

export NCCL_INSTALL_PATH="/usr/local/lib/"
export TF_NCCL_VERSION=1.3
