FROM duplexa/hictool-env:v2
MAINTAINER Soo Lee (duplexa@gmail.com)
RUN mkdir /resources/
WORKDIR /resources/
COPY preprocessing.sh /usr/bin/hictool
RUN chmod a+x /usr/bin/hictool/*
ENV PATH /usr/bin/hictool:$PATH
RUN echo "export PATH=$PATH" >> /etc/skel/.bash_profile
CMD ["preprocessing.sh"]
