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

echo_and_run cd "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/thirdparty/navigation/base_local_planner"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/art/xj_robot_git/Medical_Robot/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/art/xj_robot_git/Medical_Robot/install/lib/python3/dist-packages:/home/art/xj_robot_git/Medical_Robot/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/art/xj_robot_git/Medical_Robot/build" \
    "/usr/bin/python3" \
    "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/thirdparty/navigation/base_local_planner/setup.py" \
    egg_info --egg-base /home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/base_local_planner \
    build --build-base "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/base_local_planner" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/art/xj_robot_git/Medical_Robot/install" --install-scripts="/home/art/xj_robot_git/Medical_Robot/install/bin"
