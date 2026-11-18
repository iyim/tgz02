.class public Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;
.super Lcom/aliyun/oss/model/LiveChannelGenericRequest;
.source "GenerateVodPlaylistRequest.java"


# instance fields
.field private endTime:Ljava/lang/Long;

.field private playlistName:Ljava/lang/String;

.field private stratTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iput-object p3, p0, Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;->playlistName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput-object p3, p0, Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;->playlistName:Ljava/lang/String;

    .line 34
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;->stratTime:Ljava/lang/Long;

    .line 35
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;->endTime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/lang/Long;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;->endTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getPlaylistName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;->playlistName:Ljava/lang/String;

    return-object v0
.end method

.method public getStratTime()Ljava/lang/Long;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;->stratTime:Ljava/lang/Long;

    return-object v0
.end method

.method public setEndTime(J)V
    .locals 0

    .line 59
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;->endTime:Ljava/lang/Long;

    return-void
.end method

.method public setPlaylistName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;->playlistName:Ljava/lang/String;

    return-void
.end method

.method public setStratTime(J)V
    .locals 0

    .line 51
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;->stratTime:Ljava/lang/Long;

    return-void
.end method
