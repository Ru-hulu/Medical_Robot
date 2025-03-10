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

echo_and_run cd "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/thirdparty/move_base_flex/mbf_abstract_nav"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/art/xj_robot_git/Medical_Robot/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/art/xj_robot_git/Medical_Robot/install/lib/python3/dist-packages:/home/art/xj_robot_git/Medical_Robot/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/art/xj_robot_git/Medical_Robot/build" \
    "/usr/bin/python3" \
    "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/thirdparty/move_base_flex/mbf_abstract_nav/setup.py" \
     \
    build --build-base "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/move_base_flex/mbf_abstract_nav" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/art/xj_robot_git/Medical_Robot/install" --install-scripts="/home/art/xj_robot_git/Medical_Robot/install/bin"
