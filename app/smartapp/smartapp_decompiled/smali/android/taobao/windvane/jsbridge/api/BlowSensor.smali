.class public Landroid/taobao/windvane/jsbridge/api/BlowSensor;
.super Ljava/lang/Object;
.source "BlowSensor.java"


# static fields
.field public static final BLOW_HANDLER_BLOWING:I = 0x1005

.field public static final BLOW_HANDLER_FAIL:I = 0x1006


# instance fields
.field private BLOW_ACTIVI:I

.field private SAMPLE_RATE_IN_HZ:I

.field private ar:Landroid/media/AudioRecord;

.field private bs:I

.field private buffer:[B

.field private mHandler:Landroid/os/Handler;

.field private mTimer:Ljava/util/Timer;

.field private number:I

.field private time:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 6

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 31
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->bs:I

    const/16 v0, 0x1f40

    .line 32
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->SAMPLE_RATE_IN_HZ:I

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->number:I

    const-wide/16 v0, 0x1

    .line 35
    iput-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->time:J

    const/16 v0, 0xbb8

    .line 37
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->BLOW_ACTIVI:I

    .line 40
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->mHandler:Landroid/os/Handler;

    .line 41
    iget p1, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->SAMPLE_RATE_IN_HZ:I

    const/16 v0, 0x10

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    iput p1, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->bs:I

    .line 42
    new-instance p1, Landroid/media/AudioRecord;

    iget v2, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->SAMPLE_RATE_IN_HZ:I

    iget v5, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->bs:I

    const/4 v1, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->ar:Landroid/media/AudioRecord;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/jsbridge/api/BlowSensor;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->recordBlow()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private recordBlow()V
    .locals 9

    .line 48
    :try_start_0
    iget v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->number:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->number:I

    const-wide/16 v2, 0x8

    .line 49
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 51
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->ar:Landroid/media/AudioRecord;

    iget-object v4, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->buffer:[B

    iget v5, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->bs:I

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v4, 0x0

    .line 53
    :goto_0
    iget-object v5, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->buffer:[B

    array-length v5, v5

    if-ge v6, v5, :cond_0

    .line 54
    iget-object v5, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->buffer:[B

    aget-byte v5, v5, v6

    iget-object v7, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->buffer:[B

    aget-byte v7, v7, v6

    mul-int v5, v5, v7

    add-int/2addr v4, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 56
    :cond_0
    div-int/2addr v4, v0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 58
    iget-wide v7, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->time:J

    sub-long/2addr v5, v2

    add-long/2addr v7, v5

    iput-wide v7, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->time:J

    .line 59
    iget-wide v2, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->time:J

    const-wide/16 v5, 0x1f4

    cmp-long v0, v2, v5

    if-gez v0, :cond_1

    iget v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->number:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_2

    .line 60
    :cond_1
    iget v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->BLOW_ACTIVI:I

    if-le v4, v0, :cond_2

    .line 62
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1005

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    iput v1, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->number:I

    const-wide/16 v0, 0x1

    .line 64
    iput-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->time:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 68
    :catch_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 69
    invoke-virtual {p0}, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->stop()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public start()V
    .locals 8

    .line 75
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->ar:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 76
    iget v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->bs:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->buffer:[B

    .line 78
    new-instance v0, Ljava/util/Timer;

    const-string v1, "WVBlowTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->mTimer:Ljava/util/Timer;

    .line 79
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->mTimer:Ljava/util/Timer;

    new-instance v3, Landroid/taobao/windvane/jsbridge/api/BlowSensor$1;

    invoke-direct {v3, p0}, Landroid/taobao/windvane/jsbridge/api/BlowSensor$1;-><init>(Landroid/taobao/windvane/jsbridge/api/BlowSensor;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x64

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    invoke-virtual {p0}, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->stop()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 92
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->ar:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->ar:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 94
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->ar:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/16 v0, 0x64

    .line 95
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->bs:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :catch_0
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    return-void
.end method
