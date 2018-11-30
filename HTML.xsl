<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" />

    <xsl:template match="/">
        <html>
            <body>
                <h2>ALCOHOL WHOLESALE</h2>
                <table border = "1">
                    <tr bgcolor = "9acd32">
                        <th style="text-align:left">Producent</th>
                        <th style="text-align:left">Alcohol Name</th>
                    </tr>
                    <xsl:for-each select="document/alcohol_wholesale/products/product">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="producent"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>