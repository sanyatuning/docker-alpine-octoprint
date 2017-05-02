# Octoprint with CuraEngine Alpine Docker.

## Quickstart

Run the container with:

```
docker run -p 5000:5000 \
  -v /host/path/to/config:/home/user/.octoprint \
  -v --device=/dev/ttyS0:/dev/ttyS0 \
  -it theorician/alpine-octoprint
```

The config directory `/host/path/to/config` is where your octoprint persistent data is stored. 

The device `/dev/ttyS0` will probably need to be altered to represent where your 3D printer lives. 

## Webcam

This container does not contain support for the webcam (i.e. `mjpeg-streamer`). This is in the works, as I'm trying to come up with a less-bad solution to `mjpeg-streamer`. Until then, you can install `mjpeg-streamer` on your host and configure it in octoprint as normal. No other work is required. 
