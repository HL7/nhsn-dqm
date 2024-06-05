<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" 
    xmlns="http://hl7.org/fhir" 
    xmlns:fn="http://example.org/functions" 
    xmlns:fhir="http://hl7.org/fhir" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="fhir fn xsl">
    
    <xsl:mode on-no-match="shallow-copy" />
    
    <xsl:output indent="yes" method="xml" encoding="UTF-8"/>
    
    <xsl:template match="fhir:Measure/fhir:group/fhir:population[not(@id)]">
        <xsl:copy>
            <xsl:attribute name="id" select="generate-id()"></xsl:attribute>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="fhir:Measure/fhir:group/fhir:code/fhir:coding">
        <coding>
            <xsl:if test="not(fhir:system)">
                <system value="http://hl7.org/fhir/us/nhsn-dqm/CodeSystem/healthcare-capacity-codes"/>
            </xsl:if>
            <xsl:apply-templates></xsl:apply-templates>
        </coding>
    </xsl:template>
    
    <xsl:template match="fhir:Measure/fhir:group/fhir:code/fhir:coding/fhir:code">
        <code value="{fn:fix-code(@value)}"/>
    </xsl:template>
    
    <xsl:function name="fn:fix-code">
        <xsl:param name="code"></xsl:param>
        <xsl:variable name="renamed-code" select="fn:rename-parts($code)" as="xs:string"/>
        <xsl:value-of select="fn:initial-caps-no-spaces($renamed-code)"/>
    </xsl:function>
    
    
    <xsl:function name="fn:rename-parts" as="xs:string">
        <xsl:param name="code" as="xs:string"></xsl:param>
        <xsl:variable name="fixed-code">
            <xsl:choose>
                
                <xsl:when test="contains($code,'nonicu')">
                    <xsl:value-of select="replace($code,'nonicu','NonICU')"/>
                </xsl:when>
                <xsl:when test="contains($code,'nicu1')">
                    <xsl:value-of select="replace($code,'nicu1','NICU1')"/>
                </xsl:when>
                <xsl:when test="contains($code,'nicu2')">
                    <xsl:value-of select="replace($code,'nicu2','NICU2')"/>
                </xsl:when>
                <xsl:when test="contains($code,'nicu3')">
                    <xsl:value-of select="replace($code,'nicu3','NICU3')"/>
                </xsl:when>
                <xsl:when test="contains($code,'nicu4')">
                    <xsl:value-of select="replace($code,'nicu4','NICU4')"/>
                </xsl:when>
                <xsl:when test="contains($code,'nicu')">
                    <xsl:value-of select="replace($code,'nicu','NICU')"/>
                </xsl:when>
                <xsl:when test="contains($code,'icu beds')">
                    <xsl:value-of select="replace($code,'icu beds','ICU')"/>
                </xsl:when>
                <xsl:when test="contains($code,'iculoc beds')">
                    <xsl:value-of select="replace($code,'iculoc beds','ICU_LOC')"/>
                </xsl:when>
                <xsl:when test="contains($code,'iculoc')">
                    <xsl:value-of select="replace($code,'iculoc','ICU_LOC')"/>
                </xsl:when>
                <xsl:when test="contains($code,'iculoc')">
                    <xsl:value-of select="replace($code,'iculoc','ICU_LOC')"/>
                </xsl:when>
                <xsl:when test="contains($code,'icu')">
                    <xsl:value-of select="replace($code,'icu','ICU')"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$code"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="$code != $fixed-code">
                <xsl:value-of select="fn:rename-parts($fixed-code)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$code"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>
    
    
    <xsl:function name="fn:initial-caps-no-spaces">
        <xsl:param name="code-part" as="xs:string"></xsl:param>
        <xsl:variable name="first-char" select="upper-case(substring($code-part,1,1))"/>
        <xsl:variable name="the-rest" select="substring($code-part,2)"/>
        <xsl:variable name="code-part-initial-caps" select="concat($first-char,$the-rest)"/>
        <xsl:choose>
            <xsl:when test="contains($code-part-initial-caps,' ')">
                <xsl:variable name="first-part" select="substring-before($code-part-initial-caps,' ')"/>
                <xsl:variable name="second-part" select="fn:initial-caps-no-spaces(substring-after($code-part-initial-caps,' '))"/>
                <xsl:value-of select="concat($first-part,$second-part)"/>
            </xsl:when>
            <xsl:otherwise><xsl:value-of select="$code-part-initial-caps"/></xsl:otherwise>
        </xsl:choose>
    </xsl:function>
    
    
    
</xsl:stylesheet>
