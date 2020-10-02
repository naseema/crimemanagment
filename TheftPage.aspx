<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TheftPage.aspx.cs" Inherits="Final_Project.TheftPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}
.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: darkred;
}
    </style>
</head>
<body>
       <div class="column">
    <div class="card">
      <div class="container">
        <h2>Mostfa Nader</h2>
        <h3>ID:597346043</h3>
          <h4>The crime occurred on the date of:04/03/2010</h4>
        <p>Entering the X house and stealing cash and jewelry ,
            Age 25 years old ,
            Unmarried</p>
        <p>He was arrested on 22/07/2010</p>
      </div>
    </div>
  </div>
       <div class="column">
    <div class="card">
      <div class="container">
        <h2>Ali Jan</h2>
        <h3>ID:982310543</h3>
          <h4>The crime occurred on the date of:10/11/2000</h4>
        <p>He stole three gold shops in the same manner ,
            Age 41 years old ,
            Unmarried</p>
        <p>He was arrested on 30/12/2000</p>
      </div>
    </div>
  </div>
       <div class="column">
    <div class="card">
      <div class="container">
        <h2>Shan Kader</h2>
        <h3>ID:026587321</h3>
          <h4>The crime occurred on the date of:10/08/2017</h4>
        <p>The attack on the bank and the robbery of two million,
            hit the bank manager on the head, and raised weapons on the employees ,
            Age 37 years old ,
            Unmarried</p>
        <p>He was arrested on 10/10/2017</p>
      </div>
    </div>
  </div>
     <div class="column">
    <div class="card">
      <div class="container">
        <h2>Salem Ahmad</h2>
        <h3>ID:037676215</h3>
          <h4>The crime occurred on the date of:10/08/2018</h4>
        <p>Assault on people and steal their belongings ,
            Age 30 years old ,
            Unmarried</p>
        <p>He was arrested on 19/02/2019</p>
      </div>
    </div>
  </div>
      <div class="column">
    <div class="card">
      <div class="container">
        <h2>Yaer Moshi</h2>
        <h3>ID:034512126</h3>
          <h4>The crime occurred on the date of:23/02/2005</h4>
        <p>Theft of 3 cars, 2 trucks and 4 vehicles,
            Age 29 years old ,
            Unmarried</p>
        <p>He was arrested on 13/06/2005</p>
      </div>
    </div>
  </div>
</body>
</html>
