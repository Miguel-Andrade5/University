function loadData(grade) {
  var parser, xmlDoc;

  // Fetching data from xml file
  fetch("./dom.xml")
    .then((response) => response.text())
    .then((students) => {
      parser = new DOMParser();
      xmlDoc = parser.parseFromString(students, "text/xml");

      // removing current data
      document.getElementById("tbody").innerHTML = "";

      Array.from(xmlDoc.getElementsByTagName("STUDENT")).forEach(
        (item, key) => {
          const array = item.childNodes;

          Array(array).forEach((element) => {
            var html = "";

            if (grade == "A") {
              // grade
              if (element[9].textContent == "A") {
                // Displaying new data into table
                var html = `<tr>
                <td>${element[1].textContent}</td>
                <td>${element[3].textContent}</td>
                <td>${element[5].textContent}</td>
                <td>${element[7].textContent}</td>
                <td>${element[9].textContent}</td>
                </tr>`;
              }
            } else {
              // Displaying new data into table
              var html = `<tr>
              <td>${element[1].textContent}</td>
              <td>${element[3].textContent}</td>
              <td>${element[5].textContent}</td>
              <td>${element[7].textContent}</td>
              <td>${element[9].textContent}</td>
              </tr>`;
            }

            document.getElementById("tbody").innerHTML += html;
          });
        }
      );
    });
}
loadData();
