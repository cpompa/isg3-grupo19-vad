<%@page contentType="text/html; charset=windows-1252" pageEncoding="ISO-8859-1" language="java" import="java.io.*,java.sql.*,javax.sql.*,javax.naming.*,java.util.List,java.util.ArrayList,svl.pos.util.*,svl.pos.dominio.*,svl.pos.data.*"%>
<%
response.setHeader("Pragma", "No-cache");
response.setDateHeader("Expires", 0);
response.setHeader("Cache-Control", "no-cache");
%>

<%
Usuario user = (Usuario)session.getAttribute("usuario");

if(user!=null  && user.getUsua_usuario().equals("admin")){
	String nombre = user.getUsua_usuario();

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"></meta>
    	<title>SVL - Servicio de Voluntariado Local</title>
    	<link rel="stylesheet" type="text/css" href="css/vad_estilo.css"></link>
  	</head>
  	<body leftmargin=0 topmargin=0>
    	<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr><td width="100%" valign="top" colspan="2">
            	<IFRAME src="Cabecera_admin_serv.jsp" scrolling="no" frameborder="0" width="100%" height="132"></IFRAME>
            </td></tr>
			<tr align="left">
            	<td align="left" valign="top">
					<IFRAME src="Menu.jsp" scrolling="no" frameborder="0" width="200" height="565"></IFRAME> 
            	</td>
            	<td valign="top" align="left">
					<table width="99%" border="0" cellpadding="0" cellspacing="0" align="left" class="TablaGeneral">
						<tr>
						  <td colspan="2" class="cabecera_pagina">TIPOS DE SERVICIOS DE VOLUNTARIADO </td>
						</tr>
						<tr><td colspan="2">
							<table width="100%" cellpadding="0" align="left" cellspacing="0">
								<tr><td>
              						<table class="x2d" border="0" cellpadding="0" cellspacing="0" width="100%">           							   											
                  						<tr>                  							
                  							<td width="50%" align=left nowrap="nowrap">
                      							<button class="boton_general" type="button" onclick="javascript:window.parent.location.href='SVL_Admin_TipoServicios_2.htm';">A�adir</button>
					 							<button class="boton_general" type="button" onclick="javascript:void(0);">Modificar</button>
												<button class="boton_general" type="button" onclick="javascript:window.parent.location.href='SVL_Admin_TipoServicios_4.htm';">Eliminar</button>                      						                      						
					 						</td>					 						
                    						<td width="50%" align="right" nowrap="nowrap">
                      	                    	<table width="60%" border="0" cellpadding="0" cellspacing="0">
                          							<tr>
                            							<td nowrap="nowrap" class="texto_min" align=center>Anterior</td>
                            							<td nowrap="nowrap" align=center>
                              								<select title="Select record set" class="texto_min">
                                								<option value="all">Muestra todos</option>
                                								<option value="1" selected>1-5 de 5</option>
                              								</select>
                              							</td>
                            							<td nowrap="nowrap" align=center><a href="javascript:void(0);" class="texto_min">Siguiente</a></td>
                          							</tr>
                      							</table>
                    						</td>
                  						</tr>
              						</table>
            					</td></tr>
      						</table>
							<table class="x2b" border="0" cellpadding="1" cellspacing="0" width="100%">
								<form name="formulario1" action="" method="post">
									<tr>
										<th width="3%"  class="x2t"     scope="col" nowrap>&nbsp;</th>
										<th width="20%" class="x2t x5k" scope="col" nowrap>Nombre</th>
										<th width="47%" class="x2t x5k" scope="col" nowrap>Descripci�n </th>
										<th width="25%" class="x2t x5k" scope="col" nowrap>Observaciones</th>
										<th width="5%" class="x2t x5k" scope="col" nowrap>Visible</th>
									</tr>
									<tr>
										<td class="x2o x5y"><input name="cheque1" value="0" type="radio"></td>
										<td class="x2j x5y">Servicios de Compa��a</td>
										<td class="x2j x5y">Servicios que incluyen el acompa�amiento a personas solas necesitadas de compa��a</td>
										<td class="x2j x5y">Diarias</td>
										<td class="x2j x5y"><input name="visible" type="checkbox" value="1" checked></td>
									</tr>
									<tr>
										<td class="x2o x5y"><input name="cheque1" type="radio" value="1" checked></td>
										<td class="x2j x5y">Asistencia en el hogar</td>
										<td class="x2j x5y">Servicios que incluyen peque�as chapuzas dom�sticas</td>
										<td class="x2j x5y">No incluyen obras ni pintura</td>
										<td class="x2j x5y"><input name="visible" type="checkbox" value="1" checked></td>
									</tr>
									<tr>
										<td class="x2o x5y"><input name="cheque1" value="2" type="radio" onclick="javascript:location.href='SER_Mant_Tipo_Calid_2.htm'"></td>
										<td class="x2j x5y">Servicios sanitarios</td>
										<td class="x2j x5y">Servicios de salud dados por voluntarios profesionales de la salud </td>
										<td class="x2j x5y">Acreditaci�n necesaria</td>
										<td class="x2j x5y"><input name="visible" type="checkbox" value="1" checked></td>
									</tr>
									<tr>
										<td class="x2o x5y"><input name="cheque1" value="3" type="radio"></td>
										<td class="x2j x5y">Formaci�n</td>
										<td class="x2j x5y">Formaci�n en distintas materias para diferentes edades</td>
										<td class="x2j x5y">Personas mayores</td>
										<td class="x2j x5y"><input name="visible" type="checkbox" value="1" checked></td>
									</tr>
									<tr>
										<td class="x2o x5y"><input name="cheque1" value="4" type="radio"></td>
										<td class="x2j x5y">Servicios inform�ticos</td>
										<td class="x2j x5y">Ayuda con los equipos inform�ticos de los hogares de los demandantes</td>
										<td class="x2j x5y">No</td>
										<td class="x2j x5y"><input name="visible" type="checkbox" value="1" checked></td>
									</tr>
								</form>
		           			</table>
           				</td></tr>
						<tr><td height="10"></td></tr>
						<tr>
							<td width="50%" align="left" valign="top">&nbsp;</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr><td width="100%" valign="top" colspan="2">
            	<IFRAME src="Pie.htm" scrolling="no" frameborder="0" width="100%" height="25"></IFRAME>
            </td></tr>
		</table>
	</body>
</html>
<%
}else{//no es  usuario admin
	pageContext.forward("Inicio.jsp");
}%>