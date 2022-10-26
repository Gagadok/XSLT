<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" encoding="utf-8"/>
  <xsl:strip-space elements="*"/>

  <xsl:template match="Objects">
    <xsl:copy>
      <xsl:for-each select="Object">
        <xsl:sort select="@ID" data-type="number"/>
          <xsl:if test="(@ID mod 2) != 1">
            <xsl:copy-of select="." />
          </xsl:if>
      </xsl:for-each>
    </xsl:copy>
  </xsl:template>
  
</xsl:stylesheet>