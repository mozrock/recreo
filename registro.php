<?php		
	session_name("tetra");
	session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/plantilla4publico.dwt.php" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
     
<?php require_once('../conexiones/elrecreoweb.php'); ?>
<?php
// esta archivo insertara los datos del formulario a la base de datos
	$error = "";
	$pais = $_POST['pais'];
	$dia = $_POST['dia'];
	$mes = $_POST['mes'];
	$ano = $_POST['ano'];
	$identificacion = $_POST['identificacion'];
	$nombres = $_POST['nombres'];
	$apellidos = $_POST['apellidos'];
	$telefono = $_POST['telefono'];
	$email = $_POST['email'];

	if (!empty($identificacion) && $identificacion!='' && !empty($telefono) && $telefono!=''){	
		$queryInsertParticipante = "INSERT INTO PARTICIPANTES (IDENTIFICACION, ID_PAIS, DIA_NACIMIENTO, MES_NACIMIENTO, ANO_NACIMIENTO, NOMBRES, APELLIDOS, TELEFONO, EMAIL, FECHA) 
				 VALUES ('".$identificacion."', ".$pais.", ".$dia.", ".$mes.", ".$ano.", '".$nombres."', '".$apellidos."', '".$telefono."', '".$email."', NOW())";
		;
		
		
		if (mysqli_query($connElrecqcgWeb, $queryInsertParticipante)){ 
			echo"<script language='javascript'>window.location='indexDos.php'</script>;";
		}else{ 
			$error = "No se realizo correctamente el registro como participante"; 
		}
	}

?>  

                   
<script>

	function isNull(campo, nombre){
		var valor = document.getElementById(campo).value;
		if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
			alert('ERROR: El campo "' + nombre + '" no debe ir vacío o lleno de solamente espacios en blanco');
			return false;
		}
		return true;
	} 
	
	
	/*
	function edad(fechaNacimiento) {
	
		var fechaNace = new Date(fechaNacimiento);
		var fechaActual = new Date()
	
		var mes = fechaActual.getMonth();
		var dia = fechaActual.getDate();
		var año = fechaActual.getFullYear();
	
		fechaActual.setDate(dia);
		fechaActual.setMonth(mes);
		fechaActual.setFullYear(año);
	
		edad = Math.floor(((fechaActual - fechaNace) / (1000 * 60 * 60 * 24) / 365));
	   
		return edad;
	}
	
	*/
	function isEdadValida(){
		alert('ERROR: edad ');
		var idPais = 0;//document.getElementById('pais').value;
		alert('ERROR: edad ' + idPais);
		var ano = document.getElementById('ano').value;
		alert('ERROR: edad ' + ano);
		var mes = document.getElementById('mes').value;
		alert('ERROR: edad ' +mes);
		var dia = document.getElementById('dia').value;
		var edad = 0;//edad(ano + "-" + mes +"-" + dia); //'1994-06-10';
		alert('ERROR: edad ' + edad + ' pais ' + idPais);
		if( (edad < 18 && (idPais == 1 || idPais == 3  )) || (edad < 21 && idPais == 2)) {
			alert('ERROR: Debe ser mayor de edad para permitir su registro');
			return false;
		}
		return false;
	} 
	
	function validacion() {//
		valido = isNull("identificacion", "Identificación");	
		if(valido){
			valido = isNull("dia", "Día");
		}
		if(valido){
			valido = isNull("mes", "Mes");
		}
		if(valido){
			valido = isNull("ano", "Año");
		}
		if(valido){
			valido = isNull("nombres", "Nombres");
		}
		if(valido){
			valido = isNull("apellidos", "Apellidos");
		}
		if(valido){
			valido = isNull("telefono", "Teléfono");
		}
		if(valido){
			valido = isEdadValida();
		}
		alert('ERROR: Debe ser mayor de edad para permitir su registro' + valido);
		return valido;
	}
	
	
	

</script>


<meta name="Description" content="Turismo" />
<meta name="Keywords" content="RECREO" />
<title>El Recreo es de Todos</title>
<link rel="shortcut icon" href="../imagenes/icono.ico" /> 
    <link rel="icon" type="image/gif" href="../imagenes/animated_favicon1.gif" />
<title><fmt:message key="title"/></title>
        <meta charset="utf-8" />
        <meta name="Description" content="Sitio Web SyDes" />
        <meta name="author" content="Jairo Buitrago" />                                   

<!-- InstanceEndEditable -->
 		<!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        
	
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>             
		<script src="../assets/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../assets/css/styles2.css" />
        <link href="../assets/css/bootstrap.css" rel="stylesheet">
        <link href="../assets/css/bootstrap-responsive.css" rel="stylesheet"> 
        <link href="../assets/css/estilogeneralpublico.css"  rel="stylesheet" media="all">
        
<!-- InstanceBeginEditable name="head" -->

   

<!-- InstanceEndEditable -->

</head>

<body>

