.class public Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;
.super Ljava/lang/Object;
.source "LiveChannelStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/model/LiveChannelStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoStat"
.end annotation


# instance fields
.field private bandWidth:I

.field private codec:Ljava/lang/String;

.field private frameRate:I

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->width:I

    .line 36
    iput p2, p0, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->height:I

    .line 37
    iput p3, p0, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->frameRate:I

    .line 38
    iput p4, p0, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->bandWidth:I

    .line 39
    iput-object p5, p0, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->codec:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBandWidth()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->bandWidth:I

    return v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->frameRate:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->width:I

    return v0
.end method

.method public setBandWidth(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->bandWidth:I

    return-void
.end method

.method public setCodec(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->codec:Ljava/lang/String;

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->frameRate:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->width:I

    return-void
.end method
