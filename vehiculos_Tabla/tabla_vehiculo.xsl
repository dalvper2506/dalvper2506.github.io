<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">

    <html>
        <head>
            <title>XSL Ejemplo Vehiculos</title>
        </head>
        <body>
                <h1>1-Tabla con la marca el modelo y su precio</h1>
                <table border="1">
                    <tr>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Precio</th>
                    </tr>
                    <xsl:for-each select="vehiculos/vehiculo">
                    <xsl:sort select="marca"/>
                        <tr>
                            <td>
                                <xsl:value-of select="marca"/>
                            </td>
                            <td>
                                <xsl:value-of select="modelo"/>
                                
                            </td>
                            <td>
                                <xsl:value-of select="precio"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h1>2-Tabla con marca modelo, cambio, precio y combustible de los coches gasolina y automáticos.</h1>
                <table border="1">
                    <tr>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Cambio</th>
                        <th>Precio</th>
                        <th>Combustible</th>
                    </tr>
                    <xsl:for-each select="vehiculos/vehiculo">
                    <xsl:if test="@combustible = 'gasolina' and @cambio='automatico' ">
                        <tr>
                            <td>
                                <xsl:value-of select="marca"/>
                            </td>
                            <td>
                                <xsl:value-of select="modelo"/>
                                
                            </td>
                            <td>
                                <xsl:value-of select="@cambio" />
                            </td>
                            <td>
                                <xsl:value-of select="precio"/>
                            </td>
                            <td>
                                <xsl:value-of select="@combustible" />
                            </td>

                        </tr>
                    </xsl:if>
                    </xsl:for-each>
                </table>
                <h1>3-Marcando en verde todo los de menos de 20.000</h1>
                <table border="1">
                    <tr>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Precio</th>
                        <th>Kms</th>
                        <th>Año</th>
                        <th>Potencia</th>
                    </tr>
                    <xsl:for-each select="vehiculos/vehiculo">
                    <xsl:choose>
                        <xsl:when test="precio &lt; 20000">
                            <tr>
                                <td bgcolor="green">
                                    <xsl:value-of select="marca"/>
                                </td>
                                <td bgcolor="green">
                                    <xsl:value-of select="modelo"/>
                                    
                                </td>
                                <td bgcolor="green">
                                    <xsl:value-of select="precio"/>
                                </td>
                                <td bgcolor="green">
                                    <xsl:value-of select="km" />
                                </td>
                                <td bgcolor="green">
                                    <xsl:value-of select="anno" />
                                </td>
                                <td bgcolor="green  ">
                                    <xsl:value-of select="potencia" />
                                </td>
    
                            </tr>
                        </xsl:when>
                        <xsl:otherwise>
                            <tr>
                                <td>
                                    <xsl:value-of select="marca"/>
                                </td>
                                <td>
                                    <xsl:value-of select="modelo"/>
                                    
                                </td>
                                <td>
                                    <xsl:value-of select="precio"/>
                                </td>
                                <td>
                                    <xsl:value-of select="km" />
                                </td>
                                <td>
                                    <xsl:value-of select="anno" />
                                </td>
                                <td>
                                    <xsl:value-of select="potencia" />
                                </td>
    
                            </tr>
                        </xsl:otherwise>
                    </xsl:choose>
                    </xsl:for-each>
                </table>
                <h1>4-Tabla marca con modelo, combustible y precio de los coches, no gasolina. Ordenados por precio.</h1>
                <table border="1">
                    <tr>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Combustible</th>
                        <th>Precio</th>
                    
                    </tr>
                    <xsl:for-each select="vehiculos/vehiculo">
                    <xsl:sort select="precio" order="descending" data-type="number"/>
                    <xsl:if test="@combustible = 'diesel'">
                        <tr>
                            <td>
                                <xsl:value-of select="marca"/>
                            </td>
                            <td>
                                <xsl:value-of select="modelo"/>
                                
                            </td>
                            <td>
                                <xsl:value-of select="@combustible" />
                            </td>
                            <td>
                                <xsl:value-of select="precio"/>
                            </td>
                        </tr>
                    </xsl:if>
                    </xsl:for-each>
                </table>
                <h1>5-Tabla con marca modelo, cambio, precio y combustible de los coches gasolina y automáticos.</h1>
                <table border="1">
                    <tr>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Precio</th>
                        <th>Kms</th>
                        <th>Año</th>
                        <th>Potencia</th>
                    
                    </tr>
                    <xsl:for-each select="vehiculos/vehiculo">
                    <xsl:sort select="precio" order="descending" data-type="number"/>
                    <xsl:if test="position()=1">
                    <tr>
                        <td>
                            <xsl:value-of select="marca"/>
                        </td>
                        <td>
                            <xsl:value-of select="modelo"/>
                            
                        </td>
                        <td>
                            <xsl:value-of select="precio"/>
                        </td>
                        <td>
                            <xsl:value-of select="km" />
                        </td>
                        <td>
                            <xsl:value-of select="anno" />
                        </td>
                        <td>
                            <xsl:value-of select="potencia" />
                        </td>
                    </tr>
                    </xsl:if>
                    </xsl:for-each>
                </table>
        </body>
    </html>
    </xsl:template>
</xsl:transform>