.class public abstract Lcom/aliyun/oss/common/comm/HttpMesssage;
.super Ljava/lang/Object;
.source "HttpMesssage.java"


# instance fields
.field private content:Ljava/io/InputStream;

.field private contentLength:J

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/common/comm/HttpMesssage;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/HttpMesssage;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/HttpMesssage;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/aliyun/oss/common/comm/HttpMesssage;->content:Ljava/io/InputStream;

    :cond_0
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/HttpMesssage;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/aliyun/oss/common/comm/HttpMesssage;->contentLength:J

    return-wide v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/HttpMesssage;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/HttpMesssage;->content:Ljava/io/InputStream;

    return-void
.end method

.method public setContentLength(J)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/aliyun/oss/common/comm/HttpMesssage;->contentLength:J

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/HttpMesssage;->headers:Ljava/util/Map;

    return-void
.end method
