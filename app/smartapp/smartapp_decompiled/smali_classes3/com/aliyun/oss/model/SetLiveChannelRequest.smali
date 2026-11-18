.class public Lcom/aliyun/oss/model/SetLiveChannelRequest;
.super Lcom/aliyun/oss/model/LiveChannelGenericRequest;
.source "SetLiveChannelRequest.java"


# instance fields
.field private status:Lcom/aliyun/oss/model/LiveChannelStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LiveChannelStatus;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iput-object p3, p0, Lcom/aliyun/oss/model/SetLiveChannelRequest;->status:Lcom/aliyun/oss/model/LiveChannelStatus;

    return-void
.end method


# virtual methods
.method public getLiveChannelStatus()Lcom/aliyun/oss/model/LiveChannelStatus;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/aliyun/oss/model/SetLiveChannelRequest;->status:Lcom/aliyun/oss/model/LiveChannelStatus;

    return-object v0
.end method

.method public setLiveChannelStatus(Lcom/aliyun/oss/model/LiveChannelStatus;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/aliyun/oss/model/SetLiveChannelRequest;->status:Lcom/aliyun/oss/model/LiveChannelStatus;

    return-void
.end method
