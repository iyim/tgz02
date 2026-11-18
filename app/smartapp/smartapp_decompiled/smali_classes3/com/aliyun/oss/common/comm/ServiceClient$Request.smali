.class public Lcom/aliyun/oss/common/comm/ServiceClient$Request;
.super Lcom/aliyun/oss/common/comm/HttpMesssage;
.source "ServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/common/comm/ServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field private method:Lcom/aliyun/oss/HttpMethod;

.field private uri:Ljava/lang/String;

.field private useChunkEncoding:Z

.field private useUrlSignature:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/aliyun/oss/common/comm/HttpMesssage;-><init>()V

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->useUrlSignature:Z

    .line 323
    iput-boolean v0, p0, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->useChunkEncoding:Z

    return-void
.end method


# virtual methods
.method public getMethod()Lcom/aliyun/oss/HttpMethod;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->method:Lcom/aliyun/oss/HttpMethod;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isUseChunkEncoding()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->useChunkEncoding:Z

    return v0
.end method

.method public isUseUrlSignature()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->useUrlSignature:Z

    return v0
.end method

.method public setMethod(Lcom/aliyun/oss/HttpMethod;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->method:Lcom/aliyun/oss/HttpMethod;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->uri:Ljava/lang/String;

    return-void
.end method

.method public setUseChunkEncoding(Z)V
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->useChunkEncoding:Z

    return-void
.end method

.method public setUseUrlSignature(Z)V
    .locals 0

    .line 346
    iput-boolean p1, p0, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->useUrlSignature:Z

    return-void
.end method
