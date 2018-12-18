
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0" xmlns="http://www.w3.org/2000/svg">

    <!--<xsl:output method="xml" indent="yes" media-type="image/svg" />-->
    <xsl:template match="AlcoholWholesaleReport">
        <svg class="bar" width="40cm" height="40cm" >

            <script type="text/ecmascript"> <![CDATA[
		    function changeColor(evt) {
		      	var rect = evt.target;
		      	var currentFill = rect.getAttribute("fill");
		      	if (currentFill=="blue")
		        	rect.setAttribute("fill", "green");
		      	else
		        	rect.setAttribute("fill", "blue");
		   		}
		   	function getRandomInt(min, max) {
  				return Math.floor(Math.random() * (max - min + 1) + min);
				}
			function something(evt) {
    			var pom = evt.target;
    			var currentSize = pom.getAttribute("font-size");
    			setInterval(function() {
    				pom.setAttribute("font-size", getRandomInt(10,50));
    			}, 100);
         		}
	  		]]> </script>

            <style type="text/css">
                @import url('https://fonts.googleapis.com/css?family=Montserrat&amp;subset=latin-ext');
                svg{ font-family: 'Montserrat', sans-serif;}
                .label{
                visibility: hidden;
                z-index: 5;
                }
                .box:hover .label{
                visibility: visible;
                }
                .bar{
                margin: 50px;
                }
            </style>

            <xsl:variable name="XforBar" select="'12cm'"/>

            <text x="11cm" y="2cm" font-family="Arial" font-size="60" font-weight="400" fill="blue">Alcohol Wholesale Report:</text>
            <text x="2cm" y="4cm" font-family="Arial" font-size="35" font-weight="700" fill="blue">Element Sums:</text>
            <xsl:for-each select="Podsumowanie">
                <text x="2cm" y="5cm" font-family="Arial" font-size="30" fill="blue"> Manufacturers Sum: <xsl:value-of select="Manufacturers_Sum"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="4.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{10*Manufacturers_Sum}" dur="2s" fill="freeze"/>
                </rect>
                <text x="2cm" y="6cm" font-family="Arial" font-size="30" fill="blue"> Categories Sum: <xsl:value-of select="Categories_Sum"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="5.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{10*Categories_Sum}" dur="2s" fill="freeze"/>
                </rect>
                <text x="2cm" y="7cm" font-family="Arial" font-size="30" fill="blue"> Units Sum: <xsl:value-of select="Units_Sum"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="6.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{10*Units_Sum}" dur="2s" fill="freeze"/>
                </rect>
                <text x="2cm" y="8cm" font-family="Arial" font-size="30" fill="blue"> Products Sum: <xsl:value-of select="Products_Sum"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="7.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{10*Products_Sum}" dur="2s" fill="freeze"/>
                </rect>
            </xsl:for-each>

            <text x="2cm" y="10cm" font-family="Arial" font-size="35" font-weight="700" fill="blue">Alcohol Number:</text>
            <xsl:for-each select="Podsumowanie">
                <text x="2cm" y="11cm" font-family="Arial" font-size="30" fill="blue">Vodka: <xsl:value-of select="VodkaNumber"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="10.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{40*VodkaNumber}" dur="2s" fill="freeze"/>
                </rect>
                <text x="2cm" y="12cm" font-family="Arial" font-size="30" fill="blue">White-WineNumber: <xsl:value-of select="White-WineNumber"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="11.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{40*White-WineNumber}" dur="2s" fill="freeze"/>
                </rect>
                <text x="2cm" y="13cm" font-family="Arial" font-size="30" fill="blue">Red-Wine: <xsl:value-of select="Red-Wine"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="12.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{40*Red-Wine}" dur="2s" fill="freeze"/>
                </rect>
                <text x="2cm" y="14cm" font-family="Arial" font-size="30" fill="blue">Cognac: <xsl:value-of select="Cognac"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="13.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{40*Cognac}" dur="2s" fill="freeze"/>
                </rect>
                <text x="2cm" y="15cm" font-family="Arial" font-size="30" fill="blue">Whisky: <xsl:value-of select="Whisky"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="14.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{40*Whisky}" dur="2s" fill="freeze"/>
                </rect>
                <text x="2cm" y="16cm" font-family="Arial" font-size="30" fill="blue">Beer: <xsl:value-of select="Beer"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="15.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{40*Beer}" dur="2s" fill="freeze"/>
                </rect>
                <text x="2cm" y="17cm" font-family="Arial" font-size="30" fill="blue">Absinth: <xsl:value-of select="Absinth"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="16.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{40*Absinth}" dur="2s" fill="freeze"/>
                </rect>
            </xsl:for-each>

            <text x="2cm" y="19cm" font-family="Arial" font-size="35" font-weight="700" fill="blue">Average Prices:</text>
            <xsl:for-each select="Podsumowanie">
                <text x="2cm" y="20cm" font-family="Arial" font-size="30" fill="blue">Vodka: <xsl:value-of select="Average_Alcohol_Price"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="19.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{Average_Alcohol_Price}" dur="2s" fill="freeze"/>
                </rect>
                <text x="2cm" y="21cm" font-family="Arial" font-size="30" fill="blue">White-WineNumber: <xsl:value-of select="Average_Vodka_Price"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="20.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{Average_Vodka_Price}" dur="2s" fill="freeze"/>
                </rect>
                <text x="2cm" y="22cm" font-family="Arial" font-size="30" fill="blue">Red-Wine: <xsl:value-of select="Average_White_Wine_Price"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="21.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{Average_White_Wine_Price}" dur="2s" fill="freeze"/>
                </rect>
                <text x="2cm" y="23cm" font-family="Arial" font-size="30" fill="blue">Cognac: <xsl:value-of select="Average_Red_Wine_Price"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="22.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{Average_Red_Wine_Price}" dur="2s" fill="freeze"/>
                </rect>
                <text x="2cm" y="24cm" font-family="Arial" font-size="30" fill="blue">Whisky: <xsl:value-of select="Average_Cognac_Price"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="23.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{Average_Cognac_Price}" dur="2s" fill="freeze"/>
                </rect>
                <text x="2cm" y="25cm" font-family="Arial" font-size="30" fill="blue">Beer: <xsl:value-of select="Average_Whisky_Price"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="24.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{Average_Whisky_Price}" dur="2s" fill="freeze"/>
                </rect>
                <text x="2cm" y="26cm" font-family="Arial" font-size="30" fill="blue">Absinth: <xsl:value-of select="Average_Beer_Price"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="25.5cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{Average_Beer_Price}" dur="2s" fill="freeze"/>
                </rect>
                <text x="2cm" y="27cm" font-family="Arial" font-size="30" fill="blue">Absinth: <xsl:value-of select="Average_Absinth_Price"/> </text>
                <rect onclick="changeColor(evt)" x="{$XforBar}" y="25.6cm" height="0.5cm" width="0" fill="blue" stroke="black" stroke-width="1">
                    <animate attributeType="XML" attributeName="width" from="0" to="{Average_Absinth_Price}" dur="2s" fill="freeze"/>
                </rect>
            </xsl:for-each>

        </svg>
    </xsl:template>
</xsl:stylesheet>