<div class="container">
  <div class="recuadroBlanco">
  </div>
  <div class="header">
      <div class="headerIzqueirda">
      </div>      
      <div class="headerCentro">
      	<img src="../imagenes/logo.png" width="800%" alt="logo" />
      </div>   
      <div class="headerDerecha">
      </div>
  </div>
  <div class="contentido">
  	<!-- InstanceBeginEditable name="EditRegion3" -->
     	
                
        
        
          <div class="contentidoIzquierda" align="center">            	
                <embed src="../paginas/terminosYCondiciones.pdf" type="application/pdf" width="90%" height="500px" />
          </div>  
          <div class="contentidoDerecha">    
          
              <br>
              <br>       		
              <div class="recuadroBlanco">
		       		 <br>
        	   		 <img src="../imagenes/tituloRegistro.png" width="40%"  />
                     
              </div> 
              <p align="center" ><b>Para registrarte debes ser mayor de edad en tu país.</b></p>
              <div align="center">
										 <?php 
											if (!empty($error) && $error!=''){
                                                echo '<p style="color:#FF0000";>'.$error.'</p>';
                                            }
                                         ?>
                                         <br />
              </div>                 		
              <div class="recuadroBlanco">
                     <br>
              
              		 <form action="registro.php" method="post" onsubmit="return validacion()" >
                     	<div class="recuadroBlanco"> 
                                </p><input type="radio" name="pais" value="1" required><img src="../imagenes/banderaColombia.png" width="17%"  style="min-width: 10%;" /> </p>  
                                <input type="radio" name="pais" value="2"> <img src="../imagenes/banderaEcuador.png" width="17%"  style="min-width: 10%;" /> </p> 
                                <input type="radio" name="pais" value="3"> <img src="../imagenes/banderaPeru.png" width="17%"  style="min-width: 10%;" /></p> 
                        </div> 
                     	<br>
                     
                     	<div class="recuadroBlanco">
                                <b>FECHA DE NACIMIENTO </b></p> <b>Día</b> </p> <input type="text" name="dia" id="dia" placeholder="dd" maxlength="2" size="2" style="width: 21px;" pattern="0[1-9]|1[0-9]|2[0-9]|3[01]" required/> 
                                </p>
                                <b>Mes</b> </p> <input type="text" name="mes" id="mes" placeholder="mm" maxlength="2" size="2" style="width: 21px;"  pattern="0[1-9]|1[012]" required/>
                                </p>
                                <b>Año</b> </p> <input type="text" name="ano" id="ano" placeholder="yyyyy" maxlength="4" size="4" style="width: 42px;"  pattern="19[0-9][0-9]|20[0][01]" required/>
                        </div>  
                                  
                     	<div class="recuadroBlanco">
                                <b>Identificación</b> </p><input type="text" name="identificacion" id="identificacion"  placeholder="Identificación" pattern="[0-9]{5,15}" required/>
                        </div>             
                     	<div class="recuadroBlanco">
                                <b>Nombres</b> </p><input type="text" name="nombres" id="nombres"  placeholder="Sus Nombres" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{2,40}"  required/>
                        </div>                          
                     	<div class="recuadroBlanco">
                                <b>Apellidos</b> </p><input type="text" name="apellidos" id="apellidos"  placeholder="Sus Apellidos" pattern="[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]{2,40}"  required/>
                        </div>                        
                     	<div class="recuadroBlanco">
                                <b>Teléfono</b> </p><input type="text" name="telefono" id="telefono"  placeholder="Su Número" 
  pattern="[0-9]{10,15}"  required/>
                        </div>                         
                     	<div class="recuadroBlanco">
                               <b>Email</b> </p><input type="text" name="email" id="emial"  placeholder="su.correo@personal.com" pattern="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" />
                        </div>                
                           
                     	<div class="recuadroBlanco">                                
                                <input type="checkbox" name="aceptar" value="1" required></p><b>Aceptar terminos y condiciones.</b> 
                        </div> 
                        <br>                   
                           
                     	<div class="recuadroBlanco">
                                <input type="submit" style="width:25%;height:50px; background-color:#033F88; color:#FFF; font-size: 22px;" value="Entrar"/>
                        </div>
                     </form>
                     <br>
              </div>         	          	
          </div>      
    
    
    
    
	<!-- InstanceEndEditable -->        
  </div>
  
  
  <div class="footer">
      <div class="recuadroAzulClaroDos">
      </div>
      <div class="recuadroGris">      	
          <div class="recuadroGrisIzquierda">
          	<a href="http://elrecreoesdetodos.com" target="_blank"><img src="../imagenes/compraYRecibeDomicilio.png" width="50%" alt="domicilios" /></a>
            	
          </div>             
          <div class="recuadroGrisDerecha">
          	<img src="../imagenes/siguenos.png"  />
            <a href="http://facebook.com/tetrapakcolombia" target="_blank"><img src="../imagenes/facebook.png"  /></a>
          	<img src="../imagenes/barraVertical.png"  />
            <a href="http://instagram.com/TetraPakAndina" target="_blank"><img src="../imagenes/instagram.png" /></a>
          	<img src="../imagenes/barraVertical.png" />
            <a href="https://www.youtube.com/channel/UChbiQa6dP4GNzsp1CNUBX2w" target="_blank"><img src="../imagenes/youtube.png" /></a>
          	<img src="../imagenes/barraVertical.png" />
            <a href="http://twitter.com/TetraPakAndina" target="_blank"><img src="../imagenes/twitter.png" /></a>
          	<img src="../imagenes/barraVertical.png" />
            <a href="http://linkedin.com/company/tetra-pak/" target="_blank"><img src="../imagenes/in.png" /></a>                        
          </div>   
      </div>    
  </div>
</div>
</body>
<!-- InstanceEnd --></html>

