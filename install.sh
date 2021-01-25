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
  INSTALL_PATH="/usr/local"
else
  INSTALL_PATH="$HOME/.local"
fi

if [ "$DRY_RUN" = "false" ]; then
  cp Daniela.colors "$INSTALL_PATH/color-schemes/"
  cp -r com.tsbarnes.Daniela "$INSTALL_PATH/plasma/look-and-feel/"
  echo "Installation complete!"
else
  echo cp Daniela.colors "$INSTALL_PATH/color-schemes/"
  echo cp -r com.tsbarnes.Daniela "$INSTALL_PATH/plasma/look-and-feel/"
  echo "Dry run, nothing installed."
fi

exit 0
