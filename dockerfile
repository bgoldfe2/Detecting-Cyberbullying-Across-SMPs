FROM tensorflow/tensorflow:1.15.4-gpu-jupyter
ADD . /tf/notebooks
LABEL maintainer="bgoldfe2@masonlive.gmu.edu"