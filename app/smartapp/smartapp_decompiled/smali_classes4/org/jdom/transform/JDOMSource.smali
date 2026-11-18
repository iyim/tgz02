.class public Lorg/jdom/transform/JDOMSource;
.super Ljavax/xml/transform/sax/SAXSource;
.source "JDOMSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/transform/JDOMSource$DocumentReader;,
        Lorg/jdom/transform/JDOMSource$JDOMInputSource;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JDOMSource.java,v $ $Revision: 1.20 $ $Date: 2007/11/10 05:29:02 $ $Name: jdom_1_1 $"

.field public static final JDOM_FEATURE:Ljava/lang/String; = "http://org.jdom.transform.JDOMSource/feature"


# instance fields
.field private resolver:Lorg/xml/sax/EntityResolver;

.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 135
    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    .line 160
    invoke-virtual {p0, p1}, Lorg/jdom/transform/JDOMSource;->setNodes(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom/Document;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 135
    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    .line 147
    invoke-virtual {p0, p1}, Lorg/jdom/transform/JDOMSource;->setDocument(Lorg/jdom/Document;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdom/Document;Lorg/xml/sax/EntityResolver;)V
    .locals 1

    .line 192
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 135
    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    .line 193
    invoke-virtual {p0, p1}, Lorg/jdom/transform/JDOMSource;->setDocument(Lorg/jdom/Document;)V

    .line 194
    iput-object p2, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;)V
    .locals 1

    .line 172
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 135
    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {p0, v0}, Lorg/jdom/transform/JDOMSource;->setNodes(Ljava/util/List;)V

    return-void
.end method

.method private buildDocumentReader()Lorg/xml/sax/XMLReader;
    .locals 2

    .line 346
    new-instance v0, Lorg/jdom/transform/JDOMSource$DocumentReader;

    invoke-direct {v0}, Lorg/jdom/transform/JDOMSource$DocumentReader;-><init>()V

    .line 347
    iget-object v1, p0, Lorg/jdom/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {v0, v1}, Lorg/jdom/transform/JDOMSource$DocumentReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getDocument()Lorg/jdom/Document;
    .locals 2

    .line 221
    invoke-virtual {p0}, Lorg/jdom/transform/JDOMSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    check-cast v0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    invoke-virtual {v0}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->getSource()Ljava/lang/Object;

    move-result-object v0

    .line 224
    instance-of v1, v0, Lorg/jdom/Document;

    if-eqz v1, :cond_0

    .line 225
    nop

    nop

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNodes()Ljava/util/List;
    .locals 2

    .line 254
    invoke-virtual {p0}, Lorg/jdom/transform/JDOMSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    check-cast v0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    invoke-virtual {v0}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->getSource()Ljava/lang/Object;

    move-result-object v0

    .line 257
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 258
    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_0

    .line 332
    invoke-direct {p0}, Lorg/jdom/transform/JDOMSource;->buildDocumentReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 334
    :cond_0
    iget-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setDocument(Lorg/jdom/Document;)V
    .locals 1

    .line 209
    new-instance v0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    invoke-direct {v0, p1}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;-><init>(Lorg/jdom/Document;)V

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 282
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setNodes(Ljava/util/List;)V
    .locals 1

    .line 242
    new-instance v0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    invoke-direct {v0, p1}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;-><init>(Ljava/util/List;)V

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 304
    instance-of v0, p1, Lorg/xml/sax/XMLFilter;

    if-eqz v0, :cond_1

    .line 306
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/XMLFilter;

    .line 307
    :goto_0
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    instance-of v1, v1, Lorg/xml/sax/XMLFilter;

    if-eqz v1, :cond_0

    .line 308
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/XMLFilter;

    nop

    nop

    goto :goto_0

    .line 310
    :cond_0
    invoke-direct {p0}, Lorg/jdom/transform/JDOMSource;->buildDocumentReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 313
    iput-object p1, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    return-void

    .line 316
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
