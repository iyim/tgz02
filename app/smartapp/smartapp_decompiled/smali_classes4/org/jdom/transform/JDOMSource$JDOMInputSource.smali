.class Lorg/jdom/transform/JDOMSource$JDOMInputSource;
.super Lorg/xml/sax/InputSource;
.source "JDOMSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/transform/JDOMSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JDOMInputSource"
.end annotation


# instance fields
.field private source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 386
    invoke-direct {p0}, Lorg/xml/sax/InputSource;-><init>()V

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->source:Ljava/lang/Object;

    .line 387
    iput-object p1, p0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->source:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/jdom/Document;)V
    .locals 1

    .line 377
    invoke-direct {p0}, Lorg/xml/sax/InputSource;-><init>()V

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->source:Ljava/lang/Object;

    .line 378
    iput-object p1, p0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->source:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCharacterStream()Ljava/io/Reader;
    .locals 3

    .line 435
    invoke-virtual {p0}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->getSource()Ljava/lang/Object;

    move-result-object v0

    .line 438
    instance-of v1, v0, Lorg/jdom/Document;

    if-eqz v1, :cond_0

    .line 441
    new-instance v1, Ljava/io/StringReader;

    new-instance v2, Lorg/jdom/output/XMLOutputter;

    invoke-direct {v2}, Lorg/jdom/output/XMLOutputter;-><init>()V

    nop

    nop

    invoke-virtual {v2, v0}, Lorg/jdom/output/XMLOutputter;->outputString(Lorg/jdom/Document;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 446
    new-instance v1, Ljava/io/StringReader;

    new-instance v2, Lorg/jdom/output/XMLOutputter;

    invoke-direct {v2}, Lorg/jdom/output/XMLOutputter;-><init>()V

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lorg/jdom/output/XMLOutputter;->outputString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 396
    iget-object v0, p0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 418
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
