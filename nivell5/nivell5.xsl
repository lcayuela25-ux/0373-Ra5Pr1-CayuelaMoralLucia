<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
  <body>

    <xsl:for-each select="/biblioteca/llibre">
      <xsl:sort select="any"/>
      <p><xsl:value-of select="titol"/></p>
    </xsl:for-each>

    <xsl:for-each select="/biblioteca/llibre">
      <xsl:sort select="titol"/>
      <p><xsl:value-of select="titol"/></p>
    </xsl:for-each>

    <xsl:for-each select="/biblioteca/llibre">
      <xsl:sort select="preu" data-type="number" order="descending"/>
      <p><xsl:value-of select="titol"/></p>
    </xsl:for-each>

    <table border="1">
      <tr>
        <th>Títol</th>
        <th>Any</th>
      </tr>

      <xsl:for-each select="/biblioteca/llibre">
        <xsl:sort select="any"/>
        <tr>
          <td><xsl:value-of select="titol"/></td>
          <td><xsl:value-of select="any"/></td>
        </tr>
      </xsl:for-each>
    </table>

    <xsl:for-each select="/biblioteca/llibre[@estat='disponible']">
      <xsl:sort select="titol"/>
      <p><xsl:value-of select="titol"/></p>
    </xsl:for-each>

  </body>
</html>
</xsl:template>

</xsl:stylesheet>
