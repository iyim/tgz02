.class public final Lcom/aliyun/oss/internal/ResponseParsers$CompleteMultipartUploadProcessResponseParser;
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
    name = "CompleteMultipartUploadProcessResponseParser"
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

    .line 813
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

    .line 818
    new-instance v0, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;

    invoke-direct {v0}, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;-><init>()V

    .line 819
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->setRequestId(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->setCallbackResponseBody(Ljava/io/InputStream;)V

    .line 821
    invoke-virtual {v0, p1}, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->setResponse(Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    return-object v0
.end method

.method public bridge synthetic parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 813
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/internal/ResponseParsers$CompleteMultipartUploadProcessResponseParser;->parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Lcom/aliyun/oss/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method
