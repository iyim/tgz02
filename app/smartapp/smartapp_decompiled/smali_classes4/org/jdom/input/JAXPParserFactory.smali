.class Lorg/jdom/input/JAXPParserFactory;
.super Ljava/lang/Object;
.source "JAXPParserFactory.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JAXPParserFactory.java,v $ $Revision: 1.6 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $"

.field private static final JAXP_SCHEMA_LANGUAGE_PROPERTY:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field private static final JAXP_SCHEMA_LOCATION_PROPERTY:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static createParser(ZLjava/util/Map;Ljava/util/Map;)Lorg/xml/sax/XMLReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    const-string p1, "Could not allocate JAXP SAX Parser"

    .line 125
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    const/4 p0, 0x1

    .line 127
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :try_start_1
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p0
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 138
    invoke-static {p0, p2, v0}, Lorg/jdom/input/JAXPParserFactory;->setProperty(Ljavax/xml/parsers/SAXParser;Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 139
    invoke-static {p0, p2, v0}, Lorg/jdom/input/JAXPParserFactory;->setProperty(Ljavax/xml/parsers/SAXParser;Ljava/util/Map;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 134
    new-instance p2, Lorg/jdom/JDOMException;

    invoke-direct {p2, p1, p0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 145
    new-instance p2, Lorg/jdom/JDOMException;

    invoke-direct {p2, p1, p0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static setProperty(Ljavax/xml/parsers/SAXParser;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 163
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljavax/xml/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 173
    :catch_0
    new-instance p1, Lorg/jdom/JDOMException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " property not recognized for JAXP parser "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :catch_1
    new-instance p1, Lorg/jdom/JDOMException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " property not supported for JAXP parser "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
