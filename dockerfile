FROM tensorflow/tensorflow:1.15.4-gpu-jupyter
ADD . /tf/notebooks
WORKDIR /tf/notebooks
LABEL maintainer="bgoldfe2@masonlive.gmu.edu"
USER root
RUN pip install -r requirements.txt