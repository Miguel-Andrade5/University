// Generate coordinates
var dotCoordinates = generateCoords();

// Dot counter
var dotCount = 0;

// Create dots
for (var i = 0; i < dotCoordinates.length && dotCount < 10; i++) {
  var dot = document.createElement("div");
  dot.classList.add("dot");
  dot.style.top = dotCoordinates[i][1] + "px";
  dot.style.left = dotCoordinates[i][0] + "px";
  console.log("Dot " + i + " coordinates: " + dotCoordinates[i]);

  // Event listener to remove dot on click
  dot.addEventListener("click", function(event) {
    event.target.remove();
    dotCount++;
    console.log("Dot count: " + dotCount);

    if (dotCount >= 10) {
      updatePage2Link();
      console.log(updatePage2Link);
    }
  });

  document.body.appendChild(dot);
}
