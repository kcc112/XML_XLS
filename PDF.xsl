<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml"/>
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">

            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4" page-height="30cm" page-width="38cm">
                    <fo:region-body margin="1cm "/>
                </fo:simple-page-master>
                <fo:simple-page-master master-name="Summary" page-height="30cm" page-width="38cm">
                    <fo:region-body margin="1cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="A4">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block text-align="center" font-family="Arial" font-weight="bold" font-size="1cm" margin-top="1cm" margin-bottom="1cm">Alcohol Wholesale Report</fo:block>

                        <fo:table table-layout="fixed" width="100%" text-align="center">
                            <fo:table-header>
                                <fo:table-row font-family="Arial" font-weight="bold" font-size="5mm">
                                    <fo:table-cell>
                                        <fo:block  border-color="black" border-style="solid solid solid solid" border-width="0.3mm" >Name</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block  border-color= "black" border-style="solid solid solid none" border-width="0.3mm" >Category</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block  border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Producent</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block  border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Volume</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block  border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Strength</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block  border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Price</fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-header>
                            <fo:table-body>
                                <xsl:for-each select="AlcoholWholesaleReport/Product">
                                     <fo:table-row font-family="Arial">
                                        <fo:table-cell>
                                            <fo:block  border-style="none solid solid solid" border-width="0.3mm" ><xsl:value-of select="@Name"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block  border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="@Category"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block  border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="@Producent"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block  border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="@Volume"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block  border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="@Strength"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block  border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="@Price"/></fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </xsl:for-each>
                            </fo:table-body>
                        </fo:table>

                </fo:flow>
            </fo:page-sequence>

            <fo:page-sequence master-reference="Summary">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block  font-family="Arial" font-weight="bold" font-size="1cm" margin-top="1cm" margin-bottom="1cm">Summary: </fo:block>
                    <fo:block  font-family="Arial" font-weight="bold" font-size="0.5cm" margin-top="1cm" margin-bottom="0.2cm">Elements: </fo:block>
                    <fo:table font-family="Arial"  table-layout="fixed" width="50%" text-align="center">
                        <fo:table-header>
                            <fo:table-row font-family="Arial" font-weight="bold" font-size="4mm" >
                                <fo:table-cell>
                                    <fo:block  border-color="black" border-style="solid solid solid solid" border-width="0.3mm" >Manufacturers Sum</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block  border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Categories Sum</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block  border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Units Sum</fo:block>
                                 </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block  border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Products Sum</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-header>
                        <fo:table-body>
                            <xsl:for-each select="AlcoholWholesaleReport/Podsumowanie">
                                <fo:table-row font-family="Arial">
                                    <fo:table-cell>
                                        <fo:block  border-style="none solid solid solid" border-width="0.3mm" ><xsl:value-of select="Manufacturers_Sum"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block  border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="Categories_Sum"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block  border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="Units_Sum"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block  border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="Products_Sum"/></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </xsl:for-each>
                        </fo:table-body>
                    </fo:table>

                    <fo:block  font-family="Arial" font-weight="bold" font-size="0.5cm" margin-top="1cm" margin-bottom="0.2cm">Average Price: </fo:block>
                    <fo:table font-family="Arial" table-layout="fixed" width="90%" text-align="center">
                        <fo:table-header >
                            <fo:table-row font-family="Arial" font-weight="bold" font-size="4mm" >
                                <fo:table-cell>
                                    <fo:block  border-color="black" border-style="solid solid solid solid" border-width="0.3mm" >Alcohol Price</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block  border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Vodka Price</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block  border-color="black" border-style="solid solid solid none" border-width="0.3mm" >White Wine Price</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block  border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Red Wine Price</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block  border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Cognac Price</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block  border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Whisky Price</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block  border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Beer Price</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block  border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Absinth Price</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-header>
                        <fo:table-body>
                            <xsl:for-each select="AlcoholWholesaleReport/Podsumowanie">
                                <fo:table-row font-family="Arial">
                                    <fo:table-cell>
                                        <fo:block border-style="none solid solid solid" border-width="0.3mm" ><xsl:value-of select="Average_Alcohol_Price"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="Average_Vodka_Price"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="Average_White_Wine_Price"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="Average_Red_Wine_Price"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="Average_Cognac_Price"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="Average_Whisky_Price"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="Average_Beer_Price"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="Average_Absinth_Price"/></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </xsl:for-each>
                        </fo:table-body>
                    </fo:table>

                    <fo:block  font-family="Arial" font-weight="bold" font-size="0.5cm" margin-top="1cm" margin-bottom="0.2cm">Alcohols Numbers: </fo:block>
                    <fo:table font-family="Arial" table-layout="fixed" width="50%" text-align="center">
                        <fo:table-header>
                            <fo:table-row font-family="Arial" font-weight="bold" font-size="4mm" >
                                <fo:table-cell>
                                    <fo:block border-color="black" border-style="solid solid solid solid" border-width="0.3mm" >Vodka</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block border-color="black" border-style="solid solid solid none" border-width="0.3mm" >White Wine </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Red Wine</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Cognac</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Whisky</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Beer</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block border-color="black" border-style="solid solid solid none" border-width="0.3mm" >Absinth</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-header>
                        <fo:table-body>
                            <xsl:for-each select="AlcoholWholesaleReport/Podsumowanie">
                                <fo:table-row font-family="Arial">
                                    <fo:table-cell>
                                        <fo:block border-style="none solid solid solid" border-width="0.3mm" ><xsl:value-of select="VodkaNumber"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="White-WineNumber"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="Red-Wine"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="Cognac"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="Whisky"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="Beer"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block border-style="none solid solid none" border-width="0.3mm" ><xsl:value-of select="Absinth"/></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </xsl:for-each>
                        </fo:table-body>
                    </fo:table>

                    <fo:block font-family="Arial" font-weight="bold" font-size="1cm" margin-top="1cm" margin-bottom="0.2cm">Authors</fo:block>
                    <xsl:for-each select="AlcoholWholesaleReport/Authors/Author">
                        <fo:list-block>
                            <fo:list-item>
                                <fo:list-item-label>
                                    <fo:block font-family="Arial" font-size="0.8cm" >Author: </fo:block>
                                </fo:list-item-label>
                                <fo:list-item-body>
                                    <fo:block font-family="Arial" font-size="0.8cm"  margin-left="3cm"><xsl:value-of select="."/></fo:block>
                                </fo:list-item-body>
                            </fo:list-item>
                        </fo:list-block>
                    </xsl:for-each>

                    <fo:block font-family="Arial" font-size="0.8cm">Date: <xsl:value-of select="AlcoholWholesaleReport/Podsumowanie/RaportDateGeneration"/></fo:block>
                </fo:flow>
            </fo:page-sequence>

        </fo:root>
    </xsl:template>

</xsl:stylesheet>