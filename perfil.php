<?php		
	session_name("tetra");
	session_start();
	if( isset($_SESSION["nombres"]) == true ){
		$nombreUsuario = $_SESSION["nombres"];
		$idPais = $_SESSION["idpais"];
		$idParticipante = $_SESSION["idparticipante"];
	}
	
?>

<?php require_once('../conexiones/elrecreoweb.php'); ?>

<?php	
	
	if (!empty($idParticipante) && $idParticipante!='' ){	
			$query_Recordset1 = "SELECT * from PARTICIPANTES where ID_PARTICIPANTE = " . $idParticipante ;
			$Recordset1 = mysqli_query($connElrecqcgWeb, $query_Recordset1) or die(mysql_error());
			if($row = mysqli_fetch_array($Recordset1)){
				$nombre = $row[NOMBRES] . " " . $row[APELLIDOS];
				$telefono = $row[TELEFONO] ;
			}else{
				
			}
			mysqli_close($enlace);
	}
	
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/plantilla5publico.dwt.php" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->

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
      <div class="headerIzqueirda" align="right">
	  <!-- InstanceBeginEditable name="EditRegion4" -->
      		
            

            <div class="opcionMenu" >
            	<a href="inicio.php"><img src="../imagenes/boton_inicio.png" width="100%"  /></a>
            </div> 
            <div class="opcionMenu" >
          		<img src="../imagenes/barraVerticalEncabezado.png"   width="70%"/> 
            </div> 
            <div class="opcionMenu" >
            	<a href="como.php"><img src="../imagenes/boton_como_participar.png" width="100%"/></a>
            </div> 

	  <!-- InstanceEndEditable -->
      
    </div>      
      <div class="headerCentro">
      	<img src="../imagenes/logo.png" width="800%" alt="logo" />
      </div>   
      <div class="headerDerecha" align="left">
	  <!-- InstanceBeginEditable name="EditRegion5" -->
            
            
            
            <div class="opcionMenu" >
            	<a href="juego.php"><img src="../imagenes/boton_juego.png" width="100%" /></a>
            </div> 
            <div class="opcionMenu" >
          		<img src="../imagenes/barraVerticalEncabezado.png"   width="70%"/> 
            </div> 
            <div class="opcionMenu" >
            	<a href="premios.php"><img src="../imagenes/boton_premios.png" width="100%"/></a>
            </div> 
            <div class="opcionMenu" >
	          	<img src="../imagenes/barraVerticalEncabezado.png"  width="70%" />
            </div> 
            <div class="opcionMenu" >
            	<a href="perfil.php"><img src="../imagenes/boton_usuario_roll_over.png" width="75%"/></a> 
            </div> 
            <div style="color:#FFF"; font-size: 5vw;">
                <?php echo $nombreUsuario; 	?>
            </div>   
            <div class="opcionMenu" >
	          	<img src="../imagenes/barraVerticalEncabezado.png"  width="70%" />
            </div> 
            <div class="opcionMenu" >            	        
	            <a href="salirLoginParticipante.php"><img src="../imagenes/cerrar_session.png" width="50%" title="Salir"/></a>
            </div> 
	  <!-- InstanceEndEditable -->
      
      </div>
  </div>
  <div class="contentido">
  	<!-- InstanceBeginEditable name="EditRegion3" -->
    
    
    
      <div class="recuadroBlancoDos" align="center">  	
	      <br>
          <div class="recuadroBlanco" align="center">    	
          		<img src="../imagenes/texto_1_perfil.png" width="10%" />	
          </div>  	
          <div class="recuadroAzul">   
              
              <div class="contentidoIzquierdaDos" align="right">       
              	<div class="contentidoIzquierdaSeccion" align="center">
                    <img src="../imagenes/imagen_usuario.png" width="30%" />
                     
                    <br>
                    <div class="recuadroBlancoTres">
                                <b style="color:#666666";>Nombre </b>  </p>   <b style="color:#033F88";> <?php echo $nombre; ?> </b> 
                    </div> 
                    <br>
                    <div class="recuadroBlancoTres">
                                <b style="color:#666666";>Telefono</b>  </p>   <b style="color:#033F88";><?php echo $telefono; 	?> </b> 
                    </div> 
                    <br>
                    <img src="../imagenes/texto_2_perfil.png" width="75%" />
                    
                    
                    <a href="perfil.php"><img src="../imagenes/boton_registrar_compras.png" width="25%" /></a> 
                    <a href="perfil.php"><img src="../imagenes/boton_creditos_adicionales.png" width="25%" /></a> 
                    <br>
                    <div class="recuadroAzulDos" align="right">
                    </div>
                 </div>
              </div>  
              <div class="contentidoDerecha">  
                  <div class="recuadroBlanco">
                    <div class="recuadroBlancoTres">
                        <img src="../imagenes/texto_3_perfil.png" width="80%"  />
                    </div> 
                    <div class="recuadroBlancoTres">
                        <img src="../imagenes/imagen_compras.png" width="80%"  />
                        <img src="../imagenes/imagen_reto_mental.png" width="80%"  />
                    </div> 
                        <img src="../imagenes/imagen_creditos_disponibles.png" width="80%"  />
                        <img src="../imagenes/texto_4_perfil.png" width="80%"  />
                        <img src="../imagenes/imagen_compras.png" width="80%"  />
                        <img src="../imagenes/imagen_reto_mental.png" width="80%"  />
                  </div>    
                <br>    		    	          	
              </div> 
              
              	
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

