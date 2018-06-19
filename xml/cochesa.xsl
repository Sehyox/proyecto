<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="coches">
	<html>
<head>
<style>
 body{
background-image: url(../fotos/definitiva.jpg);
background-repeat: no-repeat;
background-width: 100%;
background-height: 100%;
background-attachment: fixed;
background-position: center center;
}
header{
background-color: #2CE3FC;
text-align: center;
font-size: 40px;
text-transform: uppercase;
font-family: impact;
color: red;
border-radius: 12px;
}
 footer{
  background-color: black;
  color: white;
  padding: 10px;
  text-align: center;
  overflow: hidden;
  position: fixed;
  bottom: 0;
  width: 100%;
 }
 .link{
  background-color: red;
    color: white;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;

 }
nav {
  text-align: center;
}
article{
  margin-left: 150px;
  margin-right: 150px;
  background-color: white;
}
.el_boton {
    position: relative;
    display: inline-block;
}
.lasMarcas{
  background-color: blue;
    color: white;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;


}

.loqbaha {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.loqbaha a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.loqbaha a:hover {background-color: #ddd}

.el_boton:hover .loqbaha {
    display: block;
}

.slydeshow-container{
  max-width: 900px;
  position: relative;


}

.mySlides{
  display: none;
  animation-direction: reverse;
  animation-duration: 5s;
  animation-fill-mode: all;
}
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin: center;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  background-color: black;
}
.next{
  right: 150px;

}

.card {
     background-color: #DFDFDF;
     padding: 20px;
     margin-top: 20px;
}

.form1{
  background-color: white;
  width: 300px;
  height: auto;
  border-style: solid;
  border-color: blue;
  text-align: center;
  position: absolute;
  margin-left: 500px;



}

.cuadros {
    box-sizing: border-box;
}


#footer {
  position: fixed;
  bottom: 0px;  
  color: white;
  margin-top: 10px;
}

.fondoxsl{
  background-color: white;
  text-align: center;
}

.container {
  position: relative;
  width: 100%;
  margin-left:100px;
}


.overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  background-color: #008CBA;
  overflow: hidden;
  width: 0;
  height: 100%;
  transition: .5s ease;
}

.container:hover .overlay {
   width: 355px;
  left: 0;  
}

.text {
  color: white;
  font-size: 20px;
  position: absolute;
  top: 50%;
  transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  left: 50%;

  white-space: nowrap;
}
</style>
<title> volskwagen</title>
</head>
<body>
  <header>coches de mierda</header>
<nav>
<a href="../index.html" class="link">inicio</a>  
<a href="../html/noticias.html" class="link" >noticias</a>
<div class="el_boton">
  <button class="lasMarcas">marcas</button>
  <div class="loqbaha">
    <a href="../xml/coches.xml">wolvagen</a>
    <a href="../xml/coches2.xml">bmw</a>
  </div>
</div>  
<div class="el_boton">
  <button class="link">unete</button>
  <div class="loqbaha">
    <a href="../html/sign_up.html">sign up</a>
    <a href="../html/log_in.html">log in</a>
  </div>
</div>
</nav>
<div >
  <h1 class="fondoxsl">Coches Volskwagen</h1>

<xsl:for-each select="coche">
<div class="personaje" style="float: left; width: 300px;"  >
  
  
</div>
  <div class="container">
    <div >
     <xsl:element name="img">
       <xsl:attribute name="src">
         <xsl:value-of select="image/@ruta"/>
       </xsl:attribute>
       <xsl:attribute name="height">
         200
       </xsl:attribute>
     </xsl:element>
  <div class="overlay">
    <div class="text">
     <ul>
    
    <li>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="web/@enlace"/>
        </xsl:attribute>
        <xsl:value-of select="web"/>
      </a>
    </li>

    <li><xsl:value-of select="precio"/></li>
    
  </ul>

    </div>
  </div>
</div>

</div>
</xsl:for-each>
</div>
 
 
</body>
</html>
</xsl:template>
</xsl:stylesheet>
