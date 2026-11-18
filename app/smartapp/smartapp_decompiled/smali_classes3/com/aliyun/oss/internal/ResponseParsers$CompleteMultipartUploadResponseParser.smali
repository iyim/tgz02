.class public final Lcom/aliyun/oss/internal/ResponseParsers$CompleteMultipartUploadResponseParser;
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
    name = "CompleteMultipartUploadResponseParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aliyun/oss/common/parser/ResponseParser<",
        "Lcom/aliyun/oss/model/CompleteMultipartUploadResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Lcom/aliyun/oss/model/CompleteMultipartUploadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 802
    :try_start_0
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/oss/internal/ResponseParsers;->parseCompleteMultipartUpload(Ljava/io/InputStream;)Lcom/aliyun/oss/model/CompleteMultipartUploadResult;

    move-result-object v0

    .line 803
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->setRequestId(Ljava/lang/String;)V

    .line 804
    invoke-static {v0, p1}, Lcom/aliyun/oss/internal/ResponseParsers;->setServerCRC(Lcom/aliyun/oss/model/GenericResult;Lcom/aliyun/oss/common/comm/ResponseMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
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

    .line 796
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/internal/ResponseParsers$CompleteMultipartUploadResponseParser;->parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Lcom/aliyun/oss/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method
