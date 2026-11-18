.class public final Lcom/aliyun/oss/internal/ResponseParsers$UploadPartCopyResponseParser;
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
    name = "UploadPartCopyResponseParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aliyun/oss/common/parser/ResponseParser<",
        "Lcom/aliyun/oss/model/UploadPartCopyResult;",
        ">;"
    }
.end annotation


# instance fields
.field private partNumber:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    iput p1, p0, Lcom/aliyun/oss/internal/ResponseParsers$UploadPartCopyResponseParser;->partNumber:I

    return-void
.end method


# virtual methods
.method public parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Lcom/aliyun/oss/model/UploadPartCopyResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 887
    :try_start_0
    new-instance v0, Lcom/aliyun/oss/model/UploadPartCopyResult;

    invoke-direct {v0}, Lcom/aliyun/oss/model/UploadPartCopyResult;-><init>()V

    .line 888
    iget v1, p0, Lcom/aliyun/oss/internal/ResponseParsers$UploadPartCopyResponseParser;->partNumber:I

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/UploadPartCopyResult;->setPartNumber(I)V

    .line 889
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/aliyun/oss/internal/ResponseParsers;->parseUploadPartCopy(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aliyun/oss/internal/OSSUtils;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/UploadPartCopyResult;->setETag(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/UploadPartCopyResult;->setRequestId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    invoke-static {p1}, Lcom/aliyun/oss/internal/OSSUtils;->safeCloseResponse(Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/aliyun/oss/internal/OSSUtils;->safeCloseResponse(Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    throw v0
.end method

.method public bridge synthetic parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 875
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/internal/ResponseParsers$UploadPartCopyResponseParser;->parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Lcom/aliyun/oss/model/UploadPartCopyResult;

    move-result-object p1

    return-object p1
.end method
