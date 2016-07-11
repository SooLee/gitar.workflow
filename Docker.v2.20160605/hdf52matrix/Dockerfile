FROM duplexa/hictool-env:v2
MAINTAINER Soo Lee (duplexa@gmail.com)
COPY HiCtool_norm_contact_matrix.arg.py /usr/bin/hictool/
COPY run.sh /usr/bin/
RUN chmod a+x /usr/bin/hictool/*
ENV PATH /usr/bin/hictool:$PATH
RUN echo "export PATH=$PATH" >> /etc/skel/.bash_profile
CMD ["run.sh"] # arguments norm_binning_hdf5_file chr binsize chrlen_file outdir

