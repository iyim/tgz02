.class public Lorg/jdom/input/SAXBuilder;
.super Ljava/lang/Object;
.source "SAXBuilder.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: SAXBuilder.java,v $ $Revision: 1.92 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $"

.field private static final DEFAULT_SAX_DRIVER:Ljava/lang/String; = "org.apache.xerces.parsers.SAXParser"

.field static synthetic class$java$util$Map:Ljava/lang/Class;


# instance fields
.field private expand:Z

.field private factory:Lorg/jdom/JDOMFactory;

.field private features:Ljava/util/HashMap;

.field private ignoringBoundaryWhite:Z

.field private ignoringWhite:Z

.field private properties:Ljava/util/HashMap;

.field private reuseParser:Z

.field private saxDTDHandler:Lorg/xml/sax/DTDHandler;

.field private saxDriverClass:Ljava/lang/String;

.field private saxEntityResolver:Lorg/xml/sax/EntityResolver;

.field private saxErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private saxParser:Lorg/xml/sax/XMLReader;

.field private saxXMLFilter:Lorg/xml/sax/XMLFilter;

.field private validate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, v0}, Lorg/jdom/input/SAXBuilder;-><init>(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p1, v0}, Lorg/jdom/input/SAXBuilder;-><init>(Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 114
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 117
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 120
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 123
    new-instance v2, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v2}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    iput-object v2, p0, Lorg/jdom/input/SAXBuilder;->factory:Lorg/jdom/JDOMFactory;

    const/4 v2, 0x0

    .line 126
    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->ignoringWhite:Z

    .line 129
    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->ignoringBoundaryWhite:Z

    .line 132
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    .line 135
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    .line 141
    iput-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->reuseParser:Z

    .line 144
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxParser:Lorg/xml/sax/XMLReader;

    .line 190
    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->saxDriverClass:Ljava/lang/String;

    .line 191
    iput-boolean p2, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 114
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 117
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 120
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 123
    new-instance v2, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v2}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    iput-object v2, p0, Lorg/jdom/input/SAXBuilder;->factory:Lorg/jdom/JDOMFactory;

    const/4 v2, 0x0

    .line 126
    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->ignoringWhite:Z

    .line 129
    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->ignoringBoundaryWhite:Z

    .line 132
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    .line 135
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    .line 141
    iput-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->reuseParser:Z

    .line 144
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxParser:Lorg/xml/sax/XMLReader;

    .line 165
    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 582
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fileToURL(Ljava/io/File;)Ljava/net/URL;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 961
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 962
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 965
    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    .line 966
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "/"

    .line 970
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 971
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 975
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_c

    .line 977
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    const-string v6, "%20"

    .line 979
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const/16 v7, 0x23

    if-ne v6, v7, :cond_3

    const-string v6, "%23"

    .line 981
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/16 v7, 0x25

    if-ne v6, v7, :cond_4

    const-string v6, "%25"

    .line 983
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const/16 v7, 0x26

    if-ne v6, v7, :cond_5

    const-string v6, "%26"

    .line 985
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const/16 v7, 0x3b

    if-ne v6, v7, :cond_6

    const-string v6, "%3B"

    .line 987
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    const/16 v7, 0x3c

    if-ne v6, v7, :cond_7

    const-string v6, "%3C"

    .line 989
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    const/16 v7, 0x3d

    if-ne v6, v7, :cond_8

    const-string v6, "%3D"

    .line 991
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_8
    const/16 v7, 0x3e

    if-ne v6, v7, :cond_9

    const-string v6, "%3E"

    .line 993
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_9
    const/16 v7, 0x3f

    if-ne v6, v7, :cond_a

    const-string v6, "%3F"

    .line 995
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_a
    const/16 v7, 0x7e

    if-ne v6, v7, :cond_b

    const-string v6, "%7E"

    .line 997
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 999
    :cond_b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1003
    :cond_c
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 1004
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1008
    :cond_d
    new-instance p0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    const-string v2, ""

    invoke-direct {p0, v1, v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 764
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 769
    :catch_0
    new-instance p2, Lorg/jdom/JDOMException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, " feature not recognized for SAX driver "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 766
    :catch_1
    new-instance p2, Lorg/jdom/JDOMException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, " feature not supported for SAX driver "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private internalSetProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 783
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 788
    :catch_0
    new-instance p2, Lorg/jdom/JDOMException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, " property not recognized for SAX driver "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 785
    :catch_1
    new-instance p2, Lorg/jdom/JDOMException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, " property not supported for SAX driver "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private setFeaturesAndProperties(Lorg/xml/sax/XMLReader;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/features/external-general-entities"

    .line 704
    iget-object v1, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 705
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 706
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 707
    iget-object v3, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 708
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, p1, v2, v3, v2}, Lorg/jdom/input/SAXBuilder;->internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 712
    :cond_0
    iget-object v1, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 713
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 714
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 715
    iget-object v3, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3, v2}, Lorg/jdom/input/SAXBuilder;->internalSetProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    :try_start_0
    const-string p2, "http://xml.org/sax/features/validation"

    .line 721
    iget-boolean v1, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    const-string v2, "Validation"

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/jdom/input/SAXBuilder;->internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 728
    iget-boolean v1, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    if-nez v1, :cond_2

    :goto_2
    const/4 p2, 0x1

    const-string v1, "http://xml.org/sax/features/namespaces"

    const-string v2, "Namespaces"

    .line 733
    invoke-direct {p0, p1, v1, p2, v2}, Lorg/jdom/input/SAXBuilder;->internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    const-string v2, "Namespace prefixes"

    .line 736
    invoke-direct {p0, p1, v1, p2, v2}, Lorg/jdom/input/SAXBuilder;->internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_3

    .line 729
    :cond_2
    throw p2

    .line 749
    :cond_3
    :goto_3
    :try_start_1
    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result p2

    iget-boolean v1, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    if-eq p2, v1, :cond_4

    .line 750
    iget-boolean p2, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    invoke-interface {p1, v0, p2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    return-void
.end method


# virtual methods
.method public build(Ljava/io/File;)Lorg/jdom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 825
    :try_start_0
    invoke-static {p1}, Lorg/jdom/input/SAXBuilder;->fileToURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object p1

    .line 826
    invoke-virtual {p0, p1}, Lorg/jdom/input/SAXBuilder;->build(Ljava/net/URL;)Lorg/jdom/Document;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 828
    new-instance v0, Lorg/jdom/JDOMException;

    const-string v1, "Error in building"

    invoke-direct {v0, v1, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public build(Ljava/io/InputStream;)Lorg/jdom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/io/InputStream;Ljava/lang/String;)Lorg/jdom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 867
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/io/Reader;)Lorg/jdom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 888
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/io/Reader;Ljava/lang/String;)Lorg/jdom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 910
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 911
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/lang/String;)Lorg/jdom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 928
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/net/URL;)Lorg/jdom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 846
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    .line 847
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object p1

    return-object p1
