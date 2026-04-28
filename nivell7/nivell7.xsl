<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
  <body>

    <xsl:for-each select="/biblioteca/llibre">
      <p class="{@estat}">
        <xsl:value-of select="titol"/>
      </p>
    </xsl:for-each>

    <p>Total de llibres: <xsl:value-of select="count(/biblioteca/llibre)"/></p>

    <p>Preu mitjà: ampliació</p>

  </body>
</html>
</xsl:template>

</xsl:stylesheet>
