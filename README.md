# Valhalla Demo App

![valhalla_screenshot](https://user-images.githubusercontent.com/10322094/144841673-18ec0772-129d-443e-a040-5172480b0f92.png)

This is the ReactJS demo web app running on https://valhalla.openstreetmap.de. It provides routing and isochrones with a magnitude of options and makes requests to [Valhalla](https://github.com/valhalla/valhalla), an open source routing engine and accompanying libraries for use with OpenStreetMap data.

## Docker modifications made in this fork

You can now set environment variables **at runtime** by passing them to the Docker container, instead of hardcoding them at build time. The following variables are now supported:

```env
REACT_APP_VALHALLA_URL=https://valhalla1.openstreetmap.de
REACT_APP_NOMINATIM_URL=https://nominatim.openstreetmap.org
REACT_APP_TILE_SERVER_URL="https://tile.openstreetmap.org/{z}/{x}/{y}.png"
REACT_APP_CENTER_COORDS="52.51831,13.393707"
# southwest corner, northeast corner
REACT_APP_MAX_BOUNDS="-90,-1e7,90,1e7"
```

To use these environment variables, simply add them to your docker-compose.yml file as you would any other configuration option. If you don't specify them, the app will default to the values listed above.

This change makes it easier to customize and configure your Valhalla demo app without modifying the underlying code.
