function loadData(grade) {
  // Fetching data from xml file
  if (window.XMLHttpRequest) {
    // For IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else {
    // For IE6, IE5
    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  }

  xmlhttp.open("GET", "xslt.xml", false);
  xmlhttp.send(null);

  if (xmlhttp.status == 200) {
    xmlDoc = xmlhttp.responseXML;

    // removing current data
    document.getElementById("tbody").innerHTML = "";

    Array.from(xmlDoc.getElementsByTagName("STUDENT")).forEach((item, key) => {
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
    });
  } else if (xmlhttp.status == 404) {
    alert("XML could not be found");
  }
}
loadData("A");
