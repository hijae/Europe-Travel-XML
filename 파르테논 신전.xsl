<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" />
    <xsl:template match="/">
        <link rel="stylesheet" type="text/css" href="maintable.css"/>
        <html>
            <head>
                <title>
유럽 추천 여행지
                </title>
            </head>
            <body>
                <div id="divhead">
                    <a href="Euro_travel.xml"><h1 id="h1head"><img src="ui/main.png" width="50" height="50"/>
                유럽 추천 여행지
                                </h1>
                            </a>
                                <nav id="topMenu">
                                    <ul>
                                        <li>
                                            <a class="menuLink" href="./그리스.xml">그리스</a>
                                        </li>
                                        <li>
                                            <a class="menuLink" href="./영국.xml">영국</a>
                                        </li>
                                        <li>
                                            <a class="menuLink" href="./프랑스.xml">프랑스</a>
                                        </li>
                                        <li>
                                            <a class="menuLink" href="./독일.xml">독일</a>
                                        </li>
                                    </ul>
                                </nav>
                                </div>
                                <div id="divbody">
                                    <div style="white-space:nowrap; overflow:auto;  width:95%; margin: 0 auto;">
                <xsl:for-each select="web/Europe/travel[name='파르테논 신전']">
                    <xsl:choose>
                        <xsl:when test="@select='건물'">
                            <table>
                                <tr>
                                    <td><img id="subimg">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="concat('./image/',picture2/@file)" />
                                        </xsl:attribute>
                                        <xsl:attribute name="width">
                                            <xsl:value-of select="picture2/@w" />
                                        </xsl:attribute>
                                        <xsl:attribute name="height">
                                            <xsl:value-of select="picture2/@h" />
                                        </xsl:attribute>
                                    </img></td>
                                    <td rowspan="3"><img id="mainimg">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="concat('./image/',picture1/@file)" />
                                        </xsl:attribute>
                                        <xsl:attribute name="width">
                                            <xsl:value-of select="picture1/@w" />
                                        </xsl:attribute>
                                        <xsl:attribute name="height">
                                            <xsl:value-of select="picture1/@h" />
                                        </xsl:attribute>
                                    </img></td>
                                    <td rowspan="3">
                                        <h2>
                                            <xsl:value-of select="name" />
                                        </h2>
                                        <p>국가: <xsl:value-of select="city/@country" />
                                    </p>
                                    <p>도시: <xsl:value-of select="city" />
                                    </p>
                                    <p>건축가: <xsl:value-of select="buillder" />
                                    </p>
                                    <p>이야기<br/><xsl:value-of select="story" />
                                    </p></td>
                                  </tr>
                                  <tr>
                                    <td><div style="border :1px solid black; padding 10px; text-align:center;" id="subimg">이미지<br/>준비중</div></td>
                                  </tr>
                                  <tr>
                                    <td><div style="border :1px solid black; padding 10px; text-align:center;" id="subimg">이미지<br/>준비중</div></td>
                                    </tr>
                                    </table>
                        </xsl:when>
                        <xsl:otherwise>
                            <table>
                                <tr>
                                    <td><img id="subimg">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="concat('./image/',picture2/@file)" />
                                        </xsl:attribute>
                                        <xsl:attribute name="width">
                                            <xsl:value-of select="picture2/@w" />
                                        </xsl:attribute>
                                        <xsl:attribute name="height">
                                            <xsl:value-of select="picture2/@h" />
                                        </xsl:attribute>
                                    </img></td>
                                    <td rowspan="3"><img id="mainimg">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="concat('./image/',picture1/@file)" />
                                        </xsl:attribute>
                                        <xsl:attribute name="width">
                                            <xsl:value-of select="picture1/@w" />
                                        </xsl:attribute>
                                        <xsl:attribute name="height">
                                            <xsl:value-of select="picture1/@h" />
                                        </xsl:attribute>
                                    </img></td>
                                    <td rowspan="3">
                                        <h2>
                                            <xsl:value-of select="name" />
                                        </h2>
                                        <p>국가: <xsl:value-of select="city/@country" />
                                        </p>
                                        <p>위도: <xsl:value-of select="place/@latitude" />
                                        </p>
                                        <p>경도: <xsl:value-of select="place/@longitude" />
                                        </p>
                                        <p>이야기<br/><xsl:value-of select="story" />
                                        </p></td>
                                  </tr>
                                  <tr>
                                    <td><div style="border :1px solid black; padding 10px; text-align:center;" id="subimg">이미지<br/>준비중</div></td>
                                  </tr>
                                  <tr>
                                    <td><div style="border :1px solid black; padding 10px; text-align:center;" id="subimg">이미지<br/>준비중</div></td>
                                    </tr>
                                </table>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
            </div>
                <hr/>
                <h3>
                    이런 여행지는 어떠세요?
                </h3>
                <div style="white-space:nowrap; overflow:auto;  width:95%; height:400px; margin: 0 auto;">
                    <table id="maintable">
                        <tr>
                    <xsl:for-each select="web/Europe/travel[position()&lt;=4]">
                    <td>
                    <a>
                        <xsl:attribute name="href"><xsl:value-of select="concat('./',name,'.xml')" /></xsl:attribute>
                        <img id="mainimg">
                            <xsl:attribute name="src">
                                <xsl:value-of select="concat('./image/',picture1/@file)" />
                            </xsl:attribute>
                            <xsl:attribute name="width">
                                <xsl:value-of select="picture1/@w" />
                            </xsl:attribute>
                            <xsl:attribute name="height">
                                <xsl:value-of select="picture1/@h" />
                            </xsl:attribute>
                        </img>
                        <br />
                        <h4><xsl:value-of select="name" /></h4>
                        <xsl:value-of select="city" />
                        </a>
                    </td>
                    </xsl:for-each>
                    </tr>
                    </table>
                </div>
                </div>
            </body>
            <footer>
                <div style="float:left;">
                <p align="left"><img src="ui/main.jpg" width="30" height="30"/>©Todos los derechos reservados</p>
                </div>
                <div style="float:right;"><a href="mailto:?subject=유럽여행"><img src="ui/mail.jpg" width="30" height="30"/></a><a href="http://facebook.com"><img src="ui/facebook.jpg" width="30" height="30"/></a><a href="https://twitter.com/" target="_blank"><img src="ui/twitter.jpg" width="30" height="30"/></a><a href="https://www.instagram.com/" target="_blank"><img src="ui/insta.jpg" width="30" height="30"/></a></div>
            </footer>
        </html>
    </xsl:template>
</xsl:stylesheet>