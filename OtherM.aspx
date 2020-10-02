<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OtherM.aspx.cs" Inherits="CrimeManagement.OtherM" %>

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
        <h2>Dan Joy</h2>
        <h3>ID:194856032</h3>
          <h4>The crime occurred on the date of:01/01/2018</h4>
        <p>Commit a lot of crimes (burning people) ,
            Age 27 years old ,
            Unmarried</p>
        <p>He was arrested on 10/12/2018</p>
      </div>
    </div>
  </div>
      <div class="column">
    <div class="card">
      <div class="container">
        <h2>Fekrat Dahood</h2>
        <h3>ID:197643832</h3>
          <h4>The crime occurred on the date of:08/10/2001</h4>
        <p>Two crimes in close periods,
            Torture of the victim to death
            (the types of torture that were used on the victim: cutting off the victim's limbs,
            beating the victim with a stick,
            electrocuting her,
            strangling her with water) ,
            Age 67 years old ,
            Unmarried</p>
        <p>He was arrested on 04/03/2003</p>
      </div>
    </div>
  </div>
      <div class="column">
    <div class="card">
      <div class="container">
        <h2>Malek Adrees</h2>
        <h3>ID:172946043</h3>
          <h4>The crime occurred on the date of:16/03/2010</h4>
        <p>He killed 5 women in the same way,
           Rape victim and then strangled her ,
            Age 35 years old ,
            Unmarried</p>
        <p>He was arrested on 16/07/2010</p>
      </div>
    </div>
  </div>
</body>
</html>
