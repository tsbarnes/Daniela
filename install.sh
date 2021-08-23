#!/bin/bash

DRY_RUN="false"

for option in "$@"; do
  case $option in
  "--dry-run")
    DRY_RUN="true"
    ;;
  *)
    echo "Unknown option: $option"
    exit 1
    ;;
  esac
done

if [ "$USER" = "root" ]; then
  INSTALL_PATH="/usr/share"
else
  INSTALL_PATH="$HOME/.local/share"
fi

if [ "$DRY_RUN" = "false" ]; then
  mkdir -p "$INSTALL_PATH/color-schemes"
  cp Daniela.colors "$INSTALL_PATH/color-schemes/"
  mkdir -p "$INSTALL_PATH/plasma/desktoptheme"
  cp -r Daniela-Black "$INSTALL_PATH/plasma/desktoptheme/"
  mkdir -p "$INSTALL_PATH/plasma/look-and-feel"
  cp -r com.tsbarnes.Daniela "$INSTALL_PATH/plasma/look-and-feel/"
  echo "Installation complete!"
else
  echo cp Daniela.colors "$INSTALL_PATH/color-schemes/"
  echo mkdir -p "$INSTALL_PATH/plasma/desktoptheme"
  echo cp -r Daniela-Black "$INSTALL_PATH/plasma/desktoptheme/"
  echo mkdir -p "$INSTALL_PATH/plasma/look-and-feel"
  echo cp -r com.tsbarnes.Daniela "$INSTALL_PATH/plasma/look-and-feel/"
  echo "Dry run, nothing installed."
fi

exit 0
