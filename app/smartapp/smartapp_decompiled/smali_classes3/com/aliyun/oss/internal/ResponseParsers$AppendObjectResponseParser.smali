.class public final Lcom/aliyun/oss/internal/ResponseParsers$AppendObjectResponseParser;
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
    name = "AppendObjectResponseParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aliyun/oss/common/parser/ResponseParser<",
        "Lcom/aliyun/oss/model/AppendObjectResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Lcom/aliyun/oss/model/AppendObjectResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 610
    new-instance v0, Lcom/aliyun/oss/model/AppendObjectResult;

    invoke-direct {v0}, Lcom/aliyun/oss/model/AppendObjectResult;-><init>()V

    .line 611
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/AppendObjectResult;->setRequestId(Ljava/lang/String;)V

    .line 613
    :try_start_0
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "x-oss-next-append-position"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 615
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/AppendObjectResult;->setNextPosition(Ljava/lang/Long;)V

    .line 617
    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "x-oss-hash-crc64ecma"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/AppendObjectResult;->setObjectCRC(Ljava/lang/String;)V

    .line 618
    invoke-static {v0, p1}, Lcom/aliyun/oss/internal/ResponseParsers;->setCRC(Lcom/aliyun/oss/model/GenericResult;Lcom/aliyun/oss/common/comm/ResponseMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
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

    .line 605
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/internal/ResponseParsers$AppendObjectResponseParser;->parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Lcom/aliyun/oss/model/AppendObjectResult;

    move-result-object p1

    return-object p1
.end method
