
FROM archlinux/base

RUN useradd -m packager && \
    echo "alias ll='ls -l'" | tee -a /home/packager/.bashrc /root/.bashrc && \
    echo "alias vi=vim" | tee -a /home/packager/.bashrc /root/.bashrc && \
    pacman --noconfirm -Syu && \
    pacman --noconfirm -S vim grep binutils tar fakeroot tree file awk wget pkgfile \
                          neko \
                          make gcc libvorbis sdl2 glu openal libuv

COPY . /home/packager

RUN chown -R packager:packager /home/packager
