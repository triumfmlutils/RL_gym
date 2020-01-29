FROM triumfmlutils/baseml:v0.8

RUN apt-get install -y zlib1g-dev libjpeg-dev xvfb ffmpeg xorg-dev libboost-all-dev libsdl2-dev swig
RUN python3 -m pip install PyOpenGL PyOpenGL_accelerate
RUN git clone https://github.com/openai/mujoco-py.git && pip install -e ./mujoco-py
RUN python3 -m pip install 'gym[all]'

