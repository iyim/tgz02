.class public abstract Lorg/jdom/adapters/AbstractDOMAdapter;
.super Ljava/lang/Object;
.source "AbstractDOMAdapter.java"

# interfaces
.implements Lorg/jdom/adapters/DOMAdapter;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: AbstractDOMAdapter.java,v $ $Revision: 1.21 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"

.field static synthetic class$java$lang$String:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 165
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
.method public abstract createDocument()Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation
.end method

.method public createDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/jdom/adapters/AbstractDOMAdapter;->createDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/adapters/AbstractDOMAdapter;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    .line 134
    invoke-virtual {p1}, Lorg/jdom/DocType;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jdom/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jdom/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/DOMImplementation;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v1

    .line 140
    invoke-virtual {p1}, Lorg/jdom/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/jdom/adapters/AbstractDOMAdapter;->setInternalSubset(Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lorg/jdom/DocType;->getElementName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "http://temporary"

    invoke-interface {v0, v2, p1, v1}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1
.end method

.method public getDocument(Ljava/io/File;Z)Lorg/w3c/dom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/jdom/adapters/AbstractDOMAdapter;->getDocument(Ljava/io/InputStream;Z)Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1
.end method

.method public abstract getDocument(Ljava/io/InputStream;Z)Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jdom/JDOMException;
        }
    .end annotation
.end method

.method protected setInternalSubset(Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setInternalSubset"

    const/4 v2, 0x1

    .line 164
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Lorg/jdom/adapters/AbstractDOMAdapter;->class$java$lang$String:Ljava/lang/Class;

    if-nez v4, :cond_1

    const-string v4, "java.lang.String"

    invoke-static {v4}, Lorg/jdom/adapters/AbstractDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/jdom/adapters/AbstractDOMAdapter;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v4, Lorg/jdom/adapters/AbstractDOMAdapter;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 166
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method
