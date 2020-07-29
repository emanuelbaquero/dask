#IMAGEN BASE DEL CONTENEDOR
FROM tensorflow/tensorflow:latest-jupyter

#PRIMER PASO: ACTUALIZO LOS PAQUETES DE UBUNTU
RUN apt-get update 

#SEGUNDO PASO: ACTUALIZO LA LIBRERIA GRAPTHVIZ REQUERIDA POR DASK
RUN apt-get upgrade -y graphviz

#TERCER PASO: INSTALO LA LIBRERIA DE DASK
RUN pip install dask[complete]

#CUARTO PASO: INSTALO LA LIBRERIA SKLEARN 
RUN pip install sklearn[complete]

#QUINTO PASO: INSTALO LA LIBRERIA DE GRAPTHVIZ
RUN pip install graphviz

#SEXTO PASO: INSTALO LOS TEMAS DE JUPYTER THEMES
RUN pip install jupyterthemes

#SEPTIMO PASO: EJECUTO EL TEMA DE JUPYTER THEME
RUN jt -t monokai -f fira -fs 13 -nf ptsans -nfs 11 -N -kl -cursw 5 -cursc r -cellw 95% -T

#OCTAVO PASO: VOY A A DIRECCION DEL HOME
RUN cd /tf

# ULTIMO PASO: ENCIENDO JUPYTER 
CMD jupyter notebook --ip=0.0.0.0 --allow-root 


