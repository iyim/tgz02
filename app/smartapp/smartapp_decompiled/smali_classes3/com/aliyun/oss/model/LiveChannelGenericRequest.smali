.class public Lcom/aliyun/oss/model/LiveChannelGenericRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "LiveChannelGenericRequest.java"


# instance fields
.field private liveChannelName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lcom/aliyun/oss/model/LiveChannelGenericRequest;->liveChannelName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLiveChannelName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelGenericRequest;->liveChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public setLiveChannelName(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelGenericRequest;->liveChannelName:Ljava/lang/String;

    return-void
.end method
