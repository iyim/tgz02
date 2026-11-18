.class public Lcom/aliyun/oss/model/UpgradeUdfApplicationRequest;
.super Lcom/aliyun/oss/model/UdfGenericRequest;
.source "UpgradeUdfApplicationRequest.java"


# instance fields
.field private imageVersion:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/UdfGenericRequest;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lcom/aliyun/oss/model/UpgradeUdfApplicationRequest;->imageVersion:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getImageVersion()Ljava/lang/Integer;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/aliyun/oss/model/UpgradeUdfApplicationRequest;->imageVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public setImageVersion(Ljava/lang/Integer;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/aliyun/oss/model/UpgradeUdfApplicationRequest;->imageVersion:Ljava/lang/Integer;

    return-void
.end method
