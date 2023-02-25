<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <title>ГоссЛаб 1</title>
                <meta charset="UTF-8"/>
                <link rel="stylesheet" type="text/css" href="styles.css"/>
            </head>
            <body>
                <h1>Елфимов Илья</h1>
                <div class="container">
                    <xsl:apply-templates/>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="задание">
        <div class="task">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="матвыр">
        <math>
            <xsl:apply-templates/>
        </math>
    </xsl:template>
    <xsl:template match="строка">
        <mrow>
            <xsl:apply-templates/>
        </mrow>
    </xsl:template>
    <xsl:template match="операнд">
        <mi>
            <xsl:apply-templates/>
        </mi>
    </xsl:template>
    <xsl:template match="оператор">
        <mo>
            <xsl:apply-templates/>
        </mo>
    </xsl:template>
    <xsl:template match="корень">
        <msqrt>
            <xsl:apply-templates/>
        </msqrt>
    </xsl:template>
    <xsl:template match="дробь">
        <mfrac>
            <xsl:apply-templates/>
        </mfrac>
    </xsl:template>
    <xsl:template match="число">
        <mn>
            <xsl:apply-templates/>
        </mn>
    </xsl:template>
    <xsl:template match="низверх">
        <munderover>
            <xsl:apply-templates/>
        </munderover>
    </xsl:template>

    <xsl:template match="верх">
        <msup>
            <xsl:apply-templates/>
        </msup>
    </xsl:template>
    <!--    SVG-->
    <xsl:template match="графика">
        <svg width="{@ширина}" height="{@высота}" xmlns="http://www.w3.org/2000/svg">
            <xsl:apply-templates/>
        </svg>
    </xsl:template>

    <xsl:template match="эллипс">
        <ellipse fill="{@заливка}" stroke="{@ободок}" stroke-width="{@ширина-ободка}" cx="{@cx}" cy="{@cy}"
                 rx="{@rx}" ry="{@ry}"/>
    </xsl:template>
</xsl:stylesheet>
