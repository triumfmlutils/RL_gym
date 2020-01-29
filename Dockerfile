FROM triumfmlutils/baseml:v0.8

RUN apt-get install -y python-numpy python-dev cmake zlib1g-dev libjpeg-dev xvfb libav-tools xorg-dev python-opengl libboost-all-dev libsdl2-dev swig
RUN git clone https://github.com/openai/mujoco-py.git && pip install -e ./mujoco-py
RUN pip install 'gym[all]'

