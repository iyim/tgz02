.class public Lcom/aliyun/oss/model/LiveChannelListing;
.super Ljava/lang/Object;
.source "LiveChannelListing.java"


# instance fields
.field private isTruncated:Z

.field private liveChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LiveChannel;",
            ">;"
        }
    .end annotation
.end field

.field private marker:Ljava/lang/String;

.field private maxKeys:I

.field private nextMarker:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/LiveChannelListing;->liveChannels:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addLiveChannel(Lcom/aliyun/oss/model/LiveChannel;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelListing;->liveChannels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getLiveChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LiveChannel;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelListing;->liveChannels:Ljava/util/List;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelListing;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/aliyun/oss/model/LiveChannelListing;->maxKeys:I

    return v0
.end method

.method public getNextMarker()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelListing;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelListing;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/aliyun/oss/model/LiveChannelListing;->isTruncated:Z

    return v0
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelListing;->marker:Ljava/lang/String;

    return-void
.end method

.method public setMaxKeys(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/aliyun/oss/model/LiveChannelListing;->maxKeys:I

    return-void
.end method

.method public setNextMarker(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelListing;->nextMarker:Ljava/lang/String;

    return-void
.end method

.method public setObjectSummaries(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LiveChannel;",
            ">;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelListing;->liveChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 37
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelListing;->liveChannels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelListing;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/aliyun/oss/model/LiveChannelListing;->isTruncated:Z

    return-void
.end method
