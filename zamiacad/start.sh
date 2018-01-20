docker run -ti --rm \
           -e DISPLAY=$DISPLAY \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v `pwd`/eclipse:/home/developer \
           -v `pwd`/eclipse:/workspace \
simpss/zamiacad:v4.4.1