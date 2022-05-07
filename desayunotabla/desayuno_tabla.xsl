<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">

    <html>
        <head>
            <title>XSL Ejemplo Desayuno</title>
        </head>
        <body>
                <h1>Tabla Principal</h1>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Calorías</th>
                    </tr>
                    <xsl:for-each select="breakfast_menu/food">
                        <tr>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="price"/>
                                
                            </td>
                            <td>
                                <xsl:value-of select="calories"/>
                            </td>
                        </tr>
                    
                    </xsl:for-each>
                </table>
                <h1>Ordenar por nombre</h1>
                    <table border="1">
                        <tr>
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th>Calorías</th>
                        </tr>
                        <xsl:for-each select="breakfast_menu/food">
                        <xsl:sort select="name"/>
                            <tr>
                                <td>
                                    <xsl:value-of select="name" />
                                </td>
                                <td>
                                    <xsl:value-of select="price"/>
                                    
                                </td>
                                <td>
                                    <xsl:value-of select="calories"/>
                                </td>
                            </tr>
                        
                        </xsl:for-each>
                    </table>
                    <h1>Filtrar por mas de 850 cal.</h1>
                    <table border="1">
                        <tr>
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th>Calorías</th>
                        </tr>
                        <xsl:for-each select="breakfast_menu/food">
                        <xsl:if test="calories &gt; 850" >
                            <tr>
                                <td>
                                    <xsl:value-of select="name" />
                                </td>
                                <td>
                                    <xsl:value-of select="price"/>
                                    
                                </td>
                                <td>
                                    <xsl:value-of select="calories"/>
                                </td>
                            </tr>
                        </xsl:if>
                        
                        </xsl:for-each>
                    </table>
                    <h1>Si el precio es mayor a 900 la fila debe de ir en rojo</h1>
                    <table border="1">
                        <tr>
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th>Calorías</th>
                        </tr>
                        <xsl:for-each select="breakfast_menu/food">
                        <xsl:choose>
                                <xsl:when test="price &gt; 900">
                                <tr>
                                    <td bgcolor="red">
                                        <xsl:value-of select="name" />
                                    </td>
                                    <td bgcolor="red">
                                        <xsl:value-of select="price"/>
                                        
                                    </td> 
                                    <td bgcolor="red">
                                        <xsl:value-of select="calories"/>
                                    </td>
                                </tr>
                                </xsl:when>
                                <xsl:otherwise>
                                    <tr>
                                        <td>
                                            <xsl:value-of select="name" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="price"/>
                                            
                                        </td>
                                        <td>
                                            <xsl:value-of select="calories"/>
                                        </td>
                                    </tr>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </table>
        


        </body>
    </html>

    </xsl:template>
</xsl:transform>