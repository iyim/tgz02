.class Lorg/jdom/transform/JDOMResult$DocumentBuilder;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "JDOMResult.java"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/transform/JDOMResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocumentBuilder"
.end annotation


# instance fields
.field private saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

.field private startDocumentReceived:Z

.field private final synthetic this$0:Lorg/jdom/transform/JDOMResult;


# direct methods
.method public constructor <init>(Lorg/jdom/transform/JDOMResult;)V
    .locals 0

    .line 427
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    iput-object p1, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->this$0:Lorg/jdom/transform/JDOMResult;

    const/4 p1, 0x0

    .line 416
    iput-object p1, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    const/4 p1, 0x0

    .line 422
    iput-boolean p1, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->startDocumentReceived:Z

    return-void
.end method

.method private ensureInitialization()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 456
    iget-boolean v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->startDocumentReceived:Z

    if-nez v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->startDocument()V

    :cond_0
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 538
    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 539
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->characters([CII)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 665
    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 666
    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jdom/transform/JDOMResult$FragmentHandler;->comment([CII)V

    return-void
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0}, Lorg/jdom/transform/JDOMResult$FragmentHandler;->endCDATA()V

    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0}, Lorg/jdom/transform/JDOMResult$FragmentHandler;->endDTD()V

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 629
    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0, p1}, Lorg/jdom/transform/JDOMResult$FragmentHandler;->endEntity(Ljava/lang/String;)V

    return-void
.end method

.method public getResult()Ljava/util/List;
    .locals 2

    .line 440
    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Lorg/jdom/transform/JDOMResult$FragmentHandler;->getResult()Ljava/util/List;

    move-result-object v0

    .line 445
    iput-object v1, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    const/4 v1, 0x0

    .line 448
    iput-boolean v1, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->startDocumentReceived:Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 548
    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 549
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->ignorableWhitespace([CII)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 558
    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 559
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 567
    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 568
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->skippedEntity(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 639
    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 640
    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0}, Lorg/jdom/transform/JDOMResult$FragmentHandler;->startCDATA()V

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 591
    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 592
    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jdom/transform/JDOMResult$FragmentHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 476
    iput-boolean v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->startDocumentReceived:Z

    .line 479
    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->this$0:Lorg/jdom/transform/JDOMResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jdom/transform/JDOMResult;->setResult(Ljava/util/List;)V

    .line 485
    new-instance v0, Lorg/jdom/transform/JDOMResult$FragmentHandler;

    iget-object v1, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->this$0:Lorg/jdom/transform/JDOMResult;

    invoke-virtual {v1}, Lorg/jdom/transform/JDOMResult;->getFactory()Lorg/jdom/JDOMFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom/transform/JDOMResult$FragmentHandler;-><init>(Lorg/jdom/JDOMFactory;)V

    iput-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    .line 486
    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    invoke-super {p0, v0}, Lorg/xml/sax/helpers/XMLFilterImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 489
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->startDocument()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 518
    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 519
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 616
    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 617
    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0, p1}, Lorg/jdom/transform/JDOMResult$FragmentHandler;->startEntity(Ljava/lang/String;)V

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 528
    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 529
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
