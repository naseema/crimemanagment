<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PolicPage.aspx.cs" Inherits="Final_Project.PolicPage" %>

<!DOCTYPE html>
<html>
<head>
    <style>
        .Search_form {
            margin-top: 15px;
            float: right;
            margin-right: 100px;
        }
        input[type=text] {
            padding: 7px;
            border: none;
            font-size: 16px;
            font-family: sans-serif;
        }
        .Search {
            float: right;
            background: rgb(48, 149, 147);
            color: black;
            border-radius: 0 5px 5px 0;
            cursor: pointer;
            position: relative;
            padding: 7px;
            font-family: san-serif;
            border: none;
            font-size: 16px;
        }
        .Pages ul li a {
            background: black;
            text-decoration: none;
            width: 90px;
            display: block;
            text-align: center;
            color: rgb(48, 149, 147);
            font-size: sana-serif;
            letter-spacing:0.1px;
        }
        .Pages li a:hover {
            color: white;
        }

        .Pages ul {
            margin: 0;
            padding: 0;
            list-style: none;
            line-height: 60px;
        }

        .Pages li {
            float: left;
        }

        .Pages {
            width: 100%;
            background: black;
            overflow: auto;
        }
        .Crime{
            width:25%;
            height:100%;
            margin-top:1%;
            margin-left:37%;
            margin-rightL:50%;
            background-color:rgb(48, 149, 147);
            font-size:medium;

        }
        #demo {
            font-family: "Times New Roman";
            border: 1px solid black;
            margin-top: 5px;
            margin-bottom:100px;
            margin-right: 900px;
            margin-left: 0px;
            background-color: lightblue;
        }
        table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 70%;
  
}

td, th {
  border: 1px solid black;
  text-align: left;
  padding: 5px;
}

    </style>
</head>
<body>
    <nav class="Pages">

        <ul>
            <li><a href="MurderPage.aspx">Murders</a></li>
            <li><a href="TheftPage.aspx">TheftCrimes</a></li>
            <li><a href="#">WitnessPage</a></li>
        </ul>

        <form class="Search_form">
            <input type="text" placeholder="Search" title="Type in a category">
            <button class="Search">Search</button>
        </form>
    </nav>
    <h1>Welcome:</h1>
 <h3>John Doe</h3>
 <img src="https://icon-library.com/images/police-icon-png/police-icon-png-7.jpg" alt="Avatar" style="width:100px;height:100px;">
    <p id="demo"></p>
     <button class="Crime">Add Crime </button> 
  <form>
   <input type="radio" id="theft" name="Crime" value="theft">
   <label for="theft">theft</label><br>
   <input type="radio" id="murder" name="Crime" value="murder">
   <label for="murder">murder</label><br>
</form>

    <h2>Crimes Table</h2>

<table>
  <tr>
    <th>crime type </th>
    <th>Murder  </th>
  </tr>
  <tr>
    <td>Time</td>
    <td> 16:00 </td>
  </tr>
  <tr>
    <td>Date</td>
    <td>28/09/2020</td>
  </tr>
  <tr>
    <td>Country</td>
    <td>Tel Aviv </td>
  </tr>
  <tr>
    <td>Details</td>
    <td>Stabbed in the neck</td>
  </tr>
</table>
    <form action="/action_page.php">
  <label for="myfile">Select a file:</label>
  <input type="file" id="myfile" name="myfile"><br><br>
 <%-- <input type="submit">--%>
</form>
    <button class="Crime">save</button>
<script>
var d = new Date();
document.getElementById("demo").innerHTML = d;
</script>
 </body>
</html>
