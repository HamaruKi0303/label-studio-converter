FROM jupyter/datascience-notebook

# ---------------------
# init setup
#
USER root
RUN apt-get update && apt-get install -y git

# ---------------------
# label studio
#
# # install label studio
# RUN git clone https://github.com/heartexlabs/label-studio-converter.git ; exit 0;
# # setup label studio
# RUN cd label-studio-converter && pip install -e . 
# RUN mv label-studio-converter /usr/local/bin/; exit 0;
# RUN chmod -R 777 *
#
COPY label-studio-converter /label-studio-converter
RUN cd /label-studio-converter && pip install -e . 