# BP Copilot

Code for the Copilot project, winner of the June 2017 BP-Imperial Hackathon Innovation Prize.


We use computer vision to track the sleepiness of a driver in real
time, both with natural light and in darkness using an IR lamp.
When fatigue is detected, an automatic trigger is sent to a Lex Copilot chatbot
that engages with the driver and assists him on the road through simple tasks.


![](ezgif.com-video-to-gif.gif)

We built our own chatbot with [Lex](https://aws.amazon.com/lex/) since [Alexa](https://developer.amazon.com/alexa)
does not allow yet it's programmatic activation.

So far, the following capabilities are available:

 - The image recognition software is able to identify the driver by his name.
 - To read out loud where the nearest BP gas station is, based on your geolocation.
 - To send an automated SMS to one of your pre-defined contacts.
 - To call the emergency services with a pre-recorded message.
 - To play some music for you!

## Installation

### Manual installation of dependencies

Use Python 2.7. We recommend using virtual envs or anaconda/miniconda. Install the
dependencies using `pip install -r requirements.txt` as well as opencv and pyaudio
with `conda install opencv -y && conda install -c mutirri pyaudio=0.2.7 -y`.
You'll need to install some libraries before for some of these dependencies to work,
especially `dlib` can be a bit problematic (follow
[this guide](http://www.pyimagesearch.com/2017/03/27/how-to-install-dlib/) if you're having trouble.)

Also, you'll need to get the [awscli](http://docs.aws.amazon.com/cli/latest/userguide/installing.html).

### Using Docker

This will be the painless way of doing it, but it is still work in progress. Ideally,
get [docker](https://www.docker.com/) and run `docker run -v ~/.aws/:/root/.aws/ -i -t copilot /bin/bash`
to run the demo.

## The Rubber Ducks Team

#### Industrial Design, Business and Marketing strategy
- [Gwen Gage](https://www.linkedin.com/in/gwen-gage-332bba74/)
#### Computer Vision Team
- [Axel Barroso](https://www.linkedin.com/in/axel-barroso-laguna-6b3ab2ab/)
- [Adrian López](https://www.linkedin.com/in/adri%C3%A1n-l%C3%B3pez-rodr%C3%ADguez-56324599/)
#### Integration and set up
- [Joan Pujol](https://www.linkedin.com/in/joan-sebasti%C3%A0-pujol-roig-48514192/): Google Maps for geolocation
- [Eduardo González](https://www.linkedin.com/in/eduardogonzalezponferrada/): Twilio, Flask
- [Pablo Pérez](https://www.linkedin.com/in/pablopg/): AWS Lex and Polly
- [Juan Eiros](https://www.linkedin.com/in/jeiros/): AWS Lex and Polly
