FROM duplexa/hictool-env
MAINTAINER Soo Lee (duplexa@gmail.com)
COPY HiCtool_hifive.hg19.arg.py /usr/bin/hictool/
RUN mkdir /resources/
COPY HindIII_hg19_liftover.bed /resources/
RUN chmod a+x /usr/bin/hictool/*
ENV PATH /usr/bin/hictool:$PATH
RUN echo "export PATH=$PATH" >> /etc/skel/.bash_profile
CMD ["HiCtool_hifive.hg19.arg.py"]
