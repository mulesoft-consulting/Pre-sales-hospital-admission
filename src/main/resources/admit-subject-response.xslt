<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" 
xmlns:mes="http://www.mule-health.com/SOA/message/1.0" xmlns:mod="http://www.mule-health.com/SOA/model/1.0" version="2.0" exclude-result-prefixes="xs">
	<xsl:output indent="yes" />
	<xsl:param name="bill"  />
	
	<xsl:template match="/">
		<mes:admitSubjectResponse>
			<xsl:copy-of select="*/mod:Episode" />
			<xsl:value-of select="$bill" />
		</mes:admitSubjectResponse>
	</xsl:template>
</xsl:stylesheet>