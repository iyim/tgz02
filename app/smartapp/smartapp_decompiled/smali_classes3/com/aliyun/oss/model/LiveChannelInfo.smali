.class public Lcom/aliyun/oss/model/LiveChannelInfo;
.super Lcom/aliyun/oss/model/GenericResult;
.source "LiveChannelInfo.java"


# instance fields
.field private description:Ljava/lang/String;

.field private status:Lcom/aliyun/oss/model/LiveChannelStatus;

.field private target:Lcom/aliyun/oss/model/LiveChannelTarget;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/aliyun/oss/model/LiveChannelStatus;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelInfo;->status:Lcom/aliyun/oss/model/LiveChannelStatus;

    return-object v0
.end method

.method public getTarget()Lcom/aliyun/oss/model/LiveChannelTarget;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelInfo;->target:Lcom/aliyun/oss/model/LiveChannelTarget;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lcom/aliyun/oss/model/LiveChannelStatus;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelInfo;->status:Lcom/aliyun/oss/model/LiveChannelStatus;

    return-void
.end method

.method public setTarget(Lcom/aliyun/oss/model/LiveChannelTarget;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelInfo;->target:Lcom/aliyun/oss/model/LiveChannelTarget;

    return-void
.end method
