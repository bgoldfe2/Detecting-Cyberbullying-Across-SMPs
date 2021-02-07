FROM tensorflow/tensorflow:1.15.4-gpu-jupyter
ADD . /tf/notebooks
WORKDIR /tf/notebooks
LABEL maintainer="bgoldfe2@masonlive.gmu.edu"
USER root
RUN pip install -r requirements.txt
RUN jupyter notebook --generate-config
RUN echo "c.NotebookApp.password = u'sha1:61dd24dd7c02:1593e3a0adc97d842f8ad1eb37bb1ee71bec5b62'">>/root/.jupyter/jupyter_notebook_config.py
CMD ["bash","-c","source /etc/bash.bashrc && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]