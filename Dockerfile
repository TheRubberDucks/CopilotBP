# Use miniconda py2.7 as base image
FROM continuumio/miniconda

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Pre-requisites for installing dlib
RUN apt-get update && apt-get install -y \
    build-essential cmake \
    libgtk-3-dev \
    libboost-all-dev \
    python-pyaudio \
    vim

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt
RUN conda install opencv -y
RUN conda install -c mutirri pyaudio=0.2.7 -y

# Run main.py when the container launches
CMD ["python", "main.py"]
