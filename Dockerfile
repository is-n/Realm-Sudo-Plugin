FROM debian:11


ENV DEBIAN_FRONTEND noninteractive
ENV TZ America/New_york

RUN apt-get update && apt-get install -y \
	build-essential dpkg-dev ed libldap2-dev libpam0g-dev \
	libsasl2-dev libselinux1-dev libsepol1-dev libssl-dev zlib1g-dev \
	libaudit-dev libssl-dev python3-dev libpython3-dev libwolfssl-dev \
	file lsb-release fakeroot pkg-config procps git ssh openssh-client vim

RUN useradd -ms /bin/bash no_priv
RUN echo "Plugin sample_policy sample_plugin.so" >> /etc/sudo.conf

WORKDIR /source/

#RUN ls /

#RUN ls /source


#COPY ./sudo /source



#RUN cd /source/ && chmod +x configure && ./configure --disable-shared-libutil --enable-static-sudoers && make
#RUN cd /source/realm_sudo && make install

#RUN cp /source/realm_sudo/.libs/realm_sudo.so /usr/lib/sudo/


#RUN ./configure --disable-shared-libutil --enable-static-sudoers # used to fix the




#USER no_priv
#RUN sudo echo "cats"

CMD ["bash"]
