FROM centos:7
MAINTAINER Soo Lee (duplexa@gmail.com)

# 1. general updates & installing necessary Linux components
RUN yum update -y && yum install -y wget unzip tar bzip2 gcc make gcc-c++ zlib-devel.x86_64 ncurses-devel perl
# bzip2 for miniconda
# g++, for bedtools
# gcc, make for samtools
# zlib-devel.x86_64 for bedtools, since it complains about not finding zlib
# ncurses-devel for samtools, since it complains about not finding curses.
# perl also needed for samtools

# 2. installing miniconda in /usr/bin/miniconda
RUN wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
RUN bash Miniconda2-latest-Linux-x86_64.sh -p /usr/bin/miniconda -b
RUN rm Miniconda2-latest-Linux-x86_64.sh
ENV PATH /usr/bin/miniconda/bin:$PATH
RUN conda update -y conda
RUN conda install -y anaconda-client  # required to find 3rd party channels for htseq and hifive

# 3. create an environment for gitar
RUN conda create -y -n gitar python=2.7.6 && source activate gitar

# 4. installing python libraries
RUN conda install -y numpy scipy matplotlib PIL h5py

# 5. installing HTseq (not available from the conda default channels)
RUN conda install -y -c BioBuilds htseq

# 6. installing hifive (not available from the conda default channels)
RUN conda install -y -c bioconda hifive

# 7. installing bedtools in /usr/bin/
WORKDIR /usr/bin/
RUN wget https://github.com/arq5x/bedtools2/releases/download/v2.25.0/bedtools-2.25.0.tar.gz && tar -xzf bedtools-2.25.0.tar.gz
WORKDIR /usr/bin/bedtools2
RUN make
ENV PATH /usr/bin/bedtools2/bin:$PATH

# 8. installing bowtie in /usr/bin
WORKDIR /usr/bin
RUN wget http://downloads.sourceforge.net/project/bowtie-bio/bowtie2/2.2.9/bowtie2-2.2.9-linux-x86_64.zip
RUN unzip bowtie2-2.2.9-linux-x86_64.zip
ENV PATH /usr/bin/bowtie2-2.2.9/:$PATH

# 9. installing samtools in /usr/bin
RUN wget https://github.com/samtools/samtools/releases/download/1.3.1/samtools-1.3.1.tar.bz2 && tar -xjf samtools-1.3.1.tar.bz2
WORKDIR /usr/bin/samtools-1.3.1
RUN ./configure && make && make install
ENV PATH /usr/bin/samtools-1.3.1/:$PATH

# 10. installing sra toolkit in /usr/bin
WORKDIR /usr/bin 
RUN wget http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.6.2/sratoolkit.2.6.2-centos_linux64.tar.gz
RUN tar -xzf sratoolkit.2.6.2-centos_linux64.tar.gz
ENV PATH /usr/bin/sratoolkit.2.6.2-centos_linux64/bin:$PATH

# 11. downloading HiCtool scripts
RUN mkdir /usr/bin/hictool
WORKDIR /usr/bin/hictool
RUN wget http://doc.genomegitar.org/_downloads/HiCtool_hifive.py
RUN wget http://doc.genomegitar.org/_downloads/HiCtool_contact_matrix.py
RUN wget http://doc.genomegitar.org/_downloads/HiCtool_heatmap_contact_matrix.py
RUN wget http://doc.genomegitar.org/_downloads/HiCtool_norm_contact_matrix.py
RUN wget http://doc.genomegitar.org/_downloads/HiCtool_chromosomes_contact_matrices.py
RUN wget http://doc.genomegitar.org/_downloads/HiCtool_chromosomes_heatmaps.py
RUN wget http://doc.genomegitar.org/_downloads/HiCtool_chromosomes_DIs.py
RUN wget http://doc.genomegitar.org/_downloads/HiCtool_chromosomes_DIs.m

# 12. deleting tarballs
WORKDIR /usr/bin/
RUN rm bedtools-2.25.0.tar.gz 
RUN rm bowtie2-2.2.9-linux-x86_64.zip 
RUN rm samtools-1.3.1.tar.bz2
RUN rm sratoolkit.2.6.2-centos_linux64.tar.gz

# 13. saving paths to root .bash_profile
RUN echo "export PATH=$PATH" >> /etc/skel/.bash_profile

# 14. set default work directory back to root
WORKDIR /


