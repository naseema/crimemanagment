<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Knife.aspx.cs" Inherits="Final_Project.Knife" %>

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
      <img src="https://vignette.wikia.nocookie.net/hitman/images/f/f2/Timothy_Olyphant.jpg/revision/latest/top-crop/width/360/height/450?cb=20120105230931" 
          alt="Mike" style="width:60%">
      <div class="container">
        <h2>Mike Ross</h2>
        <h3>ID:434837854</h3>
          <h4>The crime occurred on the date of:23/02/2015</h4>
        <p class="title">Hitman</p>
        <p>He committed three murders (the use of the knife with the three crimes) ,
            45 years old ,
            Unmarried</p>
        <p>He was arrested on 12/08/2015</p>
      </div>
    </div>
  </div>
         <div class="column">
    <div class="card">
      <div class="container">
        <h2>Max</h2>
        <h3>ID:238483412</h3>
          <h4>The crime occurred on the date of:23/02/1999</h4>
        <p>Committing serial crimes (stabbing) ,
            Age 31 years old ,
            Married (father, son and daughter)</p>
        <p>He was arrested on 06/01/2000</p>
      </div>
    </div>
  </div>
</body>
</html>
