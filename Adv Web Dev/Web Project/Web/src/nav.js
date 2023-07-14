    // * Toggle desktop/mobile */
     function funcOpenMenu() {
        console.log("test")
         var x = document.getElementById("myTopnav");
         if (x.className === "topnav") {
         x.className += " responsive";
         } else {
         x.className = "topnav";
        }
      }