.end method

.method public build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 454
    :try_start_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXBuilder;->createContentHandler()Lorg/jdom/input/SAXHandler;

    move-result-object v1
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/jdom/input/SAXBuilder;->configureContentHandler(Lorg/jdom/input/SAXHandler;)V

    .line 457
    iget-object v2, p0, Lorg/jdom/input/SAXBuilder;->saxParser:Lorg/xml/sax/XMLReader;

    if-nez v2, :cond_2

    .line 460
    invoke-virtual {p0}, Lorg/jdom/input/SAXBuilder;->createParser()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 463
    iget-object v3, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    if-eqz v3, :cond_1

    .line 465
    iget-object v3, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 466
    :goto_0
    invoke-interface {v3}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v4

    instance-of v4, v4, Lorg/xml/sax/XMLFilter;

    if-eqz v4, :cond_0

    .line 467
    invoke-interface {v3}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v3

    check-cast v3, Lorg/xml/sax/XMLFilter;

    goto :goto_0

    .line 469
    :cond_0
    invoke-interface {v3, v2}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 472
    iget-object v2, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 476
    :cond_1
    invoke-virtual {p0, v2, v1}, Lorg/jdom/input/SAXBuilder;->configureParser(Lorg/xml/sax/XMLReader;Lorg/jdom/input/SAXHandler;)V

    .line 478
    iget-boolean v3, p0, Lorg/jdom/input/SAXBuilder;->reuseParser:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 479
    iput-object v2, p0, Lorg/jdom/input/SAXBuilder;->saxParser:Lorg/xml/sax/XMLReader;

    goto :goto_1

    .line 485
    :cond_2
    invoke-virtual {p0, v2, v1}, Lorg/jdom/input/SAXBuilder;->configureParser(Lorg/xml/sax/XMLReader;Lorg/jdom/input/SAXHandler;)V

    .line 489
    :cond_3
    :goto_1
    invoke-interface {v2, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 491
    invoke-virtual {v1}, Lorg/jdom/input/SAXHandler;->getDocument()Lorg/jdom/Document;

    move-result-object p1
    :try_end_1
    .catch Lorg/xml/sax/SAXParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v1, v0

    .line 509
    :goto_2
    :try_start_2
    new-instance v0, Lorg/jdom/input/JDOMParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error in building: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jdom/input/SAXHandler;->getDocument()Lorg/jdom/Document;

    move-result-object v1

    invoke-direct {v0, v2, p1, v1}, Lorg/jdom/input/JDOMParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom/Document;)V

    throw v0

    :catch_3
    move-exception p1

    move-object v1, v0

    .line 494
    :goto_3
    invoke-virtual {v1}, Lorg/jdom/input/SAXHandler;->getDocument()Lorg/jdom/Document;

    move-result-object v1

    .line 495
    invoke-virtual {v1}, Lorg/jdom/Document;->hasRootElement()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    move-object v0, v1

    .line 499
    :goto_4
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "Error on line "

    if-eqz v1, :cond_5

    .line 501
    :try_start_3
    new-instance v3, Lorg/jdom/input/JDOMParseException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " of document "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, p1, v0}, Lorg/jdom/input/JDOMParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom/Document;)V

    throw v3

    .line 504
    :cond_5
    new-instance v1, Lorg/jdom/input/JDOMParseException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lorg/jdom/input/JDOMParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom/Document;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 516
    :goto_5
    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method protected configureContentHandler(Lorg/jdom/input/SAXHandler;)V
    .locals 1

    .line 540
    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    invoke-virtual {p1, v0}, Lorg/jdom/input/SAXHandler;->setExpandEntities(Z)V

    .line 541
    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->ignoringWhite:Z

    invoke-virtual {p1, v0}, Lorg/jdom/input/SAXHandler;->setIgnoringElementContentWhitespace(Z)V

    .line 542
    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->ignoringBoundaryWhite:Z

    invoke-virtual {p1, v0}, Lorg/jdom/input/SAXHandler;->setIgnoringBoundaryWhitespace(Z)V

    return-void
