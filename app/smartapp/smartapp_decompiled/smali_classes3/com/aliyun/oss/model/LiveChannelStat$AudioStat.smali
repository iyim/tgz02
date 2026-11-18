.class public Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;
.super Ljava/lang/Object;
.source "LiveChannelStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/model/LiveChannelStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioStat"
.end annotation


# instance fields
.field private bandWidth:I

.field private codec:Ljava/lang/String;

.field private sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;->bandWidth:I

    .line 105
    iput p2, p0, Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;->sampleRate:I

    .line 106
    iput-object p3, p0, Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;->codec:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBandWidth()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;->bandWidth:I

    return v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;->sampleRate:I

    return v0
.end method

.method public setBandWidth(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;->bandWidth:I

    return-void
.end method

.method public setCodec(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;->codec:Ljava/lang/String;

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;->sampleRate:I

    return-void
.end method
