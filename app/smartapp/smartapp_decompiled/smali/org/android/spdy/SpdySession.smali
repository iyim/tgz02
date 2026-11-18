.class public final Lorg/android/spdy/SpdySession;
.super Ljava/lang/Object;
.source "SpdySession.java"


# static fields
.field private static volatile count:I


# instance fields
.field private agent:Lorg/android/spdy/SpdyAgent;

.field private authority:Ljava/lang/String;

.field private closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private domain:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field intenalcb:Lorg/android/spdy/Intenalcb;

.field private lock:Ljava/lang/Object;

.field private mode:I

.field private pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

.field private pubkey_seqnum:I

.field private quicConnectionID:J

.field volatile refcount:I

.field sessionCallBack:Lorg/android/spdy/SessionCb;

.field private sessionClearedFromSessionMgr:Z

.field private volatile sessionNativePtr:J

.field private spdyStream:Lorg/android/spdy/NetSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/android/spdy/NetSparseArray<",
            "Lorg/android/spdy/SpdyStreamContext;",
            ">;"
        }
    .end annotation
.end field

.field private streamcount:I

.field private thread:Landroid/os/HandlerThread;

.field private userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(JLorg/android/spdy/SpdyAgent;Ljava/lang/String;Ljava/lang/String;Lorg/android/spdy/SessionCb;IILjava/lang/Object;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lorg/android/spdy/SpdySession;->sessionClearedFromSessionMgr:Z

    .line 28
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 29
    iput v1, p0, Lorg/android/spdy/SpdySession;->streamcount:I

    const/4 v2, 0x0

    .line 30
    iput-object v2, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    .line 31
    iput-object v2, p0, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    .line 32
    iput v0, p0, Lorg/android/spdy/SpdySession;->pubkey_seqnum:I

    .line 33
    iput-object v2, p0, Lorg/android/spdy/SpdySession;->userData:Ljava/lang/Object;

    .line 34
    iput v1, p0, Lorg/android/spdy/SpdySession;->refcount:I

    const-wide/16 v1, 0x0

    .line 398
    iput-wide v1, p0, Lorg/android/spdy/SpdySession;->quicConnectionID:J

    .line 44
    iput-wide p1, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    .line 45
    new-instance p1, Lorg/android/spdy/ProtectedPointer;

    invoke-direct {p1, p0}, Lorg/android/spdy/ProtectedPointer;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    .line 46
    iget-object p1, p0, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    new-instance p2, Lorg/android/spdy/SpdySession$1;

    invoke-direct {p2, p0}, Lorg/android/spdy/SpdySession$1;-><init>(Lorg/android/spdy/SpdySession;)V

    invoke-virtual {p1, p2}, Lorg/android/spdy/ProtectedPointer;->setHow2close(Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;)V

    .line 54
    iput-object p3, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    .line 55
    iput-object p4, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    .line 56
    new-instance p1, Lorg/android/spdy/SpdySessionCallBack;

    invoke-direct {p1}, Lorg/android/spdy/SpdySessionCallBack;-><init>()V

    iput-object p1, p0, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    .line 57
    iput-object p5, p0, Lorg/android/spdy/SpdySession;->domain:Ljava/lang/String;

    .line 59
    new-instance p1, Lorg/android/spdy/NetSparseArray;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lorg/android/spdy/NetSparseArray;-><init>(I)V

    iput-object p1, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    .line 60
    iput-object p6, p0, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    .line 61
    iput p8, p0, Lorg/android/spdy/SpdySession;->pubkey_seqnum:I

    .line 62
    iput p7, p0, Lorg/android/spdy/SpdySession;->mode:I

    .line 63
    iput-object p9, p0, Lorg/android/spdy/SpdySession;->userData:Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private native NotifyNotInvokeAnyMoreN(J)I
.end method

.method static synthetic access$000(Lorg/android/spdy/SpdySession;)J
    .locals 2

    .line 11
    iget-wide v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/android/spdy/SpdySession;J)I
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lorg/android/spdy/SpdySession;->NotifyNotInvokeAnyMoreN(J)I

    move-result p0

    return p0
.end method

