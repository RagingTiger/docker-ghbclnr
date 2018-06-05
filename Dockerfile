# base image
FROM python

# update
RUN apt-get update

# load source
COPY githubcloner.py /usr/src
RUN ln /usr/src/githubcloner.py /usr/bin/githubcloner

# load/install requirements
COPY requirements.txt /usr/src
RUN pip3 install -r /usr/src/requirements.txt

# make working dir
RUN mkdir -p /home/ghbclnr
WORKDIR /home/ghbclnr
	
