.class public Lcom/aliyun/oss/model/LiveChannelStat;
.super Lcom/aliyun/oss/model/GenericResult;
.source "LiveChannelStat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;,
        Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;
    }
.end annotation


# instance fields
.field private audioStat:Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;

.field private connectedDate:Ljava/util/Date;

.field private remoteAddress:Ljava/lang/String;

.field private status:Lcom/aliyun/oss/model/PushflowStatus;

.field private videoStat:Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAudioStat()Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelStat;->audioStat:Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;

    return-object v0
.end method

.method public getConnectedDate()Ljava/util/Date;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelStat;->connectedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getPushflowStatus()Lcom/aliyun/oss/model/PushflowStatus;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelStat;->status:Lcom/aliyun/oss/model/PushflowStatus;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelStat;->remoteAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoStat()Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelStat;->videoStat:Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;

    return-object v0
.end method

.method public setAudioStat(Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelStat;->audioStat:Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;

    return-void
.end method

.method public setConnectedDate(Ljava/util/Date;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelStat;->connectedDate:Ljava/util/Date;

    return-void
.end method

.method public setPushflowStatus(Lcom/aliyun/oss/model/PushflowStatus;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelStat;->status:Lcom/aliyun/oss/model/PushflowStatus;

    return-void
.end method

.method public setRemoteAddress(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelStat;->remoteAddress:Ljava/lang/String;

    return-void
.end method

.method public setVideoStat(Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelStat;->videoStat:Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;

    return-void
.end method
