.class public Lcom/aliyun/oss/model/GenerateRtmpUriRequest;
.super Ljava/lang/Object;
.source "GenerateRtmpUriRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private expires:Ljava/lang/Long;

.field private liveChannelName:Ljava/lang/String;

.field private playlistName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;->bucketName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;->liveChannelName:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;->playlistName:Ljava/lang/String;

    .line 32
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;->expires:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/lang/Long;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;->expires:Ljava/lang/Long;

    return-object v0
.end method

.method public getLiveChannelName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;->liveChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;->playlistName:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setExpires(J)V
    .locals 0

    .line 64
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;->expires:Ljava/lang/Long;

    return-void
.end method

.method public setLiveChannelName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;->liveChannelName:Ljava/lang/String;

    return-void
.end method

.method public setPlaylistName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;->playlistName:Ljava/lang/String;

    return-void
.end method
