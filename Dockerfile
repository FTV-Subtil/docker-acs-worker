FROM ftvsubtil/ubuntu-sphinx

WORKDIR /app

RUN apt-get update && \
    apt-get install -y git python3 python3-pip \
      libssh-gcrypt-4 \
      libx264-148 \
      librtmp1 \
      libgme0 \
      libva1 \
      libzvbi0 \
      libxvidcore4 \
      libwavpack1 \
      libtwolame0 \
      libspeex1 \
      libshine3 \
      libopus0 \
      libmp3lame0 \
      libgsm1 \
      libcrystalhd3 \
      libfontconfig1 \
      libfreetype6 \
      libsoxr0 \
      libnuma1 \
      libtheora-bin \
      libsnappy1v5 \
      libxml2 \
      liborc-0.4-0 && \
    git clone --recurse-submodules https://github.com/FTV-Subtil/py_command_line_worker.git && \
    cd py_command_line_worker && \
    pip3 install -r requirements.txt

WORKDIR /app/py_command_line_worker

CMD python3 ./src/worker.py
