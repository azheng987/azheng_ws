#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/vipteam/azheng_ws/src/ivaDynamixel/dynamixel_driver"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/vipteam/azheng_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/vipteam/azheng_ws/install/lib/python3/dist-packages:/home/vipteam/azheng_ws/build/dynamixel_driver/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/vipteam/azheng_ws/build/dynamixel_driver" \
    "/usr/bin/python3" \
    "/home/vipteam/azheng_ws/src/ivaDynamixel/dynamixel_driver/setup.py" \
     \
    build --build-base "/home/vipteam/azheng_ws/build/dynamixel_driver" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/vipteam/azheng_ws/install" --install-scripts="/home/vipteam/azheng_ws/install/bin"
