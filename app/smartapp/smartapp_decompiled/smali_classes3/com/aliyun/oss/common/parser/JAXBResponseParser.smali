.class public Lcom/aliyun/oss/common/parser/JAXBResponseParser;
.super Ljava/lang/Object;
.source "JAXBResponseParser.java"

# interfaces
.implements Lcom/aliyun/oss/common/parser/ResponseParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aliyun/oss/common/parser/ResponseParser<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static cachedContexts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljavax/xml/bind/JAXBContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final saxParserFactory:Ljavax/xml/parsers/SAXParserFactory;


# instance fields
.field private modelClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sput-object v0, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->saxParserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->cachedContexts:Ljava/util/HashMap;

    .line 58
    sget-object v0, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->saxParserFactory:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 59
    sget-object v0, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->saxParserFactory:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->modelClass:Ljava/lang/Class;

    return-void
.end method

.method private getObject(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "FailedToParseResponse"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 74
    :try_start_0
    sget-object v3, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->cachedContexts:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->modelClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->modelClass:Ljava/lang/Class;

    invoke-static {v3}, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->initJAXBContext(Ljava/lang/Class;)V

    .line 79
    :cond_0
    sget-object v3, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->cachedContexts:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->modelClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/bind/JAXBContext;

    .line 80
    invoke-virtual {v3}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v3

    .line 84
    invoke-static {p1}, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->getSAXSource(Ljava/io/InputStream;)Ljavax/xml/transform/sax/SAXSource;

    move-result-object p1

    invoke-interface {v3, p1}, Ljavax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/transform/Source;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 92
    new-instance v3, Lcom/aliyun/oss/common/parser/ResponseParseException;

    sget-object v4, Lcom/aliyun/oss/internal/OSSUtils;->COMMON_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v4, v0, v2}, Lcom/aliyun/oss/common/utils/ResourceManager;->getFormattedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception p1

    .line 89
    new-instance v3, Lcom/aliyun/oss/common/parser/ResponseParseException;

    sget-object v4, Lcom/aliyun/oss/internal/OSSUtils;->COMMON_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v4, v0, v2}, Lcom/aliyun/oss/common/utils/ResourceManager;->getFormattedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception p1

    .line 86
    new-instance v3, Lcom/aliyun/oss/common/parser/ResponseParseException;

    sget-object v4, Lcom/aliyun/oss/internal/OSSUtils;->COMMON_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljavax/xml/bind/JAXBException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v4, v0, v2}, Lcom/aliyun/oss/common/utils/ResourceManager;->getFormattedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static getSAXSource(Ljava/io/InputStream;)Ljavax/xml/transform/sax/SAXSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->saxParserFactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 108
    new-instance v1, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0, v2}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    return-object v1
.end method

.method private static declared-synchronized initJAXBContext(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    const-class v0, Lcom/aliyun/oss/common/parser/JAXBResponseParser;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-object v1, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->cachedContexts:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 100
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljavax/xml/bind/JAXBContext;->newInstance([Ljava/lang/Class;)Ljavax/xml/bind/JAXBContext;

    move-result-object v1

    .line 101
    sget-object v2, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->cachedContexts:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/aliyun/oss/common/parser/JAXBResponseParser;->getObject(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
