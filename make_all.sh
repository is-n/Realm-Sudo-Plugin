#cd /source/sudo && chmod +x configure && ./configure --disable-shared-libutil --enable-static-sudoers && make
cd /source/sudo && chmod +x configure && ./configure && make && make install
cd /source/sudo/plugins/sample/ && make && make install
