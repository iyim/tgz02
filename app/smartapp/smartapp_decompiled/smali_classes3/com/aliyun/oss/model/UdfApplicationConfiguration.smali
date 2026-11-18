.class public Lcom/aliyun/oss/model/UdfApplicationConfiguration;
.super Ljava/lang/Object;
.source "UdfApplicationConfiguration.java"


# instance fields
.field private flavor:Lcom/aliyun/oss/model/InstanceFlavor;

.field private imageVersion:Ljava/lang/Integer;

.field private instanceNum:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationConfiguration;->imageVersion:Ljava/lang/Integer;

    .line 30
    iput-object p2, p0, Lcom/aliyun/oss/model/UdfApplicationConfiguration;->instanceNum:Ljava/lang/Integer;

    .line 31
    new-instance p1, Lcom/aliyun/oss/model/InstanceFlavor;

    const-string p2, "ecs.n1.small"

    invoke-direct {p1, p2}, Lcom/aliyun/oss/model/InstanceFlavor;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationConfiguration;->flavor:Lcom/aliyun/oss/model/InstanceFlavor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/aliyun/oss/model/InstanceFlavor;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationConfiguration;->imageVersion:Ljava/lang/Integer;

    .line 36
    iput-object p2, p0, Lcom/aliyun/oss/model/UdfApplicationConfiguration;->instanceNum:Ljava/lang/Integer;

    .line 37
    iput-object p3, p0, Lcom/aliyun/oss/model/UdfApplicationConfiguration;->flavor:Lcom/aliyun/oss/model/InstanceFlavor;

    return-void
.end method


# virtual methods
.method public getFlavor()Lcom/aliyun/oss/model/InstanceFlavor;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfApplicationConfiguration;->flavor:Lcom/aliyun/oss/model/InstanceFlavor;

    return-object v0
.end method

.method public getImageVersion()Ljava/lang/Integer;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfApplicationConfiguration;->imageVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInstanceNum()Ljava/lang/Integer;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfApplicationConfiguration;->instanceNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public setFlavor(Lcom/aliyun/oss/model/InstanceFlavor;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationConfiguration;->flavor:Lcom/aliyun/oss/model/InstanceFlavor;

    return-void
.end method

.method public setImageVersion(Ljava/lang/Integer;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationConfiguration;->imageVersion:Ljava/lang/Integer;

    return-void
.end method

.method public setInstanceNum(Ljava/lang/Integer;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationConfiguration;->instanceNum:Ljava/lang/Integer;

    return-void
.end method
