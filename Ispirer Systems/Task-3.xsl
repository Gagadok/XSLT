<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" encoding="utf-8"/>
  <xsl:strip-space elements="*"/>

  <xsl:key name="srcFunction" match="//Function" use="@Name"/>
  <xsl:key name="srcProcedure" match="//Procedure" use="@Name"/>

  <xsl:template match="/">
    <root>
      <Functions>
        <xsl:comment>Список из функций с одинаковыми именами</xsl:comment>
        <xsl:for-each select="//Function/@Name">
          <xsl:if test="count(key('srcFunction', ../@Name)) &gt; 1">
            <xsl:copy-of select="key('srcFunction', ../@Name)" />
          </xsl:if>
        </xsl:for-each>
      </Functions>
      <Procedures>
        <xsl:comment>Список из процедур с одинаковыми именами</xsl:comment>
        <xsl:for-each select="//Procedure/@Name">
          <xsl:if test="count(key('srcProcedure', ../@Name)) &gt; 1">
            <xsl:copy-of select="key('srcProcedure', ../@Name)" />
          </xsl:if>
        </xsl:for-each>
      </Procedures>
    </root>
  </xsl:template>

</xsl:stylesheet>