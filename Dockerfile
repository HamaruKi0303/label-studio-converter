FROM jupyter/datascience-notebook

# ---------------------
# init setup
#
USER root
RUN apt-get update && apt-get install -y git

# ---------------------
# label studio
#
# install label studio
RUN git clone https://github.com/heartexlabs/label-studio-converter.git ; exit 0;
# setup label studio
RUN cd label-studio-converter && pip install -e . 