.method private closeprivate()I
    .locals 12

    .line 370
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-boolean v0, p0, Lorg/android/spdy/SpdySession;->sessionClearedFromSessionMgr:Z

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    iget-object v2, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    iget-object v3, p0, Lorg/android/spdy/SpdySession;->domain:Ljava/lang/String;

    iget v4, p0, Lorg/android/spdy/SpdySession;->mode:I

    invoke-virtual {v0, v2, v3, v4}, Lorg/android/spdy/SpdyAgent;->clearSpdySession(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lorg/android/spdy/SpdySession;->sessionClearedFromSessionMgr:Z

    .line 375
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 378
    iget-object v8, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 380
    :try_start_1
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->getAllStreamCb()[Lorg/android/spdy/SpdyStreamContext;

    move-result-object v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    .line 382
    array-length v10, v0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_1

    aget-object v1, v0, v11

    const-string/jumbo v2, "tnet-jni"

    const-string v3, "[SpdySessionCallBack.spdyStreamCloseCallback] unfinished stm="

    .line 384
    iget v4, v1, Lorg/android/spdy/SpdyStreamContext;->streamId:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;J)V

    .line 385
    iget-object v2, v1, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget v3, v1, Lorg/android/spdy/SpdyStreamContext;->streamId:I

    int-to-long v3, v3

    const/16 v5, -0x7d1

    iget-object v6, v1, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v1, v2

    move-object v2, p0

    invoke-interface/range {v1 .. v7}, Lorg/android/spdy/Spdycb;->spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 388
    :cond_1
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v0}, Lorg/android/spdy/NetSparseArray;->clear()V

    .line 389
    monitor-exit v8

    return v9

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 375
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private getAuthority()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    return-object v0
.end method

