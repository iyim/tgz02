.class public Lorg/jdom/transform/XSLTransformer;
.super Ljava/lang/Object;
.source "XSLTransformer.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: XSLTransformer.java,v $ $Revision: 1.5 $ $Date: 2007/11/14 04:36:54 $ $Name: jdom_1_1 $"


# instance fields
.field private factory:Lorg/jdom/JDOMFactory;

.field private templates:Ljavax/xml/transform/Templates;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .line 193
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/jdom/transform/XSLTransformer;-><init>(Ljavax/xml/transform/Source;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .line 163
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/jdom/transform/XSLTransformer;-><init>(Ljavax/xml/transform/Source;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lorg/jdom/transform/XSLTransformer;-><init>(Ljavax/xml/transform/Source;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jdom/transform/XSLTransformer;-><init>(Ljavax/xml/transform/Source;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljavax/xml/transform/Source;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lorg/jdom/transform/XSLTransformer;->factory:Lorg/jdom/JDOMFactory;

    .line 133
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/transform/TransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom/transform/XSLTransformer;->templates:Ljavax/xml/transform/Templates;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 137
    new-instance v0, Lorg/jdom/transform/XSLTransformException;

    const-string v1, "Could not construct XSLTransformer"

    invoke-direct {v0, v1, p1}, Lorg/jdom/transform/XSLTransformException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public constructor <init>(Lorg/jdom/Document;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .line 208
    new-instance v0, Lorg/jdom/transform/JDOMSource;

    invoke-direct {v0, p1}, Lorg/jdom/transform/JDOMSource;-><init>(Lorg/jdom/Document;)V

    invoke-direct {p0, v0}, Lorg/jdom/transform/XSLTransformer;-><init>(Ljavax/xml/transform/Source;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getFactory()Lorg/jdom/JDOMFactory;
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/jdom/transform/XSLTransformer;->factory:Lorg/jdom/JDOMFactory;

    return-object v0
.end method

.method public setFactory(Lorg/jdom/JDOMFactory;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lorg/jdom/transform/XSLTransformer;->factory:Lorg/jdom/JDOMFactory;

    return-void
.end method

.method public transform(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .line 219
    new-instance v0, Lorg/jdom/transform/JDOMSource;

    invoke-direct {v0, p1}, Lorg/jdom/transform/JDOMSource;-><init>(Ljava/util/List;)V

    .line 220
    new-instance p1, Lorg/jdom/transform/JDOMResult;

    invoke-direct {p1}, Lorg/jdom/transform/JDOMResult;-><init>()V

    .line 221
    iget-object v1, p0, Lorg/jdom/transform/XSLTransformer;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p1, v1}, Lorg/jdom/transform/JDOMResult;->setFactory(Lorg/jdom/JDOMFactory;)V

    .line 223
    :try_start_0
    iget-object v1, p0, Lorg/jdom/transform/XSLTransformer;->templates:Ljavax/xml/transform/Templates;

    invoke-interface {v1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 224
    invoke-virtual {p1}, Lorg/jdom/transform/JDOMResult;->getResult()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 227
    new-instance v0, Lorg/jdom/transform/XSLTransformException;

    const-string v1, "Could not perform transformation"

    invoke-direct {v0, v1, p1}, Lorg/jdom/transform/XSLTransformException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public transform(Lorg/jdom/Document;)Lorg/jdom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, p1, v0}, Lorg/jdom/transform/XSLTransformer;->transform(Lorg/jdom/Document;Lorg/xml/sax/EntityResolver;)Lorg/jdom/Document;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lorg/jdom/Document;Lorg/xml/sax/EntityResolver;)Lorg/jdom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .line 251
    new-instance v0, Lorg/jdom/transform/JDOMSource;

    invoke-direct {v0, p1, p2}, Lorg/jdom/transform/JDOMSource;-><init>(Lorg/jdom/Document;Lorg/xml/sax/EntityResolver;)V

    .line 252
    new-instance p1, Lorg/jdom/transform/JDOMResult;

    invoke-direct {p1}, Lorg/jdom/transform/JDOMResult;-><init>()V

    .line 253
    iget-object p2, p0, Lorg/jdom/transform/XSLTransformer;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p1, p2}, Lorg/jdom/transform/JDOMResult;->setFactory(Lorg/jdom/JDOMFactory;)V

    .line 255
    :try_start_0
    iget-object p2, p0, Lorg/jdom/transform/XSLTransformer;->templates:Ljavax/xml/transform/Templates;

    invoke-interface {p2}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 256
    invoke-virtual {p1}, Lorg/jdom/transform/JDOMResult;->getDocument()Lorg/jdom/Document;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 259
    new-instance p2, Lorg/jdom/transform/XSLTransformException;

    const-string v0, "Could not perform transformation"

    invoke-direct {p2, v0, p1}, Lorg/jdom/transform/XSLTransformException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
