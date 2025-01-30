window.env = {
  REACT_APP_VALHALLA_URL: "$REACT_APP_VALHALLA_URL" || "https://valhalla1.openstreetmap.de",
  REACT_APP_NOMINATIM_URL: "$REACT_APP_NOMINATIM_URL" || "https://nominatim.openstreetmap.org",
  REACT_APP_TILE_SERVER_URL: "$REACT_APP_TILE_SERVER_URL" || "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
  REACT_APP_CENTER_COORDS: "$REACT_APP_CENTER_COORDS" || "52.51831,13.393707",
  REACT_APP_MAX_BOUNDS: "$REACT_APP_CENTER_COORDS" || "-90,-1e7,90,1e7"
}