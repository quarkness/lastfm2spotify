<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
<xsl:template match="rss"><xsl:apply-templates select="//item"/></xsl:template>
<xsl:template match="item">
	<xsl:value-of select="title"/><xsl:text>
</xsl:text>
</xsl:template>
</xsl:stylesheet>