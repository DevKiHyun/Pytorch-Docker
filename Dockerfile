FROM pytorch/pytorch

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    vim \
    tmux \
    ffmpeg \
    build-essential libglib2.0-0 libsm6 libxext6 libxrender-dev cmake \
    libsndfile1 

RUN pip install torch==1.5.1

RUN pip install numpy opencv-python numba==0.48 librosa scikit-learn matplotlib jupyterlab rich tensorboard
