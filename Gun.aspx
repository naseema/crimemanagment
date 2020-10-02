<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gun.aspx.cs" Inherits="Final_Project.WebForm4" %>

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
        <h2>Jenkiz Ardanet</h2>
        <h3>ID:287239412</h3>
          <h4>The crime occurred on the date of:20/03/2011</h4>
        <p>Shooting the victim under the pretext of self-defense ,
            Age 66 years old ,
            Married (there is no children)</p>
        <p>He was arrested on 18/05/2013</p>
      </div>
    </div>
  </div>
     <div class="column">
    <div class="card">
      <div class="container">
        <h2>Aron Felar</h2>
        <h3>ID:774809432</h3>
          <h4>The crime occurred on the date of:14/02/2005</h4>
        <p>Committing many crimes (using snipers for all crimes) , professional killer ,
            Age 50 years old ,
            Unmarried</p>
        <p>He was arrested on 09/11/2007</p>
      </div>
    </div>
  </div>
</body>
</html>
