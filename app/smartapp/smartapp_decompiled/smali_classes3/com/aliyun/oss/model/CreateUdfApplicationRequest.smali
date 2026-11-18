.class public Lcom/aliyun/oss/model/CreateUdfApplicationRequest;
.super Lcom/aliyun/oss/model/UdfGenericRequest;
.source "CreateUdfApplicationRequest.java"


# instance fields
.field private udfApplicationConfiguration:Lcom/aliyun/oss/model/UdfApplicationConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/aliyun/oss/model/UdfApplicationConfiguration;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/UdfGenericRequest;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lcom/aliyun/oss/model/CreateUdfApplicationRequest;->udfApplicationConfiguration:Lcom/aliyun/oss/model/UdfApplicationConfiguration;

    return-void
.end method


# virtual methods
.method public getUdfApplicationConfiguration()Lcom/aliyun/oss/model/UdfApplicationConfiguration;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/aliyun/oss/model/CreateUdfApplicationRequest;->udfApplicationConfiguration:Lcom/aliyun/oss/model/UdfApplicationConfiguration;

    return-object v0
.end method

.method public setUdfApplicationConfiguration(Lcom/aliyun/oss/model/UdfApplicationConfiguration;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/aliyun/oss/model/CreateUdfApplicationRequest;->udfApplicationConfiguration:Lcom/aliyun/oss/model/UdfApplicationConfiguration;

    return-void
.end method
