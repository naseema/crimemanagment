<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Witness.aspx.cs" Inherits="Final_Project.Witness" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

/* Style inputs */
input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

/* Style the container/contact section */
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 10px;
}

/* Create two columns that float next to eachother */
.column {
  float: left;
  width: 50%;
  margin-top: 6px;
  padding: 20px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>

<div class="container">
  <div style="text-align:center">
    <p style="font-size:40px;">The crime you want to talk about:</p>
  </div>
  <div class="row">
    <div class="column">
    </div>
    <div class="column">
      <form action="/action_page.php">
        <label for="fname">Name or type of crime</label>
        <input type="text" id="NameC" name="Name or type of crime">
        
        <label for="lname">A place of crime</label>
        <input type="text" id="place" name="A place of crime">
        
        <label for="country">date and time</label>
         <input type="text" id="time" name="date and time">
         
        <label for="subject">Other</label>
        <textarea id="subject" name="subject" placeholder="Write something.." style="height:170px">
        </textarea>
        <input type="file" id="myFile">
        <script>
function myFunction() {
  var x = document.getElementById("myFile");
  x.disabled = true;
}
</script>
        <input type="submit" value="Submit">
      </form>
    </div>
  </div>
</div>

</body>
</html>