.end method

.method protected configureParser(Lorg/xml/sax/XMLReader;Lorg/jdom/input/SAXHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 642
    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 644
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v0, :cond_0

    .line 645
    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 648
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_1

    .line 649
    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    goto :goto_0

    .line 651
    :cond_1
    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 654
    :goto_0
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_2

    .line 655
    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_1

    .line 657
    :cond_2
    new-instance v0, Lorg/jdom/input/BuilderErrorHandler;

    invoke-direct {v0}, Lorg/jdom/input/BuilderErrorHandler;-><init>()V

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "http://xml.org/sax/handlers/LexicalHandler"

    .line 663
    invoke-interface {p1, v1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    if-nez v0, :cond_3

    :try_start_1
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    .line 675
    invoke-interface {p1, v0, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 687
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    if-nez v0, :cond_4

    :try_start_2
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    .line 689
    invoke-interface {p1, v0, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_4
    return-void
.end method

.method protected createContentHandler()Lorg/jdom/input/SAXHandler;
    .locals 2

    .line 526
    new-instance v0, Lorg/jdom/input/SAXHandler;

    iget-object v1, p0, Lorg/jdom/input/SAXBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-direct {v0, v1}, Lorg/jdom/input/SAXHandler;-><init>(Lorg/jdom/JDOMFactory;)V

    return-object v0
.end method

.method protected createParser()Lorg/xml/sax/XMLReader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxDriverClass:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 562
    :try_start_0
    invoke-static {v0}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 565
    invoke-direct {p0, v0, v1}, Lorg/jdom/input/SAXBuilder;->setFeaturesAndProperties(Lorg/xml/sax/XMLReader;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 568
    new-instance v1, Lorg/jdom/JDOMException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/jdom/input/SAXBuilder;->saxDriverClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    const-string v2, "org.jdom.input.JAXPParserFactory"

    .line 577
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "createParser"

    const/4 v4, 0x3

    .line 580
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lorg/jdom/input/SAXBuilder;->class$java$util$Map:Ljava/lang/Class;
    :try_end_1
    .catch Lorg/jdom/JDOMException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v8, "java.util.Map"

    if-nez v6, :cond_1

    :try_start_2
    invoke-static {v8}, Lorg/jdom/input/SAXBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/jdom/input/SAXBuilder;->class$java$util$Map:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v6, Lorg/jdom/input/SAXBuilder;->class$java$util$Map:Ljava/lang/Class;

    :goto_0
    aput-object v6, v5, v1

    sget-object v6, Lorg/jdom/input/SAXBuilder;->class$java$util$Map:Ljava/lang/Class;

    if-nez v6, :cond_2

    invoke-static {v8}, Lorg/jdom/input/SAXBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/jdom/input/SAXBuilder;->class$java$util$Map:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    sget-object v6, Lorg/jdom/input/SAXBuilder;->class$java$util$Map:Ljava/lang/Class;

    :goto_1
    const/4 v8, 0x2

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 585
    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v7

    iget-object v4, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    aput-object v4, v3, v1

    iget-object v4, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    aput-object v4, v3, v8

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xml/sax/XMLReader;
    :try_end_2
    .catch Lorg/jdom/JDOMException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 590
    :try_start_3
    invoke-direct {p0, v2, v7}, Lorg/jdom/input/SAXBuilder;->setFeaturesAndProperties(Lorg/xml/sax/XMLReader;Z)V
    :try_end_3
    .catch Lorg/jdom/JDOMException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-object v0, v2

    goto :goto_2

    :catch_2
    nop

    :goto_2
    if-nez v0, :cond_3

    :try_start_4
    const-string v0, "org.apache.xerces.parsers.SAXParser"

    .line 610
    invoke-static {v0}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 612
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jdom/input/SAXBuilder;->saxDriverClass:Ljava/lang/String;

    .line 615
    invoke-direct {p0, v0, v1}, Lorg/jdom/input/SAXBuilder;->setFeaturesAndProperties(Lorg/xml/sax/XMLReader;Z)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 618
    new-instance v1, Lorg/jdom/JDOMException;

    const-string v2, "Could not load default SAX parser: org.apache.xerces.parsers.SAXParser"

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :goto_3
    return-object v0

    :catch_4
    move-exception v0

    .line 593
    throw v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getDriverClass()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxDriverClass:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getExpandEntities()Z
    .locals 1

    .line 1018
    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    return v0
.end method

.method public getFactory()Lorg/jdom/JDOMFactory;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->factory:Lorg/jdom/JDOMFactory;

    return-object v0
.end method

.method public getIgnoringBoundaryWhitespace()Z
    .locals 1

    .line 347
    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->ignoringBoundaryWhite:Z

    return v0
.end method

.method public getIgnoringElementContentWhitespace()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->ignoringWhite:Z

    return v0
.end method

.method public getReuseParser()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->reuseParser:Z

    return v0
.end method

.method public getValidation()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    return v0
.end method

.method public getXMLFilter()Lorg/xml/sax/XMLFilter;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    return-object v0
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public setExpandEntities(Z)V
    .locals 0

    .line 1045
    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    return-void
.end method

.method public setFactory(Lorg/jdom/JDOMFactory;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->factory:Lorg/jdom/JDOMFactory;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2

    .line 415
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIgnoringBoundaryWhitespace(Z)V
    .locals 0

    .line 367
    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->ignoringBoundaryWhite:Z

    return-void
.end method

.method public setIgnoringElementContentWhitespace(Z)V
    .locals 0

    .line 334
    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->ignoringWhite:Z

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setReuseParser(Z)V
    .locals 0

    .line 394
    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->reuseParser:Z

    const/4 p1, 0x0

    .line 395
    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->saxParser:Lorg/xml/sax/XMLReader;

    return-void
.end method

.method public setValidation(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    return-void
.end method

.method public setXMLFilter(Lorg/xml/sax/XMLFilter;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    return-void
.end method
