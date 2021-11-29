<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" />
    <xsl:template match="/">
        <link rel="stylesheet" type="text/css" href="maintable.css" />
        <html>
            <head>
                <title>
유럽 추천 여행지
                </title>
            </head>
            <body>
                <h1>
유럽 추천 여행지
                </h1>
                <nav id="topMenu">
                    <ul>
                        <li>
                            <a class="menuLink" href="#">그리스</a>
                        </li>
                        <li>
                            <a class="menuLink" href="#">영국</a>
                        </li>
                        <li>
                            <a class="menuLink" href="#">프랑스</a>
                        </li>
                        <li>
                            <a class="menuLink" href="#">독일</a>
                        </li>
                    </ul>
                </nav>
                <xsl:for-each select="web/Europe/travel/city[@country = '그리스']">
                    <h2><xsl:value-of select="city/@country" /> 추천 여행지
                    </h2>
                    <table id="maintable">
                        <tr>
                            <td>
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="picture1/@file" />
                                    </xsl:attribute>
                                    <xsl:attribute name="width">
                                        <xsl:value-of select="picture1/@w" />
                                    </xsl:attribute>
                                    <xsl:attribute name="height">
                                        <xsl:value-of select="picture1/@h" />
                                    </xsl:attribute>
                                </img>
                                image
                                <br />
                                <xsl:value-of select="../name" />
                                <br />
                                <xsl:value-of select="../city" />
                            </td>
                        </tr>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>