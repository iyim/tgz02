.class public Lorg/jdom/adapters/JAXPDOMAdapter;
.super Lorg/jdom/adapters/AbstractDOMAdapter;
.source "JAXPDOMAdapter.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JAXPDOMAdapter.java,v $ $Revision: 1.13 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"

.field static synthetic class$java$io$InputStream:Ljava/lang/Class;

.field static synthetic class$org$xml$sax$ErrorHandler:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lorg/jdom/adapters/AbstractDOMAdapter;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 129
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
    const-string v0, "javax.xml.transform.Transformer"

    .line 167
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "javax.xml.parsers.DocumentBuilderFactory"

    .line 170
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "newInstance"

    const/4 v2, 0x0

    .line 174
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 176
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "newDocumentBuilder"

    .line 179
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 181
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "newDocument"

    .line 185
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 186
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 191
    new-instance v1, Lorg/jdom/JDOMException;

    const-string v2, "Reflection failed while creating new JAXP document"

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
    const-string v0, "javax.xml.transform.Transformer"

    .line 95
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "javax.xml.parsers.DocumentBuilderFactory"

    .line 98
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "newInstance"

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "setValidating"

    const/4 v4, 0x1

    .line 107
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 110
    new-array v5, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v5, v7

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "setNamespaceAware"

    .line 114
    new-array v3, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v7

    invoke-virtual {v0, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 117
    new-array v3, v4, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v7

    invoke-virtual {p2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "newDocumentBuilder"

    .line 121
    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 123
    invoke-virtual {p2, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 126
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setErrorHandler"

    .line 127
    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Lorg/jdom/adapters/JAXPDOMAdapter;->class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "org.xml.sax.ErrorHandler"

    invoke-static {v3}, Lorg/jdom/adapters/JAXPDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/jdom/adapters/JAXPDOMAdapter;->class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/jdom/adapters/JAXPDOMAdapter;->class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

    :goto_0
    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 130
    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Lorg/jdom/input/BuilderErrorHandler;

    invoke-direct {v3}, Lorg/jdom/input/BuilderErrorHandler;-><init>()V

    aput-object v3, v2, v7

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "parse"

    .line 134
    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Lorg/jdom/adapters/JAXPDOMAdapter;->class$java$io$InputStream:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "java.io.InputStream"

    invoke-static {v3}, Lorg/jdom/adapters/JAXPDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/jdom/adapters/JAXPDOMAdapter;->class$java$io$InputStream:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    sget-object v3, Lorg/jdom/adapters/JAXPDOMAdapter;->class$java$io$InputStream:Ljava/lang/Class;

    :goto_1
    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 136
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v7

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 148
    new-instance p2, Lorg/jdom/JDOMException;

    const-string v0, "Reflection failed while parsing a document with JAXP"

    invoke-direct {p2, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    .line 142
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_2

    .line 143
    nop

    nop

    throw p1

    .line 145
    :cond_2
    new-instance p2, Lorg/jdom/JDOMException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
