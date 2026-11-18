.class public Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;
.super Ljava/lang/Object;
.source "RecordDevice.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/record/IAGRecordProducer;
.implements Ljava/lang/Runnable;


# static fields
.field private static final RECORD_SUM_MAX:I = 0x2710

.field private static final STATE_ENABLE:I = 0x3

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_UNKNOWN:I = -0x1

.field private static final STATE_VAD_END:I = 0x2

.field private static final STATE_WAKEUP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RecordDevice"


# instance fields
.field private mBuffer:[B

.field private mDevice:Lcom/alibaba/ailabs/geniesdk/record/IRecordDevice;

.field private volatile mIsDestroy:Z

.field private volatile mIsEnable:Z

.field private mIsRecording:Z

.field private mListener:Lcom/alibaba/ailabs/geniesdk/record/IAGRecordConsumer;

.field private final mLock:Ljava/lang/Object;

.field private mMode:I

.field private volatile mNextState:I

.field private mRecordSumMax:J

.field private mSessionId:I

.field private mThread:Ljava/lang/Thread;

.field private volatile mTmpWakeUpInfo:Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;

.field private mWakeupTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/geniesdk/record/IRecordDevice;II)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mLock:Ljava/lang/Object;

    .line 38
    iput-object p2, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/record/IRecordDevice;

    .line 39
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mBuffer:[B

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mIsEnable:Z

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mIsDestroy:Z

    .line 43
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mIsRecording:Z

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mNextState:I

    .line 45
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mSessionId:I

    .line 46
    iput p4, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mMode:I

    const-wide/16 p1, 0x2710

    .line 47
    iput-wide p1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mRecordSumMax:J

    .line 48
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->init()V

    return-void
.end method

.method private check()I
    .locals 12

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mNextState:I

    const/4 v2, 0x0

    .line 125
    iput v2, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mNextState:I

    .line 126
    iget-object v3, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mTmpWakeUpInfo:Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;

    const/4 v3, 0x0

    .line 127
    iput-object v3, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mTmpWakeUpInfo:Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;

    .line 129
    iget-boolean v3, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mIsDestroy:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    const-string v1, "RecordDevice"

    const-string v2, "quit record"

    .line 130
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    monitor-exit v0

    return v4

    .line 134
    :cond_0
    iget-boolean v3, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mIsEnable:Z

    if-nez v3, :cond_1

    const-string v1, "RecordDevice"

    const-string v3, "forbidden record"

    .line 135
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    monitor-exit v0

    return v2

    .line 138
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->getInputDeviceListener()Lcom/alibaba/ailabs/geniesdk/record/IAGRecordConsumer;

    move-result-object v3

    if-ne v1, v4, :cond_2

    const-string v0, "RecordDevice"

    const-string v1, "nothing"

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v1, v4, :cond_4

    .line 146
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mMode:I

    if-ne v0, v5, :cond_3

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mWakeupTime:J

    :cond_3
    const-string v0, "RecordDevice"

    const-string v1, "wake up"

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_4
    if-ne v1, v5, :cond_5

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vad end, time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mWakeupTime:J

    sub-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->waitEvent()V

    goto/16 :goto_3

    :cond_5
    const/4 v0, 0x3

    if-ne v1, v0, :cond_6

    .line 156
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mMode:I

    if-ne v0, v5, :cond_6

    const-string v0, "RecordDevice"

    const-string v1, "enable to stop record"

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 161
    :cond_6
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/record/IRecordDevice;

    .line 165
    :cond_7
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->startRecording()V

    .line 170
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mBuffer:[B

    iget-object v6, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mBuffer:[B

    array-length v6, v6

    invoke-interface {v1, v0, v2, v6}, Lcom/alibaba/ailabs/geniesdk/record/IRecordDevice;->read([BII)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v6, "RecordDevice"

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read record  len = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    const/4 v0, 0x0

    .line 174
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-lez v0, :cond_8

    .line 178
    iget-object v6, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mBuffer:[B

    invoke-interface {v3, v6, v0}, Lcom/alibaba/ailabs/geniesdk/record/IAGRecordConsumer;->feed([BI)I

    goto :goto_2

    .line 180
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read record data error, len = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "RecordDevice"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_2
    iget-wide v6, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mWakeupTime:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_9

    iget-wide v10, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mRecordSumMax:J

    add-long/2addr v6, v10

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    cmp-long v0, v6, v10

    if-gez v0, :cond_9

    .line 187
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->stop()I

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeout record, time = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mWakeupTime:J

    sub-long/2addr v6, v10

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "RecordDevice"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-wide v8, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mWakeupTime:J

    .line 191
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mMode:I

    if-ne v0, v5, :cond_9

    return v2

    .line 195
    :cond_9
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mNextState:I

    if-eqz v0, :cond_7

    :goto_3
    return v4

    :catchall_0
    move-exception v1

    .line 138
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method private init()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mThread:Ljava/lang/Thread;

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    const-string v0, "RecordDevice"

    const-string v1, "init"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyEvent()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "RecordDevice"

    const-string v2, "send notify event"

    .line 109
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 113
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private releaseRecording()V
    .locals 2

    const-string v0, "RecordDevice"

    const-string v1, "release recording"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/record/IRecordDevice;

    .line 205
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/record/IRecordDevice;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startRecording()V
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mIsRecording:Z

    if-nez v0, :cond_0

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/record/IRecordDevice;

    .line 227
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/record/IRecordDevice;->startRecording()V

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mIsRecording:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private stopRecording()V
    .locals 2

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/record/IRecordDevice;

    .line 214
    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mIsRecording:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 215
    iput-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mIsRecording:Z

    .line 216
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/record/IRecordDevice;->stopRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private waitEvent()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "RecordDevice"

    const-string v2, "wait event"

    .line 95
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mNextState:I

    if-eqz v1, :cond_0

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 100
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 102
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public getInputDeviceListener()Lcom/alibaba/ailabs/geniesdk/record/IAGRecordConsumer;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mListener:Lcom/alibaba/ailabs/geniesdk/record/IAGRecordConsumer;

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mDevice:Lcom/alibaba/ailabs/geniesdk/record/IRecordDevice;

    .line 241
    :try_start_0
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/record/IRecordDevice;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->check()I

    move-result v1

    if-nez v1, :cond_2

    .line 251
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->stopRecording()V

    .line 253
    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mIsEnable:Z

    if-nez v1, :cond_1

    .line 254
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->releaseRecording()V

    .line 256
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->waitEvent()V

    .line 258
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mIsDestroy:Z

    if-eqz v1, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->stopRecording()V

    .line 264
    :try_start_1
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/record/IRecordDevice;->deinit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setConsumer(Lcom/alibaba/ailabs/geniesdk/record/IAGRecordConsumer;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mListener:Lcom/alibaba/ailabs/geniesdk/record/IAGRecordConsumer;

    return-void
.end method

.method public start()I
    .locals 2

    const-string v0, "RecordDevice"

    const-string v1, "start"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 65
    :try_start_0
    iput v1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mNextState:I

    .line 66
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->startRecording()V

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->notifyEvent()V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    .line 67
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stop()I
    .locals 2

    const-string v0, "RecordDevice"

    const-string v1, "stop"

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 76
    :try_start_0
    iput v1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mNextState:I

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->mTmpWakeUpInfo:Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;

    .line 78
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->stopRecording()V

    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/record/RecordDevice;->notifyEvent()V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    .line 79
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
