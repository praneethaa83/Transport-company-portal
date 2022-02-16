<!DOCTYPE HTML>
<html>
<head>
<style>

.mySlides {display:none;}
img.rounded-corners {
  border-radius: 30px;
}

* {
      padding: 0;
      margin: 0;
      font-family: sans-serif;
        }
        body {
            background: white;
        }
 
        .container {
            text-align: center;
            position: absolute;
            top: 20%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 100%;
        }
 
        .container span {
            display: block;
        }
 
        .text1 {
            color: white;
            background-color:rgba(0,0,0,0.5);
            font-size: 70px;
            font-weight: 700;
            letter-spacing: 8px;
            margin-bottom: 20px;
            position: relative;
            animation: text 3s 1;
            font-family: Trebuchet MS;
        }
 
     
ul {
  list-style-type: none;
  margin: 0;
  padding-top: 200px;
  padding-left:250px;
  padding-right:250px
 
  background-color: #333;
}
.button {
  background-color: black; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  
  font-size: 16px;
}
li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 18px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: black;
}
</style>

</head>
<body>
<div class="container">
  
      <span class="text1">WELCOME TO KNRR LOGISTICS</span>
      
</div>
 <center>
<a href ="admin.jsp">
<button class="button">ADMIN</button></a>



<a href ="userform.html">
<button class="button">USER</button></a>
 </center>
 

<div id="main"></div>
 
<div class="w3-white">
  <div class="w3-content w3-section" style="background-size:cover">
  <img class="mySlides" src= "https://upload.wikimedia.org/wikipedia/commons/3/3a/Azam_Carrier_Truck.jpg" width="1500px" height="700px">
  <img class="mySlides" src="https://images.unsplash.com/photo-1501700493788-fa1a4fc9fe62?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dHJ1Y2t8ZW58MHx8MHx8&w=1000&q=80.jpg" width="1500px" height="700px">
  <img class="mySlides" src= "https://images.unsplash.com/photo-1601584115197-04ecc0da31d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dHJ1Y2t8ZW58MHx8MHx8&w=1000&q=80.jpg" width="1500px" height="700px">  
  <img class="mySlides" src= "https://azamlogistics.com/wp-content/themes/azam%20logistics/images/slider-2-1600x800.jpg" width="1500px" height="700px">
</div>

</div>
</body>

<script>
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
}

function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>



</body>
</html>

