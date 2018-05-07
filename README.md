# rpi-speedtest
Docker container to monitorize network speed.

## Build

To build the container, type: `docker build <tagthatyouprefer/rpi-speedtest> .` in the `Dockerfile` directory. Dont forget the last dot in the command. 


## Usage

To run the container, just type: `docker run -t -d --name=speedtest -v /whateverfolderyouwant:/mnt/speedtest <tagthatyouprefer/rpi-speedtest>`

The options included are:

`-t`: To run in foreground mode (so it wont exit as soon as you run it)
`-d`: To run in detached mode
`-v`: To specify the path of the directory where log files will be saved.

  
## Customization

The default configuration will make a test every hour. If wanted, you can change the frecuency by changing the `0 * * * *` params in the `Dockerfile`.
