.class public final Lcom/aliyun/oss/internal/ResponseParsers$GetUdfApplicationLogResponseParser;
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
    name = "GetUdfApplicationLogResponseParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aliyun/oss/common/parser/ResponseParser<",
        "Lcom/aliyun/oss/model/UdfApplicationLog;",
        ">;"
    }
.end annotation


# instance fields
.field private udfName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    iput-object p1, p0, Lcom/aliyun/oss/internal/ResponseParsers$GetUdfApplicationLogResponseParser;->udfName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Lcom/aliyun/oss/model/UdfApplicationLog;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 671
    new-instance v0, Lcom/aliyun/oss/model/UdfApplicationLog;

    iget-object v1, p0, Lcom/aliyun/oss/internal/ResponseParsers$GetUdfApplicationLogResponseParser;->udfName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/aliyun/oss/model/UdfApplicationLog;-><init>(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/UdfApplicationLog;->setLogContent(Ljava/io/InputStream;)V

    .line 673
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/UdfApplicationLog;->setRequestId(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v0, p1}, Lcom/aliyun/oss/model/UdfApplicationLog;->setResponse(Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    .line 675
    invoke-static {v0, p1}, Lcom/aliyun/oss/internal/ResponseParsers;->setServerCRC(Lcom/aliyun/oss/model/GenericResult;Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    return-object v0
.end method

.method public bridge synthetic parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 661
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/internal/ResponseParsers$GetUdfApplicationLogResponseParser;->parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Lcom/aliyun/oss/model/UdfApplicationLog;

    move-result-object p1

    return-object p1
.end method
