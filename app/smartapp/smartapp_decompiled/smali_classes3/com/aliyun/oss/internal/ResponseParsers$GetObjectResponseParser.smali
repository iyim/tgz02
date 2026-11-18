.class public final Lcom/aliyun/oss/internal/ResponseParsers$GetObjectResponseParser;
.super Ljava/lang/Object;
.source "ResponseParsers.java"

# interfaces
.implements Lcom/aliyun/oss/common/parser/ResponseParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/internal/ResponseParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetObjectResponseParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aliyun/oss/common/parser/ResponseParser<",
        "Lcom/aliyun/oss/model/OSSObject;",
        ">;"
    }
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iput-object p1, p0, Lcom/aliyun/oss/internal/ResponseParsers$GetObjectResponseParser;->bucketName:Ljava/lang/String;

    .line 633
    iput-object p2, p0, Lcom/aliyun/oss/internal/ResponseParsers$GetObjectResponseParser;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Lcom/aliyun/oss/model/OSSObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 639
    new-instance v0, Lcom/aliyun/oss/model/OSSObject;

    invoke-direct {v0}, Lcom/aliyun/oss/model/OSSObject;-><init>()V

    .line 640
    iget-object v1, p0, Lcom/aliyun/oss/internal/ResponseParsers$GetObjectResponseParser;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/OSSObject;->setBucketName(Ljava/lang/String;)V

    .line 641
    iget-object v1, p0, Lcom/aliyun/oss/internal/ResponseParsers$GetObjectResponseParser;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/OSSObject;->setKey(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/OSSObject;->setObjectContent(Ljava/io/InputStream;)V

    .line 643
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/OSSObject;->setRequestId(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0, p1}, Lcom/aliyun/oss/model/OSSObject;->setResponse(Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    .line 646
    :try_start_0
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/aliyun/oss/internal/ResponseParsers;->parseObjectMetadata(Ljava/util/Map;)Lcom/aliyun/oss/model/ObjectMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/OSSObject;->setObjectMetadata(Lcom/aliyun/oss/model/ObjectMetadata;)V

    .line 647
    invoke-static {v0, p1}, Lcom/aliyun/oss/internal/ResponseParsers;->setServerCRC(Lcom/aliyun/oss/model/GenericResult;Lcom/aliyun/oss/common/comm/ResponseMessage;)V
    :try_end_0
    .catch Lcom/aliyun/oss/common/parser/ResponseParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 652
    invoke-static {p1}, Lcom/aliyun/oss/internal/OSSUtils;->safeCloseResponse(Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    .line 655
    throw v0
.end method

.method public bridge synthetic parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 627
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/internal/ResponseParsers$GetObjectResponseParser;->parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Lcom/aliyun/oss/model/OSSObject;

    move-result-object p1

    return-object p1
.end method
