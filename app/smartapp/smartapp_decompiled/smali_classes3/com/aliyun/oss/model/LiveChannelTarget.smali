.class public Lcom/aliyun/oss/model/LiveChannelTarget;
.super Ljava/lang/Object;
.source "LiveChannelTarget.java"


# static fields
.field public static LIVE_CHANNEL_DEFAULT_FRAG_COUNT:I = 0x3

.field public static LIVE_CHANNEL_DEFAULT_FRAG_DURATION:I = 0x5

.field public static LIVE_CHANNEL_DEFAULT_PLAY_LIST_NAME:Ljava/lang/String; = "playlist.m3u8"

.field public static LIVE_CHANNEL_DEFAULT_TYPE:Ljava/lang/String; = "HLS"


# instance fields
.field private fragCount:I

.field private fragDuration:I

.field private playlistName:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/aliyun/oss/model/LiveChannelTarget;->LIVE_CHANNEL_DEFAULT_TYPE:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->type:Ljava/lang/String;

    .line 33
    sget v0, Lcom/aliyun/oss/model/LiveChannelTarget;->LIVE_CHANNEL_DEFAULT_FRAG_DURATION:I

    iput v0, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->fragDuration:I

    .line 34
    sget v0, Lcom/aliyun/oss/model/LiveChannelTarget;->LIVE_CHANNEL_DEFAULT_FRAG_COUNT:I

    iput v0, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->fragCount:I

    .line 35
    sget-object v0, Lcom/aliyun/oss/model/LiveChannelTarget;->LIVE_CHANNEL_DEFAULT_PLAY_LIST_NAME:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->playlistName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->type:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->fragDuration:I

    .line 49
    iput p3, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->fragCount:I

    .line 50
    iput-object p4, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->playlistName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->type:Ljava/lang/String;

    .line 40
    sget p1, Lcom/aliyun/oss/model/LiveChannelTarget;->LIVE_CHANNEL_DEFAULT_FRAG_DURATION:I

    iput p1, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->fragDuration:I

    .line 41
    sget p1, Lcom/aliyun/oss/model/LiveChannelTarget;->LIVE_CHANNEL_DEFAULT_FRAG_COUNT:I

    iput p1, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->fragCount:I

    .line 42
    iput-object p2, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->playlistName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFragCount()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->fragCount:I

    return v0
.end method

.method public getFragDuration()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->fragDuration:I

    return v0
.end method

.method public getPlaylistName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->playlistName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setFragCount(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->fragCount:I

    return-void
.end method

.method public setFragDuration(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->fragDuration:I

    return-void
.end method

.method public setPlaylistName(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->playlistName:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelTarget;->type:Ljava/lang/String;

    return-void
.end method
