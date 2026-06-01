#!/bin/bash
set -e

IMAGE_NAME="michaelajh/team12_adastra:0.1.0"
CONTAINER_NAME="team12-adastra-gui-container"

docker run --rm -it \
  -p 127.0.0.1:6080:6080 \
  -p 127.0.0.1:5900:5900 \
  -v "$(pwd):/workspace" \
  -w /workspace \
  --name "$CONTAINER_NAME" \
  "$IMAGE_NAME" \
  bash -c '
    set -e
    export DISPLAY=:99

    Xvfb :99 -screen 0 1280x800x24 &
    sleep 1

    openbox &
    x11vnc -display :99 -forever -shared -rfbport 5900 -nopw &
    if [ -x /usr/share/novnc/utils/novnc_proxy ]; then
      /usr/share/novnc/utils/novnc_proxy --vnc localhost:5900 --listen 6080 &
    elif command -v websockify >/dev/null 2>&1; then
      websockify --web=/usr/share/novnc 6080 localhost:5900 &
    else
      echo "WARNING: noVNC proxy not found; use a VNC client on localhost:5900"
    fi

    chmod +x /workspace/build/main || true
    ln -sfn ../assets /workspace/build/assets

    echo ""
    echo "=========================================="
    echo " Container ready."
    echo " Run the app manually with:"
    echo "   ./build/main"
    echo "=========================================="
    echo ""

    exec bash
  '
