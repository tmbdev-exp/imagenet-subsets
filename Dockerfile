FROM adv3-base
#RUN mv /opt/conda /opt/conda.old
RUN pip3 install git+git://github.com/tmbdev/webdataset
RUN pip3 install git+git://github.com/tmbdev/torchmore
RUN pip3 install git+git://github.com/NVLabs/ocrodeg
