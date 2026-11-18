.class public Lorg/jdom/adapters/XercesDOMAdapter;
.super Lorg/jdom/adapters/AbstractDOMAdapter;
.source "XercesDOMAdapter.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: XercesDOMAdapter.java,v $ $Revision: 1.19 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"

.field static synthetic class$java$lang$String:Ljava/lang/Class;

.field static synthetic class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

.field static synthetic class$org$xml$sax$InputSource:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lorg/jdom/adapters/AbstractDOMAdapter;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 103
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


# virtual methods
.method public createDocument()Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    :try_start_0
    const-string v0, "org.apache.xerces.dom.DocumentImpl"

    .line 163
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Lorg/jdom/JDOMException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " when creating document"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDocument(Ljava/io/InputStream;Z)Lorg/w3c/dom/Document;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jdom/JDOMException;
        }
    .end annotation

    :try_start_0
    const-string v0, "org.apache.xerces.parsers.DOMParser"

    .line 96
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setFeature"

    const/4 v3, 0x2

    .line 101
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Lorg/jdom/adapters/XercesDOMAdapter;->class$java$lang$String:Ljava/lang/Class;

    if-nez v5, :cond_0

    const-string v5, "java.lang.String"

    invoke-static {v5}, Lorg/jdom/adapters/XercesDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/jdom/adapters/XercesDOMAdapter;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v5, Lorg/jdom/adapters/XercesDOMAdapter;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 104
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "http://xml.org/sax/features/validation"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "http://xml.org/sax/features/namespaces"

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    const-string p2, "setErrorHandler"

    .line 115
    new-array v2, v7, [Ljava/lang/Class;

    sget-object v3, Lorg/jdom/adapters/XercesDOMAdapter;->class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "org.xml.sax.ErrorHandler"

    invoke-static {v3}, Lorg/jdom/adapters/XercesDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/jdom/adapters/XercesDOMAdapter;->class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    sget-object v3, Lorg/jdom/adapters/XercesDOMAdapter;->class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

    :goto_1
    aput-object v3, v2, v6

    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 118
    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Lorg/jdom/input/BuilderErrorHandler;

    invoke-direct {v3}, Lorg/jdom/input/BuilderErrorHandler;-><init>()V

    aput-object v3, v2, v6

    invoke-virtual {p2, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, "parse"

    .line 123
    new-array v2, v7, [Ljava/lang/Class;

    sget-object v3, Lorg/jdom/adapters/XercesDOMAdapter;->class$org$xml$sax$InputSource:Ljava/lang/Class;

    if-nez v3, :cond_3

    const-string v3, "org.xml.sax.InputSource"

    invoke-static {v3}, Lorg/jdom/adapters/XercesDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/jdom/adapters/XercesDOMAdapter;->class$org$xml$sax$InputSource:Ljava/lang/Class;

    goto :goto_2

    :cond_3
    sget-object v3, Lorg/jdom/adapters/XercesDOMAdapter;->class$org$xml$sax$InputSource:Ljava/lang/Class;

    :goto_2
    aput-object v3, v2, v6

    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 126
    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    aput-object v3, v2, v6

    invoke-virtual {p2, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "getDocument"

    const/4 p2, 0x0

    .line 129
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 130
    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 149
    new-instance p2, Lorg/jdom/JDOMException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p2

    .line 135
    instance-of v0, p2, Lorg/xml/sax/SAXParseException;

    if-nez v0, :cond_5

    .line 142
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_4

    .line 143
    nop

    nop

    .line 144
    throw p2

    .line 146
    :cond_4
    new-instance v0, Lorg/jdom/JDOMException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 136
    :cond_5
    nop

    nop

    .line 138
    new-instance v0, Lorg/jdom/JDOMException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " of XML document: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
