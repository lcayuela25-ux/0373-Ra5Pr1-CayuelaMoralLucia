<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
  <body>

    <xsl:for-each select="/biblioteca/llibre[@estat='disponible']">
      <p><xsl:value-of select="titol"/></p>
    </xsl:for-each>

    <xsl:for-each select="/biblioteca/llibre[preu > 12]">
      <p><xsl:value-of select="titol"/></p>
    </xsl:for-each>

    <xsl:for-each select="/biblioteca/llibre">
      <p>
        <xsl:value-of select="titol"/>
        <xsl:if test="any &lt; 1980"> - Llibre antic</xsl:if>
      </p>
    </xsl:for-each>

    <xsl:for-each select="/biblioteca/llibre">
      <p>
        <xsl:value-of select="titol"/>
        -
        <xsl:choose>
          <xsl:when test="@estat='prestat'">En préstec</xsl:when>
          <xsl:otherwise>Disponible</xsl:otherwise>
        </xsl:choose>
      </p>
    </xsl:for-each>

    <xsl:for-each select="/biblioteca/llibre[genere='fantasia' or genere='distopia']">
      <p><xsl:value-of select="titol"/></p>
    </xsl:for-each>

  </body>
</html>
</xsl:template>

</xsl:stylesheet>
