<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
	<xsl:param name="col-count" select="7" />
	<xsl:template match="/root">
		<html>
			<head>
				<link rel="icon" href="img/webicon.ico" />
				<link rel="stylesheet" type="text/css" href="css/list.css" />
				<meta charset="UTF-8" />
				<title>offf</title>
			</head>
			<body>

				<div class="wrapper">
				  
					<div class="hrr">
					  <img src="slide13.png"/>
					  <center>
					   <p>Recent years have seen a surge of interest in machine learning and artificial intelligence techniques in health care.1 Deep learning2 represents the latest iteration in a progression of artificial intelligence technologies that have allowed machines to mimic human intelligence in increasingly sophisticated and independent ways.3 Early medical artificial intelligence systems relied heavily on experts to train computers by encoding clinical knowledge as logic rules for specific clinical scenarios. More advanced machine learning systems train themselves to learn these rules by identifying and weighing relevant features from the data, such as pixels from medical images, or raw information from electronic health records (EHRs).</p>
					  </center>
					</div>
					<center>
						<div class="wrapper-4">
							

							
							<xsl:for-each select="item">
								
						
										<center>
											
											
											<table border="1">
											
												<tr>
													
													<th>Logiciel</th>
													<th>Description</th>
													<th>image</th>
													
												</tr>
												<xsl:for-each select="software">
													<tr>
														
														<td id="name">
														<center>
															<strong>
																<xsl:value-of select="name" />
															</strong>
															</center>
														</td>
														<td id="description">
															<xsl:value-of select="description" />
														</td>
														<td id="img">
															<img>
																<xsl:attribute name="src">
														<xsl:value-of select="icon/@src" />
													</xsl:attribute>
																<xsl:attribute name="width">
														<xsl:value-of select="icon/@width" />
													</xsl:attribute>
																<xsl:attribute name="height">
														<xsl:value-of select="icon/@height" />
													</xsl:attribute>
															</img>
														</td>
													</tr>
												</xsl:for-each>
											</table>
										</center>
									
									

										
									
										
									
										
									
							</xsl:for-each>


						</div>
					</center>
				
					
					
					<footer>
						<div id="ref-t">Références</div>
						<div id="ref-list">
							<xsl:for-each select="references/ref">
								<p>
									<xsl:value-of select="." />
								</p>
							</xsl:for-each>
						</div>
						<div class="left" id="up-b">
							<div id="uparrow"></div>
						</div>
					</footer>
					
				</div>
	<script>
					var a = document.getElementById("uparrow");
					a.onclick = function(){
					document.body.scrollTop = 0;
					document.documentElement.scrollTop = 0;
					};
					
				</script>
			</body>
		</html>
	</xsl:template>


</xsl:stylesheet>