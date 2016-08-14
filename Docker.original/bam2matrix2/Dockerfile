FROM duplexa/hictool-env:v1
MAINTAINER Soo Lee (duplexa@gmail.com)
COPY HiCtool_norm_contact_matrix.hg19.arg.py /usr/bin/hictool/
RUN chmod a+x /usr/bin/hictool/*
ENV PATH /usr/bin/hictool:$PATH
RUN echo "export PATH=$PATH" >> /etc/skel/.bash_profile
CMD ["HiCtool_norm_contact_matrix.hg19.arg.py"] # arguments norm_binning_hdf5_file chr binsize outdir


