FROM centos:7.4.1708

LABEL application=VisIT-2.12.3

COPY visit2_12_3.centos7.4-x86_64.tar.gz /tmp/

RUN  yum -y install xorg-x11-server-utils xterm libX11 mesa-libGL mesa-libGLU libSM libXt && \
     tar -xvf /tmp/visit2_12_3.centos7.4-x86_64.tar.gz -C /opt/ 

ENV PATH /opt/visit2_12_3.linux-x86_64/bin:/opt/visit2_12_3.linux-x86_64/2.12.3/bin:/opt/visit2_12_3.linux-x86_64/2.12.3/linux-x86_64/bin:$PATH
ENV LD_LIBRARY_PATH /opt/visit2_12_3.linux-x86_64/2.12.3/linux-x86_64/lib:$LD_LIBRARY_PATH
