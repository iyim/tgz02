.class public final Lcom/aliyun/oss/internal/ResponseParsers$ProcessObjectResponseParser;
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
    name = "ProcessObjectResponseParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aliyun/oss/common/parser/ResponseParser<",
        "Lcom/aliyun/oss/model/GenericResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Lcom/aliyun/oss/model/GenericResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 734
    new-instance v0, Lcom/aliyun/oss/model/PutObjectResult;

    invoke-direct {v0}, Lcom/aliyun/oss/model/PutObjectResult;-><init>()V

    .line 735
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/GenericResult;->setRequestId(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v0, p1}, Lcom/aliyun/oss/model/GenericResult;->setResponse(Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    return-object v0
.end method

.method public bridge synthetic parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 729
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/internal/ResponseParsers$ProcessObjectResponseParser;->parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Lcom/aliyun/oss/model/GenericResult;

    move-result-object p1

    return-object p1
.end method
