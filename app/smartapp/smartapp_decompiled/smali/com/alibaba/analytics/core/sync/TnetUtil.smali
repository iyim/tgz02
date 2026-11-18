.class public Lcom/alibaba/analytics/core/sync/TnetUtil;
.super Ljava/lang/Object;
.source "TnetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/analytics/core/sync/TnetUtil$UTSessionCb;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x2710

.field private static final GCRY_CIPHER_AES128:I = 0x10

.field private static final HEAD_LENGTH:I = 0x8

.field private static final Lock_Event:Ljava/lang/Object;

.field private static final Lock_Object:Ljava/lang/Object;

.field private static final PROTOCOL_MAX_LENGTH:I = 0x20000

.field private static final TAG:Ljava/lang/String; = "TnetUtil"

.field private static final WAIT_TIMEOUT:I = 0xea60

.field private static bFirstSpdySession:Z

.field private static errorCode:I

.field private static isGetWuaBeforeSpdySession:Z

.field public static mErrorCode:I

.field public static final mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

.field private static mResponseCache:Ljava/io/ByteArrayOutputStream;

.field private static mResponseLen:J

.field private static mResponseReceiveLen:J

.field private static protocolBytes:[B

.field private static sendBytes:I

.field private static spdySessionUT:Lorg/android/spdy/SpdySession;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    const/4 v0, 0x0

    .line 38
    sput v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->mErrorCode:I

    .line 40
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->Lock_Event:Ljava/lang/Object;

    .line 41
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->Lock_Object:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 48
    sput v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->errorCode:I

    .line 49
    sput v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendBytes:I

    const/4 v1, 0x0

    .line 50
    sput-object v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->spdySessionUT:Lorg/android/spdy/SpdySession;

    .line 51
    sput-object v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->mResponseCache:Ljava/io/ByteArrayOutputStream;

    const-wide/16 v2, 0x0

    .line 52
    sput-wide v2, Lcom/alibaba/analytics/core/sync/TnetUtil;->mResponseReceiveLen:J

    .line 53
    sput-wide v2, Lcom/alibaba/analytics/core/sync/TnetUtil;->mResponseLen:J

    .line 54
    sput-object v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->protocolBytes:[B

    const/4 v1, 0x1

    .line 57
    sput-boolean v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->bFirstSpdySession:Z

    .line 58
    sput-boolean v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->isGetWuaBeforeSpdySession:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lorg/android/spdy/SpdySession;
    .locals 1

    .line 34
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->spdySessionUT:Lorg/android/spdy/SpdySession;

    return-object v0
.end method

.method static synthetic access$002(Lorg/android/spdy/SpdySession;)Lorg/android/spdy/SpdySession;
    .locals 0

    .line 34
    sput-object p0, Lcom/alibaba/analytics/core/sync/TnetUtil;->spdySessionUT:Lorg/android/spdy/SpdySession;

    return-object p0
.end method

.method static synthetic access$100(Lorg/android/spdy/SpdySession;)V
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendCustomControlFrame(Lorg/android/spdy/SpdySession;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200()Ljava/io/ByteArrayOutputStream;
    .locals 1

    .line 34
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->mResponseCache:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method static synthetic access$202(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 0

    .line 34
    sput-object p0, Lcom/alibaba/analytics/core/sync/TnetUtil;->mResponseCache:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method

.method static synthetic access$300()J
    .locals 2

    .line 34
    sget-wide v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->mResponseLen:J

    return-wide v0
.end method

.method static synthetic access$302(J)J
    .locals 0

    .line 34
    sput-wide p0, Lcom/alibaba/analytics/core/sync/TnetUtil;->mResponseLen:J

    return-wide p0
.end method

.method static synthetic access$400([B)J
    .locals 2

    .line 34
    invoke-static {p0}, Lcom/alibaba/analytics/core/sync/TnetUtil;->getResponseBodyLen([B)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500()J
    .locals 2

    .line 34
    sget-wide v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->mResponseReceiveLen:J

    return-wide v0
.end method

.method static synthetic access$502(J)J
    .locals 0

    .line 34
    sput-wide p0, Lcom/alibaba/analytics/core/sync/TnetUtil;->mResponseReceiveLen:J

    return-wide p0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 34
    sget v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->errorCode:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0

    .line 34
    sput p0, Lcom/alibaba/analytics/core/sync/TnetUtil;->errorCode:I

    return p0
.end method

.method static synthetic access$700()V
    .locals 0

    .line 34
    invoke-static {}, Lcom/alibaba/analytics/core/sync/TnetUtil;->closeSession()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$800()V
    .locals 0

    .line 34
    invoke-static {}, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendCallbackNotify()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$900()Ljava/lang/Object;
    .locals 1

    .line 34
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->Lock_Object:Ljava/lang/Object;

    return-object v0
.end method

.method private static closeSession()V
    .locals 2

    .line 214
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V

    .line 215
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->Lock_Object:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->spdySessionUT:Lorg/android/spdy/SpdySession;

    if-eqz v1, :cond_0

    .line 217
    sget-object v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->spdySessionUT:Lorg/android/spdy/SpdySession;

    invoke-virtual {v1}, Lorg/android/spdy/SpdySession;->closeSession()I

    :cond_0
    const/4 v1, 0x0

    .line 219
    sput-object v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->spdySessionUT:Lorg/android/spdy/SpdySession;

    .line 221
    invoke-static {}, Lcom/alibaba/analytics/core/sync/BizRequest;->closeOutputStream()V

    .line 222
    invoke-static {}, Lcom/alibaba/analytics/utils/ZipDictUtils;->clear()V

    .line 223
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-static {}, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendCallbackNotify()V

    return-void

    :catchall_0
    move-exception v1

    .line 223
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getResponseBodyLen([B)J
    .locals 2

    if-eqz p0, :cond_1

    .line 375
    array-length v0, p0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 378
    invoke-static {p0, v0, v1}, Lcom/alibaba/analytics/utils/ByteUtils;->bytesToInt([BII)I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method static initTnetStream()V
    .locals 2

    .line 383
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->Lock_Object:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->spdySessionUT:Lorg/android/spdy/SpdySession;

    if-nez v1, :cond_0

    .line 385
    invoke-static {}, Lcom/alibaba/analytics/utils/ZipDictUtils;->clear()V

    .line 386
    invoke-static {}, Lcom/alibaba/analytics/core/sync/BizRequest;->initOutputStream()V

    const/4 v1, 0x1

    .line 387
    sput-boolean v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->bFirstSpdySession:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 389
    sput-boolean v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->bFirstSpdySession:Z

    .line 391
    :goto_0
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static refreshMiniWua()V
    .locals 1

    .line 395
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->spdySessionUT:Lorg/android/spdy/SpdySession;

    if-nez v0, :cond_0

    .line 396
    invoke-static {}, Lcom/alibaba/analytics/utils/WuaHelper;->getMiniWua()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mMiniWua:Ljava/lang/String;

    const/4 v0, 0x1

    .line 397
    sput-boolean v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->isGetWuaBeforeSpdySession:Z

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static sendCallbackNotify()V
    .locals 2

    .line 228
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->Lock_Event:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->Lock_Event:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 230
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static sendCustomControlFrame(Lorg/android/spdy/SpdySession;)V
    .locals 9

    .line 181
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->Lock_Object:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :cond_0
    :goto_0
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->spdySessionUT:Lorg/android/spdy/SpdySession;

    if-ne p0, v1, :cond_3

    sget-object v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->spdySessionUT:Lorg/android/spdy/SpdySession;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->protocolBytes:[B

    if-eqz v1, :cond_3

    sget-object v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->protocolBytes:[B

    array-length v1, v1

    sget v2, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v1, v2, :cond_3

    .line 186
    :try_start_1
    sget-object v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->protocolBytes:[B

    array-length v1, v1

    sget v2, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendBytes:I

    sub-int/2addr v1, v2

    const/high16 v2, 0x20000

    if-le v1, v2, :cond_1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/high16 v7, 0x20000

    .line 187
    sget-object v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->protocolBytes:[B

    sget v3, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendBytes:I

    .line 188
    invoke-static {v1, v3, v2}, Lcom/alibaba/analytics/utils/ByteUtils;->subBytes([BII)[B

    move-result-object v8

    move-object v3, p0

    .line 187
    invoke-virtual/range {v3 .. v8}, Lorg/android/spdy/SpdySession;->sendCustomControlFrame(IIII[B)I

    .line 189
    sget v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendBytes:I

    add-int/2addr v1, v2

    sput v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendBytes:I

    goto :goto_0

    .line 191
    :cond_1
    sget-object v1, Lcom/alibaba/analytics/core/sync/TnetUtil;->protocolBytes:[B

    array-length v1, v1

    sget v2, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendBytes:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 193
    sget-object v2, Lcom/alibaba/analytics/core/sync/TnetUtil;->protocolBytes:[B

    sget v3, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendBytes:I

    .line 194
    invoke-static {v2, v3, v1}, Lcom/alibaba/analytics/utils/ByteUtils;->subBytes([BII)[B

    move-result-object v8

    move-object v3, p0

    move v7, v1

    .line 193
    invoke-virtual/range {v3 .. v8}, Lorg/android/spdy/SpdySession;->sendCustomControlFrame(IIII[B)I

    .line 195
    sget v2, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendBytes:I

    add-int/2addr v2, v1

    sput v2, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendBytes:I
    :try_end_1
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "TnetUtil"

    const/4 v2, 0x2

    .line 199
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "SpdyErrorException"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p0}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v1

    const/16 v2, -0xf08

    if-eq v1, v2, :cond_2

    .line 201
    invoke-virtual {p0}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result p0

    sput p0, Lcom/alibaba/analytics/core/sync/TnetUtil;->errorCode:I

    .line 202
    invoke-static {}, Lcom/alibaba/analytics/core/sync/TnetUtil;->closeSession()V

    .line 204
    :cond_2
    monitor-exit v0

    return-void

    .line 207
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 210
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static sendRequest([B)Lcom/alibaba/analytics/core/sync/BizResponse;
    .locals 25

    .line 61
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V

    .line 62
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->TNET_REQUEST_SEND:I

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;)V

    .line 64
    new-instance v1, Lcom/alibaba/analytics/core/sync/BizResponse;

    invoke-direct {v1}, Lcom/alibaba/analytics/core/sync/BizResponse;-><init>()V

    .line 66
    sget-object v4, Lcom/alibaba/analytics/core/sync/TnetUtil;->Lock_Object:Ljava/lang/Object;

    monitor-enter v4

    .line 67
    :try_start_0
    sput-object p0, Lcom/alibaba/analytics/core/sync/TnetUtil;->protocolBytes:[B

    const/4 v5, 0x0

    .line 68
    sput v5, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendBytes:I

    .line 69
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 70
    sget-object v6, Lcom/alibaba/analytics/core/sync/TnetUtil;->Lock_Event:Ljava/lang/Object;

    monitor-enter v6

    .line 71
    :try_start_1
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->mResponseCache:Ljava/io/ByteArrayOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_0

    .line 73
    :try_start_2
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->mResponseCache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 78
    :catch_0
    :cond_0
    :try_start_3
    sput-object v3, Lcom/alibaba/analytics/core/sync/TnetUtil;->mResponseCache:Ljava/io/ByteArrayOutputStream;

    const-wide/16 v7, 0x0

    .line 79
    sput-wide v7, Lcom/alibaba/analytics/core/sync/TnetUtil;->mResponseReceiveLen:J

    .line 80
    sput-wide v7, Lcom/alibaba/analytics/core/sync/TnetUtil;->mResponseLen:J

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v0, -0x1

    .line 83
    sput v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->errorCode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v4, 0x4

    const/4 v9, 0x3

    const-wide/32 v10, 0xea60

    const/4 v12, 0x2

    const/4 v13, 0x1

    .line 85
    :try_start_4
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->spdySessionUT:Lorg/android/spdy/SpdySession;

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->bFirstSpdySession:Z

    if-nez v0, :cond_1

    .line 86
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->isGzipUpload()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 87
    :cond_1
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->isSelfMonitorTurnOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v14, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->TNET_CREATE_SESSION:I

    invoke-static {v14, v3, v2}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;)V

    .line 91
    :cond_2
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    sget-object v14, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v15, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v0, v14, v15}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->getInstance()Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->getInitSecurityCheck()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 94
    new-instance v14, Lcom/alibaba/analytics/core/sync/TnetUtil$1;

    invoke-direct {v14}, Lcom/alibaba/analytics/core/sync/TnetUtil$1;-><init>()V

    invoke-virtual {v0, v14}, Lorg/android/spdy/SpdyAgent;->setAccsSslCallback(Lorg/android/spdy/AccsSSLCallback;)V

    .line 105
    :cond_3
    invoke-static {}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->getInstance()Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->isIpv6Connection()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->getInstance()Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->getHostPortEntity()Lcom/alibaba/analytics/core/ipv6/TnetIpv6HostListener$TnetIpv6HostPort;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 107
    invoke-static {}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->getInstance()Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->getHostPortEntity()Lcom/alibaba/analytics/core/ipv6/TnetIpv6HostListener$TnetIpv6HostPort;

    move-result-object v14

    .line 108
    invoke-virtual {v14}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6HostListener$TnetIpv6HostPort;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 109
    invoke-virtual {v14}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6HostListener$TnetIpv6HostPort;->getPort()I

    move-result v14

    goto :goto_0

    .line 112
    :cond_4
    invoke-static {}, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;->getInstance()Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr;->getEntity()Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;

    move-result-object v14

    .line 113
    invoke-virtual {v14}, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 114
    invoke-virtual {v14}, Lcom/alibaba/analytics/core/sync/TnetHostPortMgr$TnetHostPort;->getPort()I

    move-result v14

    :goto_0
    move/from16 v18, v14

    const-string v14, "TnetUtil"

    .line 117
    new-array v3, v4, [Ljava/lang/Object;

    const-string v16, "host"

    aput-object v16, v3, v5

    aput-object v15, v3, v13

    const-string v16, "port"

    aput-object v16, v3, v12

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v9

    invoke-static {v14, v3}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    new-instance v3, Lcom/alibaba/analytics/core/sync/TnetUtil$UTSessionCb;

    invoke-direct {v3, v15}, Lcom/alibaba/analytics/core/sync/TnetUtil$UTSessionCb;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance v14, Lorg/android/spdy/SessionInfo;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x1090

    move-object/from16 v16, v14

    move-object/from16 v17, v15

    move-object/from16 v23, v3

    invoke-direct/range {v16 .. v24}, Lorg/android/spdy/SessionInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/SessionCb;I)V

    .line 121
    invoke-static {}, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->getInstance()Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->getInitSecurityCheck()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x8

    .line 122
    invoke-virtual {v14, v3}, Lorg/android/spdy/SessionInfo;->setPubKeySeqNum(I)V

    goto :goto_1

    :cond_5
    const/16 v3, 0x9

    .line 124
    invoke-virtual {v14, v3}, Lorg/android/spdy/SessionInfo;->setPubKeySeqNum(I)V

    :goto_1
    const/16 v3, 0x2710

    .line 127
    invoke-virtual {v14, v3}, Lorg/android/spdy/SessionInfo;->setConnectionTimeoutMs(I)V

    .line 130
    sget-object v3, Lcom/alibaba/analytics/core/sync/TnetUtil;->Lock_Object:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 131
    :try_start_5
    invoke-virtual {v0, v14}, Lorg/android/spdy/SpdyAgent;->createSession(Lorg/android/spdy/SessionInfo;)Lorg/android/spdy/SpdySession;

    move-result-object v0

    sput-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->spdySessionUT:Lorg/android/spdy/SpdySession;

    .line 133
    sget-boolean v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->isGetWuaBeforeSpdySession:Z

    if-nez v0, :cond_6

    .line 134
    invoke-static {}, Lcom/alibaba/analytics/utils/WuaHelper;->getMiniWua()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mMiniWua:Ljava/lang/String;

    const-string v0, "TnetUtil"

    .line 135
    new-array v14, v13, [Ljava/lang/Object;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetWua by createSession:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alibaba/analytics/core/sync/BizRequest;->mMiniWua:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v5

    invoke-static {v0, v14}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_6
    sput-boolean v5, Lcom/alibaba/analytics/core/sync/TnetUtil;->isGetWuaBeforeSpdySession:Z

    .line 138
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v0, "TnetUtil"

    .line 139
    new-array v3, v13, [Ljava/lang/Object;

    const-string v4, "createSession"

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->Lock_Event:Ljava/lang/Object;

    invoke-virtual {v0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 138
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    .line 141
    :cond_7
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->spdySessionUT:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->bFirstSpdySession:Z

    if-eqz v0, :cond_8

    .line 142
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->isGzipUpload()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 143
    :cond_8
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->spdySessionUT:Lorg/android/spdy/SpdySession;

    invoke-static {v0}, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendCustomControlFrame(Lorg/android/spdy/SpdySession;)V

    .line 144
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->Lock_Event:Ljava/lang/Object;

    invoke-virtual {v0, v10, v11}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 146
    :cond_9
    invoke-static {}, Lcom/alibaba/analytics/core/sync/TnetUtil;->closeSession()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v0

    .line 149
    :try_start_9
    invoke-static {}, Lcom/alibaba/analytics/core/sync/TnetUtil;->closeSession()V

    const-string v3, "TnetUtil"

    .line 150
    new-array v4, v12, [Ljava/lang/Object;

    const-string v14, "CreateSession Exception"

    aput-object v14, v4, v5

    aput-object v0, v4, v13

    invoke-static {v3, v4}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v7

    cmp-long v0, v3, v10

    if-ltz v0, :cond_b

    .line 155
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->isSelfMonitorTurnOn()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 156
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v7, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->TNET_REQUEST_TIMEOUT:I

    const/4 v8, 0x0

    invoke-static {v7, v8, v2}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;)V

    .line 158
    :cond_a
    invoke-static {}, Lcom/alibaba/analytics/core/sync/TnetUtil;->closeSession()V

    const-string v0, "TnetUtil"

    .line 159
    new-array v2, v13, [Ljava/lang/Object;

    const-string v7, "WAIT_TIMEOUT"

    aput-object v7, v2, v5

    invoke-static {v0, v2}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_b
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 162
    sget v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendBytes:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Lcom/alibaba/analytics/core/sync/BizRequest;->recordTraffic(J)V

    .line 163
    sget-object v2, Lcom/alibaba/analytics/core/sync/TnetUtil;->Lock_Object:Ljava/lang/Object;

    monitor-enter v2

    const/4 v6, 0x0

    .line 164
    :try_start_a
    sput-object v6, Lcom/alibaba/analytics/core/sync/TnetUtil;->protocolBytes:[B

    .line 165
    sput v5, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendBytes:I

    .line 166
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 168
    sget v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->errorCode:I

    iput v0, v1, Lcom/alibaba/analytics/core/sync/BizResponse;->errCode:I

    .line 169
    iput-wide v3, v1, Lcom/alibaba/analytics/core/sync/BizResponse;->rt:J

    .line 170
    sget-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/analytics/core/sync/BizResponse;->data:Ljava/lang/String;

    const/4 v2, 0x0

    .line 171
    sput-object v2, Lcom/alibaba/analytics/core/sync/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    .line 173
    sget v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->errorCode:I

    sput v0, Lcom/alibaba/analytics/core/sync/TnetUtil;->mErrorCode:I

    const/4 v0, 0x6

    .line 174
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "PostData isSuccess"

    aput-object v2, v0, v5

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/sync/BizResponse;->isSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v13

    const-string v2, "errCode"

    aput-object v2, v0, v12

    iget v2, v1, Lcom/alibaba/analytics/core/sync/BizResponse;->errCode:I

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v9

    const-string/jumbo v2, "rt"

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    iget-wide v3, v1, Lcom/alibaba/analytics/core/sync/BizResponse;->rt:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "TnetUtil"

    .line 174
    invoke-static {v2, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :catchall_1
    move-exception v0

    .line 166
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 161
    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 69
    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v0
.end method
