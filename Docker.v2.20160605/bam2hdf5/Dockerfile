FROM duplexa/hictool-env:v2
MAINTAINER Soo Lee (duplexa@gmail.com)
COPY HiCtool_hifive.arg.py /usr/bin/hictool/
COPY run.sh /usr/bin/
RUN mkdir /resources/
RUN chmod a+x /usr/bin/hictool/*
ENV PATH /usr/bin/hictool:$PATH
RUN echo "export PATH=$PATH" >> /etc/skel/.bash_profile
CMD ["run.sh"]  ## arguments: bam1 bam2 RE_bed outdir
