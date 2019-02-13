# Use an official Python runtime as a parent image
FROM sebastientourbier/connectomemapper-bidsapp:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app


EXPOSE 5900

#make it work under singularity
RUN ldconfig && mkdir -p /N/u /N/home /N/dc2 /N/soft

#https://wiki.ubuntu.com/DashAsBinSh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

#xcb plugin
RUN ln -sf /usr/lib/x86_64-linux-gnu/qt5/plugins/platforms/ /usr/bin/

# Run app.py when the container launches
#CMD ["python", "app.py"]
