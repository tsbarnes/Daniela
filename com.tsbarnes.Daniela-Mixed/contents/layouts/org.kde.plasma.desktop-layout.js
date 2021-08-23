var plasma = getApiVersion(1);

var layout = {
    "desktops": [
        {
            "applets": [
            ],
            "config": {
                "/": {
                    "ItemGeometries-1920x1080": "",
                    "ItemGeometriesHorizontal": "",
                    "formfactor": "0",
                    "immutability": "1",
                    "lastScreen": "0",
                    "wallpaperplugin": "org.kde.image"
                },
                "/ConfigDialog": {
                    "DialogHeight": "535",
                    "DialogWidth": "712"
                },
                "/Configuration": {
                    "PreloadWeight": "0"
                },
                "/General": {
                    "ToolBoxButtonState": "topcenter",
                    "ToolBoxButtonX": "589",
                    "alignment": "1",
                    "locked": "true",
                    "sortMode": "-1"
                },
                "/Wallpaper/org.kde.color/General": {
                    "Color": "249,166,209"
                },
                "/Wallpaper/org.kde.image/General": {
                    "Image": "/home/thea/Pictures/Wallpapers/orange bubbles(2560x1600).png",
                    "SlidePaths": "/usr/share/wallpapers"
                }
            },
            "wallpaperPlugin": "org.kde.image"
        }
    ],
    "panels": [
    ],
    "serializationFormatVersion": "1"
}
;

plasma.loadSerializedLayout(layout);
