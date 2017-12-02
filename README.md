# VisIt #
* How to run

`$ xhost +local:root`

`$ docker run -it --rm  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw"  -e DISPLAY=unix$DISPLAY andrewvol/visit visit`
