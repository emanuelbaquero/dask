FROM tensorflow/tensorflow:latest-jupyter

RUN apt-get update 
RUN apt-get upgrade -y graphviz

RUN pip install dask[complete]
RUN pip install sklearn[complete]
RUN pip install graphviz
RUN pip install jupyterthemes
RUN jt -t monokai -f fira -fs 13 -nf ptsans -nfs 11 -N -kl -cursw 5 -cursc r -cellw 95% -T

CMD cd /tf
CMD jupyter notebook --ip=0.0.0.0 --allow-root &
CMD ["/bin/bash"]


