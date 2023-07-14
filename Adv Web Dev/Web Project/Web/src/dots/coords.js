function generateCoords() {
  var coords = [];
  while (coords.length < 10) {
    var x = Math.floor(Math.random() * window.innerWidth);
    var y = Math.floor(Math.random() * window.innerHeight);
    var coord = [x, y];
    if (!coords.some((c) => c[0] === x && c[1] === y)) {
      coords.push(coord);
    }
  }
  return coords;
}
