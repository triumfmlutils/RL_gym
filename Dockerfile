FROM triumfmlutils/baseml:v0.8

RUN apt-get install -y zlib1g-dev libjpeg-dev xvfb ffmpeg xorg-dev libboost-all-dev libsdl2-dev swig
RUN python3.6 -m pip install PyOpenGL PyOpenGL_accelerate pyglet
#RUN git clone https://github.com/openai/mujoco-py.git && pip install -e ./mujoco-py
RUN python3.6 -m pip install 'gym' && python3.6 -m pip install -e 'gym[classic_control]' && python3.6 -m pip install -e 'gym[atari]' && python3.6 -m pip install -e 'gym[box2d]' 
RUN python3.6 -m pip install gym-retro
RUN python3.6 -m pip install pybullet



