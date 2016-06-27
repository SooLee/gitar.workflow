FROM duplexa/hictool-env
MAINTAINER Soo Lee (duplexa@gmail.com)
RUN mkdir /resources/
WORKDIR /resources/
RUN wget ftp://ftp.ccb.jhu.edu/pub/data/bowtie2_indexes/hg19.zip
RUN unzip hg19.zip
RUN rm hg19.zip
COPY preprocessing.sh /usr/bin/hictool
RUN chmod a+x /usr/bin/hictool/*
ENV PATH /usr/bin/hictool:$PATH
RUN echo "export PATH=$PATH" >> /etc/skel/.bash_profile
CMD ["preprocessing.sh"]
