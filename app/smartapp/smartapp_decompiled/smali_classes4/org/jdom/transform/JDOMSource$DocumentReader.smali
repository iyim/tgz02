.class Lorg/jdom/transform/JDOMSource$DocumentReader;
.super Lorg/jdom/output/SAXOutputter;
.source "JDOMSource.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/transform/JDOMSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DocumentReader"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 473
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 493
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    const-string v0, "Only JDOM Documents are supported as input"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 514
    instance-of v0, p1, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    if-eqz v0, :cond_1

    .line 516
    :try_start_0
    nop

    nop

    invoke-virtual {p1}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->getSource()Ljava/lang/Object;

    move-result-object p1

    .line 517
    instance-of v0, p1, Lorg/jdom/Document;

    if-eqz v0, :cond_0

    .line 518
    nop

    nop

    invoke-virtual {p0, p1}, Lorg/jdom/transform/JDOMSource$DocumentReader;->output(Lorg/jdom/Document;)V

    goto :goto_0

    .line 521
    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/jdom/transform/JDOMSource$DocumentReader;->output(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 525
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {p1}, Lorg/jdom/JDOMException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 529
    :cond_1
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    const-string v0, "Only JDOM Documents are supported as input"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
