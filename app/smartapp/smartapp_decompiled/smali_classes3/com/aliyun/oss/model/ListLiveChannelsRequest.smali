.class public Lcom/aliyun/oss/model/ListLiveChannelsRequest;
.super Lcom/aliyun/oss/model/LiveChannelGenericRequest;
.source "ListLiveChannelsRequest.java"


# static fields
.field private static final MAX_RETURNED_KEYS_LIMIT:I = 0x64


# instance fields
.field private marker:Ljava/lang/String;

.field private maxKeys:Ljava/lang/Integer;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p2}, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->setPrefix(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p3}, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->setMarker(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->setPrefix(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p3}, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->setMarker(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p4}, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->setMaxKeys(I)V

    return-void
.end method


# virtual methods
.method public getMarker()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()Ljava/lang/Integer;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->maxKeys:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->marker:Ljava/lang/String;

    return-void
.end method

.method public setMaxKeys(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->maxKeys:Ljava/lang/Integer;

    return-void

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/aliyun/oss/internal/OSSUtils;->OSS_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const-string v1, "MaxKeysOutOfRange"

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/common/utils/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->prefix:Ljava/lang/String;

    return-void
.end method

.method public withMarker(Ljava/lang/String;)Lcom/aliyun/oss/model/ListLiveChannelsRequest;
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->setMarker(Ljava/lang/String;)V

    return-object p0
.end method

.method public withMaxKeys(Ljava/lang/Integer;)Lcom/aliyun/oss/model/ListLiveChannelsRequest;
    .locals 0

    .line 124
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->setMaxKeys(I)V

    return-object p0
.end method

.method public withPrefix(Ljava/lang/String;)Lcom/aliyun/oss/model/ListLiveChannelsRequest;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->setPrefix(Ljava/lang/String;)V

    return-object p0
.end method