.method private native sendCustomControlFrameN(JIIII[B)I
.end method

.method private native sendHeadersN(JI[Ljava/lang/String;Z)I
.end method

.method private native setOptionN(JII)I
.end method

.method private native streamCloseN(JII)I
.end method

.method private native streamSendDataN(JI[BIIZ)I
.end method

.method private native submitBioPingN(J)I
.end method

.method private native submitPingN(J)I
.end method

.method private native submitRequestN(JLjava/lang/String;B[Ljava/lang/String;[BZIII)I
.end method


# virtual methods
.method public cleanUp()I
    .locals 2

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[SpdySession.cleanUp] - "

    .line 327
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    invoke-virtual {v0, p0}, Lorg/android/spdy/SpdyAgent;->removeSession(Lorg/android/spdy/SpdySession;)V

    .line 331
    invoke-direct {p0}, Lorg/android/spdy/SpdySession;->closeprivate()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearAllStreamCb()V
    .locals 2

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[SpdySession.clearAllStreamCb] - "

    .line 125
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v1}, Lorg/android/spdy/NetSparseArray;->clear()V

    .line 128
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method closeInternal()I
    .locals 2

    .line 338
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    invoke-direct {p0}, Lorg/android/spdy/SpdySession;->closeprivate()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public closeSession()I
    .locals 6

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[SpdySession.closeSession] - "

    .line 345
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-boolean v1, p0, Lorg/android/spdy/SpdySession;->sessionClearedFromSessionMgr:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string/jumbo v1, "tnet-jni"

    const-string v3, "[SpdySession.closeSession] - "

    .line 349
    iget-object v4, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    iget-object v3, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    iget-object v4, p0, Lorg/android/spdy/SpdySession;->domain:Ljava/lang/String;

    iget v5, p0, Lorg/android/spdy/SpdySession;->mode:I

    invoke-virtual {v1, v3, v4, v5}, Lorg/android/spdy/SpdyAgent;->clearSpdySession(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 351
    iput-boolean v1, p0, Lorg/android/spdy/SpdySession;->sessionClearedFromSessionMgr:Z

    .line 352
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {v1}, Lorg/android/spdy/ProtectedPointer;->enter()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 354
    :try_start_1
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    iget-wide v3, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    invoke-virtual {v1, v3, v4}, Lorg/android/spdy/SpdyAgent;->closeSession(J)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :try_start_2
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    :goto_0
    invoke-virtual {v1}, Lorg/android/spdy/ProtectedPointer;->exit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 356
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 358
    :try_start_4
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {v2}, Lorg/android/spdy/ProtectedPointer;->exit()V

    throw v1

    :cond_0
    const/16 v2, -0x7d1

    .line 364
    :cond_1
    :goto_2
    monitor-exit v0

    return v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public getAllStreamCb()[Lorg/android/spdy/SpdyStreamContext;
    .locals 3

    .line 114
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v1}, Lorg/android/spdy/NetSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 117
    new-array v1, v1, [Lorg/android/spdy/SpdyStreamContext;

    .line 118
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v2, v1}, Lorg/android/spdy/NetSparseArray;->toArray([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 120
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->domain:Ljava/lang/String;

    return-object v0
.end method

.method getMsgHandler()Landroid/os/Handler;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getQuicConnectionID()Ljava/lang/String;
    .locals 5

    .line 313
    iget-wide v0, p0, Lorg/android/spdy/SpdySession;->quicConnectionID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 314
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    .line 317
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 318
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 319
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefCount()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/android/spdy/SpdySession;->refcount:I

    return v0
.end method

.method getSessionNativePtr()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    return-wide v0
.end method

.method getSpdyAgent()Lorg/android/spdy/SpdyAgent;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    return-object v0
.end method

.method getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;
    .locals 2

    if-lez p1, :cond_0

    .line 95
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v1, p1}, Lorg/android/spdy/NetSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/android/spdy/SpdyStreamContext;

    .line 97
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method increRefCount()V
    .locals 1

    .line 71
    iget v0, p0, Lorg/android/spdy/SpdySession;->refcount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/android/spdy/SpdySession;->refcount:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method putSpdyStreamCtx(Lorg/android/spdy/SpdyStreamContext;)I
    .locals 3

    .line 85
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iget v1, p0, Lorg/android/spdy/SpdySession;->streamcount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/android/spdy/SpdySession;->streamcount:I

    .line 87
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v2, v1, p1}, Lorg/android/spdy/NetSparseArray;->put(ILjava/lang/Object;)V

    .line 88
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method releasePptr()V
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {v0}, Lorg/android/spdy/ProtectedPointer;->release()V

    return-void
.end method

.method removeSpdyStream(I)V
    .locals 2

    if-lez p1, :cond_0

    .line 104
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v1, p1}, Lorg/android/spdy/NetSparseArray;->remove(I)V

    .line 106
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public sendCustomControlFrame(IIII[B)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    if-eqz p5, :cond_0

    .line 225
    array-length v0, p5

    if-gtz v0, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v7, p5

    int-to-long v0, p2

    const-string/jumbo p5, "tnet-jni"

    const-string v2, "[sendCustomControlFrame] - type: "

    .line 229
    invoke-static {p5, v2, v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;J)V

    .line 231
    iget-object p5, p0, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {p5}, Lorg/android/spdy/ProtectedPointer;->enter()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 232
    iget-wide v1, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/android/spdy/SpdySession;->sendCustomControlFrameN(JIIII[B)I

    move-result p1

    .line 233
    iget-object p2, p0, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {p2}, Lorg/android/spdy/ProtectedPointer;->exit()V

    goto :goto_0

    :cond_1
    const/16 p1, -0x7d1

    :goto_0
    if-nez p1, :cond_2

    return p1

    .line 237
    :cond_2
    new-instance p2, Lorg/android/spdy/SpdyErrorException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "sendCustomControlFrame error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method sessionIsOpen()V
    .locals 3

    .line 302
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const/16 v1, -0x450

    const-string/jumbo v2, "session is already closed: -1104"

    invoke-direct {v0, v2, v1}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public setOption(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 158
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {v0}, Lorg/android/spdy/ProtectedPointer;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-wide v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/android/spdy/SpdySession;->setOptionN(JII)I

    move-result p1

    .line 160
    iget-object p2, p0, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {p2}, Lorg/android/spdy/ProtectedPointer;->exit()V

    goto :goto_0

    :cond_0
    const/16 p1, -0x7d1

    :goto_0
    if-nez p1, :cond_1

    return p1

    .line 164
    :cond_1
    new-instance p2, Lorg/android/spdy/SpdyErrorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOption error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method setQuicConnectionID(J)V
    .locals 0

    .line 308
    iput-wide p1, p0, Lorg/android/spdy/SpdySession;->quicConnectionID:J

    return-void
.end method

.method setSessionNativePtr(J)V
    .locals 0

    .line 145
    iput-wide p1, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public streamReset(JI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[SpdySession.streamReset] - "

    .line 210
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {v0}, Lorg/android/spdy/ProtectedPointer;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-wide v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    long-to-int p2, p1

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/android/spdy/SpdySession;->streamCloseN(JII)I

    move-result p1

    .line 214
    iget-object p2, p0, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {p2}, Lorg/android/spdy/ProtectedPointer;->exit()V

    goto :goto_0

    :cond_0
    const/16 p1, -0x7d1

    :goto_0
    if-nez p1, :cond_1

    return p1

    .line 218
    :cond_1
    new-instance p2, Lorg/android/spdy/SpdyErrorException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "streamReset error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public submitBioPing()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 190
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {v0}, Lorg/android/spdy/ProtectedPointer;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-wide v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/android/spdy/SpdySession;->submitBioPingN(J)I

    move-result v0

    .line 192
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {v1}, Lorg/android/spdy/ProtectedPointer;->exit()V

    goto :goto_0

    :cond_0
    const/16 v0, -0x7d1

    :goto_0
    if-nez v0, :cond_1

    return v0

    .line 196
    :cond_1
    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "submitBioPing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public submitPing()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 176
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {v0}, Lorg/android/spdy/ProtectedPointer;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-wide v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/android/spdy/SpdySession;->submitPingN(J)I

    move-result v0

    .line 178
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {v1}, Lorg/android/spdy/ProtectedPointer;->exit()V

    goto :goto_0

    :cond_0
    const/16 v0, -0x7d1

    :goto_0
    if-nez v0, :cond_1

    return v0

    .line 182
    :cond_1
    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "submitPing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 257
    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 261
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 263
    invoke-static/range {p1 .. p2}, Lorg/android/spdy/SpdyAgent;->dataproviderToByteArray(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 266
    array-length v3, v2

    if-gtz v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    move-object v6, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 271
    iget-boolean v0, v0, Lorg/android/spdy/SpdyDataProvider;->finished:Z

    move v7, v0

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    .line 280
    :goto_0
    new-instance v12, Lorg/android/spdy/SpdyStreamContext;

    move-object/from16 v0, p4

    invoke-direct {v12, v1, v0}, Lorg/android/spdy/SpdyStreamContext;-><init>(Ljava/lang/Object;Lorg/android/spdy/Spdycb;)V

    .line 281
    invoke-virtual {p0, v12}, Lorg/android/spdy/SpdySession;->putSpdyStreamCtx(Lorg/android/spdy/SpdyStreamContext;)I

    move-result v13

    .line 282
    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lorg/android/spdy/SpdyAgent;->mapToByteArray(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v5

    .line 285
    iget-object v0, v11, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {v0}, Lorg/android/spdy/ProtectedPointer;->enter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iget-wide v1, v11, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getUrlPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getPriority()I

    move-result v0

    int-to-byte v4, v0

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getRequestTimeoutMs()I

    move-result v9

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getRequestRdTimeoutMs()I

    move-result v10

    move-object v0, p0

    move v8, v13

    invoke-direct/range {v0 .. v10}, Lorg/android/spdy/SpdySession;->submitRequestN(JLjava/lang/String;B[Ljava/lang/String;[BZIII)I

    move-result v0

    .line 287
    iget-object v1, v11, Lorg/android/spdy/SpdySession;->pptr4sessionNativePtr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {v1}, Lorg/android/spdy/ProtectedPointer;->exit()V

    goto :goto_1

    :cond_2
    const/16 v0, -0x7d1

    :goto_1
    if-ltz v0, :cond_3

    .line 296
    iput v0, v12, Lorg/android/spdy/SpdyStreamContext;->streamId:I

    return v0

    .line 293
    :cond_3
    invoke-virtual {p0, v13}, Lorg/android/spdy/SpdySession;->removeSpdyStream(I)V

    .line 294
    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "submitRequest error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 258
    :cond_4
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const/16 v1, -0x44e

    const-string/jumbo v2, "submitRequest error: -1102"

    invoke-direct {v0, v2, v1}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
