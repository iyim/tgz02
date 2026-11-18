.class public Lorg/jdom/output/SAXOutputter;
.super Ljava/lang/Object;
.source "SAXOutputter.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: SAXOutputter.java,v $ $Revision: 1.40 $ $Date: 2007/11/10 05:29:01 $ $Name: jdom_1_1 $"

.field private static final DECL_HANDLER_ALT_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/handlers/DeclHandler"

.field private static final DECL_HANDLER_SAX_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/properties/declaration-handler"

.field private static final LEXICAL_HANDLER_ALT_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/handlers/LexicalHandler"

.field private static final LEXICAL_HANDLER_SAX_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field private static final NAMESPACES_SAX_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final NS_PREFIXES_SAX_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final VALIDATION_SAX_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final attrTypeToNameMap:[Ljava/lang/String;


# instance fields
.field private contentHandler:Lorg/xml/sax/ContentHandler;

.field private declHandler:Lorg/xml/sax/ext/DeclHandler;

.field private declareNamespaces:Z

.field private dtdHandler:Lorg/xml/sax/DTDHandler;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private locator:Lorg/jdom/output/JDOMLocator;

.field private reportDtdEvents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "CDATA"

    const-string v1, "CDATA"

    const-string v2, "ID"

    const-string v3, "IDREF"

    const-string v4, "IDREFS"

    const-string v5, "ENTITY"

    const-string v6, "ENTITIES"

    const-string v7, "NMTOKEN"

    const-string v8, "NMTOKENS"

    const-string v9, "NOTATION"

    const-string v10, "NMTOKEN"

    .line 132
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jdom/output/SAXOutputter;->attrTypeToNameMap:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 201
    invoke-direct/range {v0 .. v5}, Lorg/jdom/output/SAXOutputter;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;Lorg/xml/sax/ext/LexicalHandler;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 220
    invoke-direct/range {v0 .. v5}, Lorg/jdom/output/SAXOutputter;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;Lorg/xml/sax/ext/LexicalHandler;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 1

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    .line 241
    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 242
    iput-object p2, p0, Lorg/jdom/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 243
    iput-object p3, p0, Lorg/jdom/output/SAXOutputter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 244
    iput-object p4, p0, Lorg/jdom/output/SAXOutputter;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 245
    iput-object p5, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method

.method private addNsAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/jdom/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;
    .locals 6

    .line 1218
    iget-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 1220
    new-instance p1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 1223
    :cond_0
    invoke-virtual {p2}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 1224
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1225
    invoke-virtual {p2}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    const-string v2, ""

    const-string v3, "xmlns"

    const-string v4, "CDATA"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1232
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    const-string v2, ""

    const-string v4, "CDATA"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method private cdata(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 1135
    :try_start_0
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 1137
    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->characters(Ljava/lang/String;)V

    .line 1138
    iget-object p1, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {p1}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto :goto_0

    .line 1141
    :cond_0
    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->characters(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 1145
    new-instance v0, Lorg/jdom/JDOMException;

    const-string v1, "Exception in CDATA"

    invoke-direct {v0, v1, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private characters(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 1157
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 1159
    :try_start_0
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1162
    new-instance v0, Lorg/jdom/JDOMException;

    const-string v1, "Exception in characters"

    invoke-direct {v0, v1, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private comment(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 1174
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 1175
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 1177
    :try_start_0
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1179
    new-instance v0, Lorg/jdom/JDOMException;

    const-string v1, "Exception in comment"

    invoke-direct {v0, v1, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private createDTDParser()Lorg/xml/sax/XMLReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 1368
    :try_start_0
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->createParser()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 1375
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1376
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 1378
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1379
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 1381
    :cond_1
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    const-string v1, "http://xml.org/sax/properties/lexical-handler"

    .line 1383
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "http://xml.org/sax/handlers/LexicalHandler"

    .line 1388
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 1395
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_3
    const-string v1, "http://xml.org/sax/properties/declaration-handler"

    .line 1397
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    :try_start_4
    const-string v1, "http://xml.org/sax/handlers/DeclHandler"

    .line 1402
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1411
    :catch_3
    :cond_3
    :goto_1
    new-instance v1, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v1}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-object v0

    :catch_4
    move-exception v0

    .line 1371
    new-instance v1, Lorg/jdom/JDOMException;

    const-string v2, "Error in SAX parser allocation"

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private documentLocator(Lorg/jdom/Document;)V
    .locals 2

    .line 801
    new-instance v0, Lorg/jdom/output/JDOMLocator;

    invoke-direct {v0}, Lorg/jdom/output/JDOMLocator;-><init>()V

    iput-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 806
    invoke-virtual {p1}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 808
    invoke-virtual {p1}, Lorg/jdom/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v0

    .line 809
    invoke-virtual {p1}, Lorg/jdom/DocType;->getSystemID()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 812
    :goto_0
    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-virtual {v1, v0}, Lorg/jdom/output/JDOMLocator;->setPublicId(Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-virtual {v0, p1}, Lorg/jdom/output/JDOMLocator;->setSystemId(Ljava/lang/String;)V

    .line 814
    iget-object p1, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/jdom/output/JDOMLocator;->setLineNumber(I)V

    .line 815
    iget-object p1, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-virtual {p1, v0}, Lorg/jdom/output/JDOMLocator;->setColumnNumber(I)V

    .line 817
    iget-object p1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-interface {p1, v0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    return-void
.end method

.method private dtdEvents(Lorg/jdom/Document;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    const-string v0, "DTD parsing error"

    .line 760
    invoke-virtual {p1}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 763
    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v1, :cond_1

    .line 767
    :cond_0
    new-instance v1, Lorg/jdom/output/XMLOutputter;

    invoke-direct {v1}, Lorg/jdom/output/XMLOutputter;-><init>()V

    invoke-virtual {v1, p1}, Lorg/jdom/output/XMLOutputter;->outputString(Lorg/jdom/DocType;)Ljava/lang/String;

    move-result-object p1

    .line 771
    :try_start_0
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->createDTDParser()Lorg/xml/sax/XMLReader;

    move-result-object v1

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 784
    new-instance v1, Lorg/jdom/JDOMException;

    invoke-direct {v1, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    .line 781
    new-instance v1, Lorg/jdom/JDOMException;

    invoke-direct {v1, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    :cond_1
    :goto_0
    return-void
.end method

.method private element(Lorg/jdom/Element;Lorg/jdom/output/NamespaceStack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 888
    invoke-virtual {p2}, Lorg/jdom/output/NamespaceStack;->size()I

    move-result v0

    .line 891
    invoke-direct {p0, p1, p2}, Lorg/jdom/output/SAXOutputter;->startPrefixMapping(Lorg/jdom/Element;Lorg/jdom/output/NamespaceStack;)Lorg/xml/sax/Attributes;

    move-result-object v1

    .line 894
    invoke-direct {p0, p1, v1}, Lorg/jdom/output/SAXOutputter;->startElement(Lorg/jdom/Element;Lorg/xml/sax/Attributes;)V

    .line 897
    invoke-virtual {p1}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/jdom/output/SAXOutputter;->elementContent(Ljava/util/List;Lorg/jdom/output/NamespaceStack;)V

    .line 900
    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    if-eqz v1, :cond_0

    .line 901
    invoke-virtual {v1, p1}, Lorg/jdom/output/JDOMLocator;->setNode(Ljava/lang/Object;)V

    .line 905
    :cond_0
    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->endElement(Lorg/jdom/Element;)V

    .line 908
    invoke-direct {p0, p2, v0}, Lorg/jdom/output/SAXOutputter;->endPrefixMapping(Lorg/jdom/output/NamespaceStack;I)V

    return-void
.end method

.method private elementContent(Ljava/util/List;Lorg/jdom/output/NamespaceStack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 1065
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1066
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1068
    instance-of v1, v0, Lorg/jdom/Content;

    if-eqz v1, :cond_0

    .line 1069
    nop

    nop

    invoke-direct {p0, v0, p2}, Lorg/jdom/output/SAXOutputter;->elementContent(Lorg/jdom/Content;Lorg/jdom/output/NamespaceStack;)V

    goto :goto_0

    .line 1075
    :cond_0
    new-instance v1, Lorg/jdom/JDOMException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid element content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/jdom/output/SAXOutputter;->handleError(Lorg/jdom/JDOMException;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private elementContent(Lorg/jdom/Content;Lorg/jdom/output/NamespaceStack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 1092
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {v0, p1}, Lorg/jdom/output/JDOMLocator;->setNode(Ljava/lang/Object;)V

    .line 1096
    :cond_0
    instance-of v0, p1, Lorg/jdom/Element;

    if-eqz v0, :cond_1

    .line 1097
    nop

    nop

    invoke-direct {p0, p1, p2}, Lorg/jdom/output/SAXOutputter;->element(Lorg/jdom/Element;Lorg/jdom/output/NamespaceStack;)V

    goto :goto_0

    .line 1099
    :cond_1
    instance-of p2, p1, Lorg/jdom/CDATA;

    if-eqz p2, :cond_2

    .line 1100
    nop

    nop

    invoke-virtual {p1}, Lorg/jdom/CDATA;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->cdata(Ljava/lang/String;)V

    goto :goto_0

    .line 1102
    :cond_2
    instance-of p2, p1, Lorg/jdom/Text;

    if-eqz p2, :cond_3

    .line 1104
    nop

    nop

    invoke-virtual {p1}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->characters(Ljava/lang/String;)V

    goto :goto_0

    .line 1106
    :cond_3
    instance-of p2, p1, Lorg/jdom/ProcessingInstruction;

    if-eqz p2, :cond_4

    .line 1108
    nop

    nop

    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->processingInstruction(Lorg/jdom/ProcessingInstruction;)V

    goto :goto_0

    .line 1110
    :cond_4
    instance-of p2, p1, Lorg/jdom/Comment;

    if-eqz p2, :cond_5

    .line 1112
    nop

    nop

    invoke-virtual {p1}, Lorg/jdom/Comment;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->comment(Ljava/lang/String;)V

    goto :goto_0

    .line 1114
    :cond_5
    instance-of p2, p1, Lorg/jdom/EntityRef;

    if-eqz p2, :cond_6

    .line 1116
    nop

    nop

    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->entityRef(Lorg/jdom/EntityRef;)V

    goto :goto_0

    .line 1122
    :cond_6
    new-instance p2, Lorg/jdom/JDOMException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Invalid element content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/jdom/output/SAXOutputter;->handleError(Lorg/jdom/JDOMException;)V

    :goto_0
    return-void
.end method

.method private endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 843
    :try_start_0
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    const/4 v0, 0x0

    .line 846
    iput-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 849
    new-instance v1, Lorg/jdom/JDOMException;

    const-string v2, "Exception in endDocument"

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private endElement(Lorg/jdom/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 1043
    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 1044
    invoke-virtual {p1}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1045
    invoke-virtual {p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    .line 1048
    :try_start_0
    iget-object v2, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2, v0, v1, p1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1051
    new-instance v0, Lorg/jdom/JDOMException;

    const-string v1, "Exception in endElement"

    invoke-direct {v0, v1, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private endPrefixMapping(Lorg/jdom/output/NamespaceStack;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 984
    :goto_0
    invoke-virtual {p1}, Lorg/jdom/output/NamespaceStack;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 985
    invoke-virtual {p1}, Lorg/jdom/output/NamespaceStack;->pop()Ljava/lang/String;

    move-result-object v0

    .line 987
    :try_start_0
    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, v0}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 990
    new-instance p2, Lorg/jdom/JDOMException;

    const-string v0, "Exception in endPrefixMapping"

    invoke-direct {p2, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return-void
.end method

.method private entityRef(Lorg/jdom/EntityRef;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1197
    :try_start_0
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Lorg/jdom/EntityRef;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1200
    new-instance v0, Lorg/jdom/JDOMException;

    const-string v1, "Exception in entityRef"

    invoke-direct {v0, v1, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private static getAttributeTypeName(I)Ljava/lang/String;
    .locals 1

    if-ltz p0, :cond_0

    .line 1256
    sget-object v0, Lorg/jdom/output/SAXOutputter;->attrTypeToNameMap:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 1259
    :cond_1
    sget-object v0, Lorg/jdom/output/SAXOutputter;->attrTypeToNameMap:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method private handleError(Lorg/jdom/JDOMException;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 1279
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_1

    .line 1281
    :try_start_0
    new-instance v1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p1}, Lorg/jdom/JDOMException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1285
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lorg/jdom/JDOMException;

    if-eqz v0, :cond_0

    .line 1286
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Lorg/jdom/JDOMException;

    nop

    nop

    throw p1

    .line 1289
    :cond_0
    new-instance v0, Lorg/jdom/JDOMException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1294
    :cond_1
    throw p1
.end method

.method private processingInstruction(Lorg/jdom/ProcessingInstruction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 864
    invoke-virtual {p1}, Lorg/jdom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    .line 865
    invoke-virtual {p1}, Lorg/jdom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p1

    .line 867
    :try_start_0
    iget-object v1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, v0, p1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 870
    new-instance v0, Lorg/jdom/JDOMException;

    const-string v1, "Exception in processingInstruction"

    invoke-direct {v0, v1, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private startDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 828
    :try_start_0
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 831
    new-instance v1, Lorg/jdom/JDOMException;

    const-string v2, "Exception in startDocument"

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startElement(Lorg/jdom/Element;Lorg/xml/sax/Attributes;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 1007
    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 1008
    invoke-virtual {p1}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1009
    invoke-virtual {p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 1012
    new-instance v3, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v3, p2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v3}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 1015
    :goto_0
    invoke-virtual {p1}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object p1

    .line 1016
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1017
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1018
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jdom/Attribute;

    .line 1019
    invoke-virtual {p2}, Lorg/jdom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lorg/jdom/Attribute;->getAttributeType()I

    move-result v4

    invoke-static {v4}, Lorg/jdom/output/SAXOutputter;->getAttributeTypeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v9

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1027
    :cond_1
    :try_start_0
    iget-object p1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1030
    new-instance p2, Lorg/jdom/JDOMException;

    const-string v0, "Exception in startElement"

    invoke-direct {p2, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method private startPrefixMapping(Lorg/jdom/Element;Lorg/jdom/output/NamespaceStack;)Lorg/xml/sax/Attributes;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .line 929
    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v0

    .line 930
    sget-object v1, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    const-string v2, "Exception in startPrefixMapping"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 931
    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 932
    invoke-virtual {p2, v1}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 933
    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 934
    invoke-virtual {p2, v0}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V

    .line 935
    invoke-direct {p0, v3, v0}, Lorg/jdom/output/SAXOutputter;->addNsAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/jdom/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v3

    .line 937
    :try_start_0
    iget-object v4, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 940
    new-instance p2, Lorg/jdom/JDOMException;

    invoke-direct {p2, v2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 947
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/jdom/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 949
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 950
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 951
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Namespace;

    .line 952
    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 953
    invoke-virtual {p2, v1}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 954
    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 955
    invoke-virtual {p2, v0}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V

    .line 956
    invoke-direct {p0, v3, v0}, Lorg/jdom/output/SAXOutputter;->addNsAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/jdom/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v3

    .line 958
    :try_start_1
    iget-object v4, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 961
    new-instance p2, Lorg/jdom/JDOMException;

    invoke-direct {p2, v2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object v3
.end method


# virtual methods
.method protected createParser()Lorg/xml/sax/XMLReader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "javax.xml.parsers.SAXParserFactory"

    .line 1315
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newInstance"

    .line 1319
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1321
    invoke-virtual {v2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "newSAXParser"

    .line 1324
    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1325
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1328
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getXMLReader"

    .line 1329
    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1331
    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    if-nez v0, :cond_0

    const-string v0, "org.apache.xerces.parsers.SAXParser"

    .line 1345
    invoke-static {v0}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 1

    .line 360
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->declHandler:Lorg/xml/sax/ext/DeclHandler;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    .line 486
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-boolean p1, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    return p1

    :cond_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    .line 491
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string v0, "http://xml.org/sax/features/validation"

    .line 496
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    iget-boolean p1, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    return p1

    .line 502
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public getLocator()Lorg/jdom/output/JDOMLocator;
    .locals 2

    .line 1437
    iget-object v0, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/jdom/output/JDOMLocator;

    invoke-direct {v1, v0}, Lorg/jdom/output/JDOMLocator;-><init>(Lorg/xml/sax/Locator;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    .line 570
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    .line 575
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http://xml.org/sax/handlers/DeclHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 580
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object p1

    return-object p1

    .line 572
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/jdom/output/SAXOutputter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object p1

    return-object p1
.end method

.method public getReportDTDEvents()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    return v0
.end method

.method public getReportNamespaceDeclarations()Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    return v0
.end method

.method public output(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 655
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 660
    invoke-direct {p0, v0}, Lorg/jdom/output/SAXOutputter;->documentLocator(Lorg/jdom/Document;)V

    .line 663
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->startDocument()V

    .line 666
    new-instance v0, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v0}, Lorg/jdom/output/NamespaceStack;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jdom/output/SAXOutputter;->elementContent(Ljava/util/List;Lorg/jdom/output/NamespaceStack;)V

    .line 669
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->endDocument()V

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public output(Lorg/jdom/Document;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 600
    :cond_0
    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->documentLocator(Lorg/jdom/Document;)V

    .line 603
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->startDocument()V

    .line 606
    iget-boolean v0, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    if-eqz v0, :cond_1

    .line 607
    invoke-direct {p0, p1}, Lorg/jdom/output/SAXOutputter;->dtdEvents(Lorg/jdom/Document;)V

    .line 612
    :cond_1
    invoke-virtual {p1}, Lorg/jdom/Document;->getContent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 613
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 614
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 617
    iget-object v2, p0, Lorg/jdom/output/SAXOutputter;->locator:Lorg/jdom/output/JDOMLocator;

    invoke-virtual {v2, v1}, Lorg/jdom/output/JDOMLocator;->setNode(Ljava/lang/Object;)V

    .line 619
    instance-of v2, v1, Lorg/jdom/Element;

    if-eqz v2, :cond_3

    .line 621
    invoke-virtual {p1}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v1

    new-instance v2, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v2}, Lorg/jdom/output/NamespaceStack;-><init>()V

    invoke-direct {p0, v1, v2}, Lorg/jdom/output/SAXOutputter;->element(Lorg/jdom/Element;Lorg/jdom/output/NamespaceStack;)V

    goto :goto_0

    .line 623
    :cond_3
    instance-of v2, v1, Lorg/jdom/ProcessingInstruction;

    if-eqz v2, :cond_4

    .line 625
    nop

    nop

    invoke-direct {p0, v1}, Lorg/jdom/output/SAXOutputter;->processingInstruction(Lorg/jdom/ProcessingInstruction;)V

    goto :goto_0

    .line 627
    :cond_4
    instance-of v2, v1, Lorg/jdom/Comment;

    if-eqz v2, :cond_2

    .line 629
    nop

    nop

    invoke-virtual {v1}, Lorg/jdom/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jdom/output/SAXOutputter;->comment(Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_5
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->endDocument()V

    return-void
.end method

.method public output(Lorg/jdom/Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    if-nez p1, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/4 v0, 0x0

    .line 686
    invoke-direct {p0, v0}, Lorg/jdom/output/SAXOutputter;->documentLocator(Lorg/jdom/Document;)V

    .line 689
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->startDocument()V

    .line 692
    new-instance v0, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v0}, Lorg/jdom/output/NamespaceStack;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jdom/output/SAXOutputter;->elementContent(Lorg/jdom/Content;Lorg/jdom/output/NamespaceStack;)V

    .line 695
    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;->endDocument()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public outputFragment(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 717
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    new-instance v0, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v0}, Lorg/jdom/output/NamespaceStack;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jdom/output/SAXOutputter;->elementContent(Ljava/util/List;Lorg/jdom/output/NamespaceStack;)V

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public outputFragment(Lorg/jdom/Content;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    if-nez p1, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 749
    :cond_0
    new-instance v0, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v0}, Lorg/jdom/output/NamespaceStack;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jdom/output/SAXOutputter;->elementContent(Lorg/jdom/Content;Lorg/jdom/output/NamespaceStack;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-void
.end method

.method public setDeclHandler(Lorg/xml/sax/ext/DeclHandler;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->declHandler:Lorg/xml/sax/ext/DeclHandler;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    .line 446
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0, p2}, Lorg/jdom/output/SAXOutputter;->setReportNamespaceDeclarations(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    .line 451
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 454
    :cond_1
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-string v0, "http://xml.org/sax/features/validation"

    .line 459
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 461
    invoke-virtual {p0, p2}, Lorg/jdom/output/SAXOutputter;->setReportDTDEvents(Z)V

    :goto_0
    return-void

    .line 465
    :cond_3
    new-instance p2, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lorg/jdom/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    .line 541
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    .line 546
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http://xml.org/sax/handlers/DeclHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 551
    :cond_1
    new-instance p2, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 548
    :cond_2
    :goto_0
    check-cast p2, Lorg/xml/sax/ext/DeclHandler;

    invoke-virtual {p0, p2}, Lorg/jdom/output/SAXOutputter;->setDeclHandler(Lorg/xml/sax/ext/DeclHandler;)V

    goto :goto_2

    .line 543
    :cond_3
    :goto_1
    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {p0, p2}, Lorg/jdom/output/SAXOutputter;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    :goto_2
    return-void
.end method

.method public setReportDTDEvents(Z)V
    .locals 0

    .line 403
    iput-boolean p1, p0, Lorg/jdom/output/SAXOutputter;->reportDtdEvents:Z

    return-void
.end method

.method public setReportNamespaceDeclarations(Z)V
    .locals 0

    .line 383
    iput-boolean p1, p0, Lorg/jdom/output/SAXOutputter;->declareNamespaces:Z

    return-void
.end method
