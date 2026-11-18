.class public final Lorg/android/spdy/SpdyAgent;
.super Ljava/lang/Object;
.source "SpdyAgent.java"


# static fields
.field public static final ACCS_ONLINE_SERVER:I = 0x1

.field public static final ACCS_TEST_SERVER:I = 0x0

.field private static final HAVE_CLOSE:Z = false

.field private static final KB32:I = 0x8000

.field private static final KB8:I = 0x2000

.field private static final MAX_SPDY_SESSION_COUNT:I = 0x32

.field private static final MB5:I = 0x500000

.field static final MODE_QUIC:I = 0x100

.field static final SPDY_CUSTOM_CONTROL_FRAME_RECV:I = 0x100a

.field static final SPDY_DATA_CHUNK_RECV:I = 0x1001

.field static final SPDY_DATA_RECV:I = 0x1002

.field static final SPDY_DATA_SEND:I = 0x1003

.field static final SPDY_PING_RECV:I = 0x1005

.field static final SPDY_REQUEST_RECV:I = 0x1006

.field static final SPDY_SESSION_CLOSE:I = 0x1007

.field static final SPDY_SESSION_CREATE:I = 0x1000

.field static final SPDY_SESSION_FAILED_ERROR:I = 0x1009

.field static final SPDY_STREAM_CLOSE:I = 0x1004

.field static final SPDY_STREAM_RESPONSE_RECV:I = 0x1008

.field private static final TNET_SO_VERSION:Ljava/lang/String; = "tnet-4.0.0"

.field private static domainHashLock:Ljava/lang/Object; = null

.field private static domainHashMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile enableDebug:Z = false

.field public static volatile enableTimeGaurd:Z = false

.field private static volatile gSingleInstance:Lorg/android/spdy/SpdyAgent;

.field private static volatile loadSucc:Z

.field private static lock:Ljava/lang/Object;

.field private static final r:Ljava/util/concurrent/locks/Lock;

.field private static final rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static totalDomain:I

.field private static final w:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private accsSSLCallback:Lorg/android/spdy/AccsSSLCallback;

.field private agentNativePtr:J

.field private final cacher:Lorg/android/spdy/QuicCacher;

.field private closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile enable_header_cache:Z

.field private proxyPassword:Ljava/lang/String;

.field private proxyUsername:Ljava/lang/String;

.field private sessionMgr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/android/spdy/SpdySession;",
            ">;"
        }
    .end annotation
.end field

.field private sessionQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/android/spdy/SpdySession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lorg/android/spdy/SpdyAgent;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 74
    sget-object v0, Lorg/android/spdy/SpdyAgent;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    sput-object v0, Lorg/android/spdy/SpdyAgent;->r:Ljava/util/concurrent/locks/Lock;

    .line 75
    sget-object v0, Lorg/android/spdy/SpdyAgent;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    sput-object v0, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    .line 79
    sput-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    const/4 v1, 0x0

    .line 96
    sput-object v1, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    .line 97
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/android/spdy/SpdyAgent;->lock:Ljava/lang/Object;

    .line 128
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/android/spdy/SpdyAgent;->domainHashLock:Ljava/lang/Object;

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/android/spdy/SpdyAgent;->domainHashMap:Ljava/util/HashMap;

    .line 130
    sput v0, Lorg/android/spdy/SpdyAgent;->totalDomain:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;Lorg/android/spdy/AccsSSLCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdyAgent;->sessionQueue:Ljava/util/LinkedList;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdyAgent;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lorg/android/spdy/SpdyAgent;->proxyUsername:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lorg/android/spdy/SpdyAgent;->proxyPassword:Ljava/lang/String;

    .line 77
    new-instance v0, Lorg/android/spdy/SecurityGuardCacherImp;

    invoke-direct {v0}, Lorg/android/spdy/SecurityGuardCacherImp;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdyAgent;->cacher:Lorg/android/spdy/QuicCacher;

    const/4 v0, 0x1

    .line 1079
    iput-boolean v0, p0, Lorg/android/spdy/SpdyAgent;->enable_header_cache:Z

    .line 160
    :try_start_0
    invoke-static {p1}, Lorg/android/spdy/SoInstallMgrSdk;->init(Landroid/content/Context;)V

    const-string/jumbo v1, "tnet-4.0.0"

    .line 161
    invoke-static {v1, v0}, Lorg/android/spdy/SoInstallMgrSdk;->initSo(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Lorg/android/spdy/SpdyVersion;->getInt()I

    move-result p2

    invoke-virtual {p3}, Lorg/android/spdy/SpdySessionKind;->getint()I

    move-result p3

    sget-object v0, Lorg/android/spdy/SslVersion;->SLIGHT_VERSION_V1:Lorg/android/spdy/SslVersion;

    invoke-virtual {v0}, Lorg/android/spdy/SslVersion;->getint()I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lorg/android/spdy/SpdyAgent;->initAgent(III)J

    move-result-wide p2

    iput-wide p2, p0, Lorg/android/spdy/SpdyAgent;->agentNativePtr:J

    .line 168
    iput-object p4, p0, Lorg/android/spdy/SpdyAgent;->accsSSLCallback:Lorg/android/spdy/AccsSSLCallback;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 170
    invoke-virtual {p2}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 172
    :goto_1
    iget-object p2, p0, Lorg/android/spdy/SpdyAgent;->cacher:Lorg/android/spdy/QuicCacher;

    invoke-interface {p2, p1}, Lorg/android/spdy/QuicCacher;->init(Landroid/content/Context;)V

    .line 173
    iget-object p1, p0, Lorg/android/spdy/SpdyAgent;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static InitializeCerts()V
    .locals 1

    .line 178
    invoke-static {}, Lorg/android/spdy/AndroidTrustAnchors;->getInstance()Lorg/android/spdy/AndroidTrustAnchors;

    move-result-object v0

    invoke-virtual {v0}, Lorg/android/spdy/AndroidTrustAnchors;->Initialize()V

    return-void
.end method

.method static InvlidCharJudge([B[B)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 228
    :goto_0
    array-length v2, p0

    const/16 v3, 0x7e

    const/16 v4, 0x3f

    const/16 v5, 0x20

    if-ge v1, v2, :cond_2

    .line 229
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v5, :cond_0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    if-le v2, v3, :cond_1

    .line 230
    :cond_0
    aput-byte v4, p0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_2
    :goto_1
    array-length p0, p1

    if-ge v0, p0, :cond_5

    .line 235
    aget-byte p0, p1, v0

    and-int/lit16 p0, p0, 0xff

    if-lt p0, v5, :cond_3

    aget-byte p0, p1, v0

    and-int/lit16 p0, p0, 0xff

    if-le p0, v3, :cond_4

    .line 236
    :cond_3
    aput-byte v4, p1, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private agentIsOpen()V
    .locals 3

    .line 585
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    invoke-direct {p0}, Lorg/android/spdy/SpdyAgent;->checkLoadSo()V

    return-void

    .line 586
    :cond_0
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const/16 v1, -0x450

    const-string v2, "SPDY_JNI_ERR_ASYNC_CLOSE"

    invoke-direct {v0, v2, v1}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
    .locals 2

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[bioPingRecvCallback] - "

    .line 846
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "[bioPingRecvCallback] - session is null"

    .line 848
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 849
    :cond_0
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v1, :cond_1

    const-string p1, "[bioPingRecvCallback] - session.intenalcb is null"

    .line 850
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 852
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1, p2}, Lorg/android/spdy/Intenalcb;->bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V

    :goto_0
    return-void
.end method

.method private checkLoadSo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .line 182
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    if-eqz v0, :cond_0

    return-void

    .line 185
    :cond_0
    :try_start_0
    sget-object v0, Lorg/android/spdy/SpdyAgent;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :try_start_1
    sget-boolean v1, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const-string/jumbo v1, "tnet-4.0.0"

    const/4 v2, 0x1

    .line 187
    invoke-static {v1, v2}, Lorg/android/spdy/SoInstallMgrSdk;->initSo(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0, v1, v1, v1}, Lorg/android/spdy/SpdyAgent;->initAgent(III)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/android/spdy/SpdyAgent;->agentNativePtr:J

    .line 189
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 193
    :goto_0
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    if-eqz v0, :cond_2

    return-void

    .line 194
    :cond_2
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const/16 v1, -0x454

    const-string v2, "TNET_JNI_ERR_LOAD_SO_FAIL"

    invoke-direct {v0, v2, v1}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static checkLoadSucc()Z
    .locals 1

    .line 112
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    return v0
.end method

.method private native closeSessionN(J)I
.end method

.method public static configIpStackMode(I)I
    .locals 4

    int-to-long v0, p0

    const-string/jumbo v2, "tnet-jni"

    const-string v3, "[configIpStackMode] - "

    .line 1071
    invoke-static {v2, v3, v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1072
    invoke-static {p0}, Lorg/android/spdy/SpdyAgent;->configIpStackModeN(I)I

    move-result p0

    return p0
.end method

.method private static native configIpStackModeN(I)I
.end method

.method private native configLogFileN(Ljava/lang/String;II)I
.end method

.method private native configLogFileN(Ljava/lang/String;III)I
.end method

.method private static crashReporter(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private native createSessionN(JLorg/android/spdy/SpdySession;I[BC[BC[B[BLjava/lang/Object;III[B)J
.end method

.method static dataproviderToByteArray(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;)[B
    .locals 2

    .line 292
    invoke-virtual {p0}, Lorg/android/spdy/SpdyRequest;->getHeaders()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lorg/android/spdy/SpdyAgent;->headJudge(Ljava/util/Map;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 298
    :cond_0
    iget-object p0, p1, Lorg/android/spdy/SpdyDataProvider;->postBody:Ljava/util/Map;

    invoke-static {p0}, Lorg/android/spdy/SpdyAgent;->mapBodyToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 300
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    goto :goto_0

    .line 303
    :cond_1
    iget-object p0, p1, Lorg/android/spdy/SpdyDataProvider;->data:[B

    :goto_0
    if-eqz p0, :cond_3

    .line 306
    array-length p1, p0

    const/high16 v0, 0x500000

    if-ge p1, v0, :cond_2

    goto :goto_1

    .line 307
    :cond_2
    new-instance p1, Lorg/android/spdy/SpdyErrorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPDY_JNI_ERR_INVALID_PARAM:total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, -0x44e

    invoke-direct {p1, p0, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    :goto_1
    return-object p0
.end method

.method private native freeAgent(J)I
.end method

.method private getDomainHashIndex(Ljava/lang/String;)I
    .locals 3

    .line 134
    sget-object v0, Lorg/android/spdy/SpdyAgent;->domainHashLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    sget-object v1, Lorg/android/spdy/SpdyAgent;->domainHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 137
    sget-object v1, Lorg/android/spdy/SpdyAgent;->domainHashMap:Ljava/util/HashMap;

    sget v2, Lorg/android/spdy/SpdyAgent;->totalDomain:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/android/spdy/SpdyAgent;->totalDomain:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget p1, Lorg/android/spdy/SpdyAgent;->totalDomain:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 140
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 140
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .line 101
    sget-object v0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    if-nez v0, :cond_1

    .line 102
    sget-object v0, Lorg/android/spdy/SpdyAgent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lorg/android/spdy/SpdyAgent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/android/spdy/SpdyAgent;-><init>(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;Lorg/android/spdy/AccsSSLCallback;)V

    sput-object v1, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    .line 106
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 108
    :cond_1
    :goto_0
    sget-object p0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;Lorg/android/spdy/AccsSSLCallback;)Lorg/android/spdy/SpdyAgent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    sget-object v0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    if-nez v0, :cond_1

    .line 119
    sget-object v0, Lorg/android/spdy/SpdyAgent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    sget-object v1, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Lorg/android/spdy/SpdyAgent;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/android/spdy/SpdyAgent;-><init>(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;Lorg/android/spdy/AccsSSLCallback;)V

    sput-object v1, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    .line 123
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 125
    :cond_1
    :goto_0
    sget-object p0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    return-object p0
.end method

.method private getPerformance(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SslPermData;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getSSLMeta(Lorg/android/spdy/SpdySession;)[B
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "tnet-jni"

    if-nez p1, :cond_0

    const-string p1, "[getSSLMeta] - session is null"

    .line 994
    invoke-static {v1, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 996
    :cond_0
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v2, :cond_1

    const-string p1, "[getSSLMeta] - session.intenalcb is null"

    .line 997
    invoke-static {v1, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1001
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1}, Lorg/android/spdy/Intenalcb;->getSSLMeta(Lorg/android/spdy/SpdySession;)[B

    move-result-object p1

    return-object p1
.end method

.method private getSSLPublicKey(I[B)[B
    .locals 1

    .line 972
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->accsSSLCallback:Lorg/android/spdy/AccsSSLCallback;

    if-nez v0, :cond_0

    const-string/jumbo p1, "tnet-jni"

    const-string p2, "[getSSLPublicKey] - accsSSLCallback is null."

    .line 973
    invoke-static {p1, p2}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 976
    :cond_0
    invoke-interface {v0, p1, p2}, Lorg/android/spdy/AccsSSLCallback;->getSSLPublicKey(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method private native getSession(J[BC)J
.end method

.method static headJudge(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 246
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 247
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    .line 250
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 252
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/spdy/SpdyAgent;->InvlidCharJudge([B[B)V

    .line 255
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 256
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lorg/android/spdy/SpdyAgent;->securityCheck(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private native initAgent(III)J
.end method

.method public static inspect(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private native logFileCloseN()V
.end method

.method private native logFileFlushN()V
.end method

.method static mapBodyToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_2

    .line 267
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 268
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    .line 271
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 274
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 275
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 278
    invoke-static {v1}, Lorg/android/spdy/SpdyAgent;->tableListJudge(I)V

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 283
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static mapToByteArray(Ljava/util/Map;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 647
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 650
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 651
    new-array v0, v0, [Ljava/lang/String;

    .line 652
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 653
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    .line 657
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 658
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 659
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 660
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
    .locals 3

    const/4 v0, -0x1

    const-string/jumbo v1, "tnet-jni"

    if-nez p1, :cond_0

    const-string p1, "[putSSLMeta] - session is null"

    .line 981
    invoke-static {v1, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 983
    :cond_0
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v2, :cond_1

    const-string p1, "[putSSLMeta] - session.intenalcb is null"

    .line 984
    invoke-static {v1, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 988
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1, p2}, Lorg/android/spdy/Intenalcb;->putSSLMeta(Lorg/android/spdy/SpdySession;[B)I

    move-result p1

    return p1
.end method

.method static securityCheck(II)V
    .locals 3

    const/16 v0, -0x44e

    const v1, 0x8000

    if-ge p0, v1, :cond_1

    const/16 p0, 0x2000

    if-ge p1, p0, :cond_0

    return-void

    .line 214
    :cond_0
    new-instance p0, Lorg/android/spdy/SpdyErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPDY_JNI_ERR_INVALID_PARAM:value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 209
    :cond_1
    new-instance p1, Lorg/android/spdy/SpdyErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPDY_JNI_ERR_INVALID_PARAM:total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method private native setConTimeout(JI)I
.end method

.method private native setSessionKind(JI)I
.end method

.method private spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .locals 2

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[spdyCustomControlFrameFailCallback] - "

    .line 835
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "[spdyCustomControlFrameFailCallback] - session is null"

    .line 837
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 838
    :cond_0
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v1, :cond_1

    const-string p1, "[spdyCustomControlFrameFailCallback] - session.intenalcb is null"

    .line 839
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 841
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/android/spdy/Intenalcb;->spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method private spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .locals 8

    const-string/jumbo v0, "tnet-jni"

    const-string v2, "[spdyCustomControlFrameRecvCallback] - "

    .line 824
    invoke-static {v0, v2}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "[spdyCustomControlFrameRecvCallback] - session is null"

    .line 826
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 827
    :cond_0
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v2, :cond_1

    const-string v1, "[spdyCustomControlFrameRecvCallback] - session.intenalcb is null"

    .line 828
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 830
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/android/spdy/Intenalcb;->spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V

    :goto_0
    return-void
.end method

.method private spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZILorg/android/spdy/SpdyByteArray;I)V
    .locals 7

    const-string/jumbo v0, "tnet-jni"

    const-string v2, "[spdyDataChunkRecvCB] - "

    .line 759
    invoke-static {v0, v2}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v2, p3

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v2

    if-nez p1, :cond_0

    const-string v1, "[spdyDataChunkRecvCB] - session is null"

    .line 763
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 764
    :cond_0
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v2, :cond_1

    const-string v1, "[spdyDataChunkRecvCB] - session.intenalcb is null"

    .line 765
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 767
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    move-object v1, p1

    move v2, p2

    move-wide v3, v4

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Intenalcb;->spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;I)V

    :goto_0
    return-void
.end method

.method private spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZIII)V
    .locals 7

    const-string/jumbo v0, "tnet-jni"

    const-string v2, "[spdyDataRecvCallback] - "

    .line 773
    invoke-static {v0, v2}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v2, p3

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v2

    if-nez p1, :cond_0

    const-string v1, "[spdyDataRecvCallback] - session is null"

    .line 777
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 778
    :cond_0
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v2, :cond_1

    const-string v1, "[spdyDataRecvCallback] - session.intenalcb is null"

    .line 779
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 781
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    move-object v1, p1

    move v2, p2

    move-wide v3, v4

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Intenalcb;->spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJII)V

    :goto_0
    return-void
.end method

.method private spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZIII)V
    .locals 7

    int-to-long v2, p3

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v2

    const-string/jumbo v0, "tnet-jni"

    if-nez p1, :cond_0

    const-string v1, "[spdyDataSendCallback] - session is null"

    .line 789
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :cond_0
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v2, :cond_1

    const-string v1, "[spdyDataSendCallback] - session.intenalcb is null"

    .line 791
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 793
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    move-object v1, p1

    move v2, p2

    move-wide v3, v4

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Intenalcb;->spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJII)V

    :goto_0
    return-void
.end method

.method private spdyPingRecvCallback(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 3

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[spdyPingRecvCallback] - "

    .line 812
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "[spdyPingRecvCallback] - session is null"

    .line 814
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 815
    :cond_0
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v1, :cond_1

    const-string p1, "[spdyPingRecvCallback] - session.intenalcb is null"

    .line 816
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 818
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    int-to-long v1, p2

    invoke-interface {v0, p1, v1, v2, p3}, Lorg/android/spdy/Intenalcb;->spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;II)V
    .locals 4

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-string/jumbo p2, "tnet-jni"

    if-nez p1, :cond_0

    const-string p1, "[spdyRequestRecvCallback] - session is null"

    .line 860
    invoke-static {p2, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 861
    :cond_0
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v2, :cond_1

    const-string p1, "[spdyRequestRecvCallback] - session.intenalcb is null"

    .line 862
    invoke-static {p2, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 864
    :cond_1
    iget-object p2, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {p2, p1, v0, v1, p3}, Lorg/android/spdy/Intenalcb;->spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JI)V

    :goto_0
    return-void
.end method

.method private spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .locals 4

    int-to-long v0, p4

    const-string/jumbo v2, "tnet-jni"

    const-string v3, "[spdySessionCloseCallback] - errorCode = "

    .line 917
    invoke-static {v2, v3, v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;J)V

    if-nez p1, :cond_0

    const-string p2, "[spdySessionCloseCallback] - session is null"

    .line 919
    invoke-static {v2, p2}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 922
    :cond_0
    :try_start_0
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v0, :cond_1

    const-string p2, "[spdySessionCloseCallback] - session.intenalcb is null"

    .line 923
    invoke-static {v2, p2}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 925
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/android/spdy/Intenalcb;->spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    :goto_0
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I

    .line 931
    :goto_1
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->releasePptr()V

    return-void

    :catchall_0
    move-exception p2

    .line 928
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I

    throw p2
.end method

.method private spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 2

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[spdySessionConnectCB] - "

    .line 742
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "[spdySessionConnectCB] - session is null"

    .line 744
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_0
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v1, :cond_1

    const-string v1, "[spdySessionConnectCB] - session.intenalcb is null"

    .line 746
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 748
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1, p2}, Lorg/android/spdy/Intenalcb;->spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V

    :goto_0
    if-eqz p1, :cond_2

    .line 752
    iget-wide v0, p2, Lorg/android/spdy/SuperviseConnectInfo;->quicConnectionID:J

    invoke-virtual {p1, v0, v1}, Lorg/android/spdy/SpdySession;->setQuicConnectionID(J)V

    :cond_2
    return-void
.end method

.method private spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 2

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[spdySessionFailedError] - "

    .line 936
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p2, "[spdySessionFailedError] - session is null"

    .line 938
    invoke-static {v0, p2}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 941
    :cond_0
    :try_start_0
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v1, :cond_1

    const-string p2, "[spdySessionFailedError] - session.intenalcb is null"

    .line 942
    invoke-static {v0, p2}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 944
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1, p2, p3}, Lorg/android/spdy/Intenalcb;->spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    :goto_0
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I

    .line 950
    :goto_1
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->releasePptr()V

    return-void

    :catchall_0
    move-exception p2

    .line 947
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I

    throw p2
.end method

.method private spdySessionOnWritable(Lorg/android/spdy/SpdySession;Ljava/lang/Object;I)V
    .locals 2

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[spdySessionOnWritable] - "

    .line 954
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "[spdySessionOnWritable] - session is null"

    .line 956
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 959
    :cond_0
    :try_start_0
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v1, :cond_1

    const-string p1, "[spdySessionOnWritable] - session.intenalcb is null"

    .line 960
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 962
    :cond_1
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v1, p1, p2, p3}, Lorg/android/spdy/Intenalcb;->spdySessionOnWritable(Lorg/android/spdy/SpdySession;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "[spdySessionOnWritable] - exception:"

    .line 965
    invoke-static {v0, p2, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;IIILorg/android/spdy/SuperviseData;)V
    .locals 7

    const-string/jumbo v0, "tnet-jni"

    const-string v2, "[spdyStreamCloseCallback] - "

    .line 799
    invoke-static {v0, v2}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    if-nez p1, :cond_0

    const-string v1, "[spdyStreamCloseCallback] - session is null"

    .line 802
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 803
    :cond_0
    iget-object v4, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v4, :cond_1

    const-string v1, "[spdyStreamCloseCallback] - session.intenalcb is null"

    .line 804
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    move-object v1, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Intenalcb;->spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JIILorg/android/spdy/SuperviseData;)V

    :goto_0
    return-void
.end method

.method private spdyStreamResponseRecv(Lorg/android/spdy/SpdySession;I[B[II)V
    .locals 12

    move-object v2, p1

    move-object v1, p3

    move-object/from16 v3, p4

    const-string/jumbo v4, "utf-8"

    const-string/jumbo v5, "tnet-jni"

    const-string v0, "[spdyStreamResponseRecv] - "

    .line 870
    invoke-static {v5, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    array-length v0, v3

    new-array v6, v0, [Ljava/lang/String;

    move-object v7, p0

    .line 875
    iget-boolean v0, v7, Lorg/android/spdy/SpdyAgent;->enable_header_cache:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 876
    invoke-static {}, Lorg/android/spdy/HTTPHeaderPool;->getInstance()Lorg/android/spdy/HTTPHeaderPool;

    move-result-object v0

    const/4 v4, 0x0

    .line 877
    :goto_0
    array-length v9, v3

    if-ge v8, v9, :cond_2

    .line 878
    aget v9, v3, v8

    invoke-static {p3, v4, v9}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/android/spdy/HTTPHeaderPool;->GetValueString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 879
    aget v9, v3, v8

    add-int/2addr v4, v9

    add-int/lit8 v9, v8, 0x1

    .line 881
    aget v10, v3, v9

    const/16 v11, 0x20

    if-le v10, v11, :cond_0

    .line 882
    new-instance v10, Ljava/lang/String;

    aget v11, v3, v9

    invoke-direct {v10, p3, v4, v11}, Ljava/lang/String;-><init>([BII)V

    aput-object v10, v6, v9

    goto :goto_1

    .line 884
    :cond_0
    aget v10, v3, v9

    invoke-static {p3, v4, v10}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/android/spdy/HTTPHeaderPool;->GetValueString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .line 887
    :goto_1
    aget v9, v3, v9

    add-int/2addr v4, v9

    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 891
    :goto_2
    array-length v0, v3

    if-ge v8, v0, :cond_2

    .line 893
    :try_start_0
    new-instance v0, Ljava/lang/String;

    aget v10, v3, v8

    invoke-direct {v0, p3, v9, v10, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v0, v6, v8

    .line 894
    aget v0, v3, v8

    add-int/2addr v9, v0

    add-int/lit8 v0, v8, 0x1

    .line 896
    new-instance v10, Ljava/lang/String;

    aget v11, v3, v0

    invoke-direct {v10, p3, v9, v11, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v10, v6, v0

    .line 897
    aget v0, v3, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v9, v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 899
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_3
    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 904
    :cond_2
    invoke-static {v6}, Lorg/android/spdy/SpdyAgent;->stringArrayToMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    move v1, p2

    int-to-long v3, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v3, v8

    if-nez v2, :cond_3

    const-string v0, "[spdyStreamResponseRecv] - session is null"

    .line 908
    invoke-static {v5, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 909
    :cond_3
    iget-object v1, v2, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v1, :cond_4

    const-string v0, "[spdyStreamResponseRecv] - session.intenalcb is null"

    .line 910
    invoke-static {v5, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 912
    :cond_4
    iget-object v1, v2, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    move-object v2, p1

    move-object v5, v0

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lorg/android/spdy/Intenalcb;->spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;I)V

    :goto_4
    return-void
.end method

.method static stringArrayToMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 671
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x2

    .line 673
    array-length v4, p0

    if-gt v3, v4, :cond_4

    .line 675
    aget-object v4, p0, v2

    if-eqz v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    aget-object v5, p0, v4

    if-nez v5, :cond_1

    goto :goto_1

    .line 678
    :cond_1
    aget-object v5, p0, v2

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_2

    .line 680
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 681
    aget-object v2, p0, v2

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    :cond_2
    aget-object v2, p0, v4

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    return-object v1
.end method

.method static tableListJudge(I)V
    .locals 3

    const/high16 v0, 0x500000

    if-ge p0, v0, :cond_0

    return-void

    .line 221
    :cond_0
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPDY_JNI_ERR_INVALID_PARAM:total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, -0x44e

    invoke-direct {v0, p0, v1}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public native ResolveHost(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public VerifyProof(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/16 v3, 0x24

    const/4 v6, 0x0

    move-object v0, p1

    move v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 34
    invoke-static/range {v0 .. v7}, Lorg/android/spdy/QuicProofVerifier;->VerifyProof(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public cacher_load(Ljava/lang/String;)[B
    .locals 1

    .line 1047
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->cacher:Lorg/android/spdy/QuicCacher;

    invoke-interface {v0, p1}, Lorg/android/spdy/QuicCacher;->load(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public cacher_store(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1043
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->cacher:Lorg/android/spdy/QuicCacher;

    invoke-interface {v0, p1, p2}, Lorg/android/spdy/QuicCacher;->store(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method clearSpdySession(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 83
    sget-object v0, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz p1, :cond_0

    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 91
    :goto_0
    sget-object p2, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_0
    :goto_1
    sget-object p1, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_1
    return-void
.end method

.method public close()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method closeSession(J)I
    .locals 0

    .line 643
    invoke-direct {p0, p1, p2}, Lorg/android/spdy/SpdyAgent;->closeSessionN(J)I

    move-result p1

    return p1
.end method

.method public configLogFile(Ljava/lang/String;II)I
    .locals 1

    .line 1022
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/android/spdy/SpdyAgent;->configLogFileN(Ljava/lang/String;II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public configLogFile(Ljava/lang/String;III)I
    .locals 1

    .line 1026
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/android/spdy/SpdyAgent;->configLogFileN(Ljava/lang/String;III)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;I)Lorg/android/spdy/SpdySession;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v2, ""

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    .line 334
    invoke-virtual/range {v0 .. v7}, Lorg/android/spdy/SpdyAgent;->createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;II)Lorg/android/spdy/SpdySession;

    move-result-object p1

    return-object p1
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;I)Lorg/android/spdy/SpdySession;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v2, ""

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 344
    invoke-virtual/range {v0 .. v7}, Lorg/android/spdy/SpdyAgent;->createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;II)Lorg/android/spdy/SpdySession;

    move-result-object p1

    return-object p1
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;I)Lorg/android/spdy/SpdySession;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    .line 339
    invoke-virtual/range {v0 .. v7}, Lorg/android/spdy/SpdyAgent;->createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;II)Lorg/android/spdy/SpdySession;

    move-result-object p1

    return-object p1
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;II)Lorg/android/spdy/SpdySession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 351
    invoke-virtual/range {v0 .. v8}, Lorg/android/spdy/SpdyAgent;->createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;III)Lorg/android/spdy/SpdySession;

    move-result-object v0

    return-object v0
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;III)Lorg/android/spdy/SpdySession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 355
    invoke-virtual/range {v0 .. v9}, Lorg/android/spdy/SpdyAgent;->createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;IIILjava/lang/String;)Lorg/android/spdy/SpdySession;

    move-result-object v0

    return-object v0
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;IIILjava/lang/String;)Lorg/android/spdy/SpdySession;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v14, p2

    move/from16 v11, p6

    if-eqz v0, :cond_b

    const-string v1, "/"

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x0

    .line 390
    aget-object v2, v1, v13

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 392
    aget-object v3, v1, v13

    invoke-virtual {v3, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 393
    aget-object v3, v1, v13

    const/4 v10, 0x1

    add-int/2addr v2, v10

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    const-string v2, "0.0.0.0"

    .line 395
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 397
    array-length v3, v1

    if-eq v3, v10, :cond_0

    .line 398
    aget-object v1, v1, v10

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 399
    aget-object v2, v1, v13

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 400
    aget-object v1, v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-char v1, v1

    move-object v9, v0

    move/from16 v18, v1

    move-object/from16 v17, v2

    goto :goto_0

    .line 402
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/0.0.0.0:0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    move-object/from16 v17, v2

    const/16 v18, 0x0

    .line 405
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/android/spdy/SpdyAgent;->agentIsOpen()V

    .line 408
    sget-object v1, Lorg/android/spdy/SpdyAgent;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 410
    :try_start_0
    iget-object v1, v15, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/android/spdy/SpdySession;

    .line 411
    iget-object v2, v15, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v3, 0x32

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 415
    :goto_1
    sget-object v3, Lorg/android/spdy/SpdyAgent;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez v2, :cond_a

    if-eqz v1, :cond_2

    .line 424
    invoke-virtual {v1}, Lorg/android/spdy/SpdySession;->increRefCount()V

    return-object v1

    .line 429
    :cond_2
    sget-object v1, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/16 v19, 0x0

    .line 431
    :try_start_1
    iget-object v1, v15, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/android/spdy/SpdySession;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-object/from16 v1, v19

    :goto_2
    if-eqz v1, :cond_3

    .line 436
    sget-object v0, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 437
    invoke-virtual {v1}, Lorg/android/spdy/SpdySession;->increRefCount()V

    return-object v1

    .line 441
    :cond_3
    :try_start_2
    new-instance v8, Lorg/android/spdy/SpdySession;

    const-wide/16 v2, 0x0

    move-object v1, v8

    move-object/from16 v4, p0

    move-object v5, v9

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 p4, v8

    move/from16 v8, p6

    move-object/from16 v20, v9

    move/from16 v9, p7

    const/16 v21, 0x1

    move-object/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lorg/android/spdy/SpdySession;-><init>(JLorg/android/spdy/SpdyAgent;Ljava/lang/String;Ljava/lang/String;Lorg/android/spdy/SessionCb;IILjava/lang/Object;)V

    if-nez p9, :cond_4

    move-object/from16 v22, v19

    goto :goto_3

    .line 444
    :cond_4
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    move-object/from16 v22, v1

    .line 446
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Lorg/android/spdy/SpdyAgent;->getDomainHashIndex(Ljava/lang/String;)I

    move-result v5

    and-int/lit8 v1, v11, 0x4

    if-eqz v1, :cond_5

    or-int/lit8 v1, v11, 0x8

    move v11, v1

    .line 455
    :cond_5
    iget-object v1, v15, Lorg/android/spdy/SpdyAgent;->proxyUsername:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_6

    :try_start_3
    iget-object v1, v15, Lorg/android/spdy/SpdyAgent;->proxyPassword:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 456
    iget-wide v2, v15, Lorg/android/spdy/SpdyAgent;->agentNativePtr:J

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 457
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-char v7, v1

    iget-object v1, v15, Lorg/android/spdy/SpdyAgent;->proxyUsername:Ljava/lang/String;

    .line 459
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    iget-object v1, v15, Lorg/android/spdy/SpdyAgent;->proxyPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    move-object/from16 v1, p0

    move-object/from16 v4, p4

    move-object/from16 v8, v17

    move/from16 v9, v18

    move/from16 p5, v11

    move-object v11, v12

    move-object/from16 v12, p3

    const/16 v23, 0x0

    move/from16 v13, p5

    move/from16 v14, p7

    move/from16 v15, p8

    move-object/from16 v16, v22

    .line 456
    invoke-direct/range {v1 .. v16}, Lorg/android/spdy/SpdyAgent;->createSessionN(JLorg/android/spdy/SpdySession;I[BC[BC[B[BLjava/lang/Object;III[B)J

    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_7

    :cond_6
    move/from16 p5, v11

    const/16 v23, 0x0

    move-object/from16 v15, p0

    .line 462
    :try_start_4
    iget-wide v2, v15, Lorg/android/spdy/SpdyAgent;->agentNativePtr:J

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 463
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    int-to-char v7, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p4

    move-object/from16 v8, v17

    move/from16 v9, v18

    move-object/from16 v12, p3

    move/from16 v13, p5

    move/from16 v14, p7

    move/from16 v15, p8

    move-object/from16 v16, v22

    .line 462
    :try_start_5
    invoke-direct/range {v1 .. v16}, Lorg/android/spdy/SpdyAgent;->createSessionN(JLorg/android/spdy/SpdySession;I[BC[BC[B[BLjava/lang/Object;III[B)J

    move-result-wide v1

    :goto_4
    const-string/jumbo v3, "tnet-jni"

    const-string v4, " create new session: "

    .line 469
    invoke-static {v3, v4, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v3, 0x1

    and-long v5, v1, v3

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v3

    if-nez v0, :cond_7

    shr-long v0, v1, v21

    long-to-int v13, v0

    move-wide v1, v7

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    :goto_5
    cmp-long v0, v1, v7

    if-eqz v0, :cond_8

    move-object/from16 v0, p4

    .line 485
    invoke-virtual {v0, v1, v2}, Lorg/android/spdy/SpdySession;->setSessionNativePtr(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v1, p0

    .line 486
    :try_start_6
    iget-object v2, v1, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p5

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v2, v1, Lorg/android/spdy/SpdyAgent;->sessionQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    :cond_8
    move-object/from16 v1, p0

    if-nez v13, :cond_9

    move-object/from16 v0, v19

    .line 493
    :goto_6
    sget-object v2, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 489
    :cond_9
    :try_start_7
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create session error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v13}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v15

    .line 493
    :goto_7
    sget-object v2, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_a
    move-object v1, v15

    .line 418
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const/16 v2, -0x451

    const-string v3, "SPDY_SESSION_EXCEED_MAXED: session count exceed max"

    invoke-direct {v0, v3, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_3
    move-exception v0

    move-object v1, v15

    .line 415
    sget-object v2, Lorg/android/spdy/SpdyAgent;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_b
    move-object v1, v15

    .line 382
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const/16 v2, -0x44e

    const-string v3, "SPDY_JNI_ERR_INVALID_PARAM"

    invoke-direct {v0, v3, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public createSession(Lorg/android/spdy/SessionInfo;)Lorg/android/spdy/SpdySession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .line 347
    invoke-virtual {p1}, Lorg/android/spdy/SessionInfo;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/android/spdy/SessionInfo;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/android/spdy/SessionInfo;->getSessonUserData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/android/spdy/SessionInfo;->getSessionCb()Lorg/android/spdy/SessionCb;

    move-result-object v4

    invoke-virtual {p1}, Lorg/android/spdy/SessionInfo;->getMode()I

    move-result v6

    invoke-virtual {p1}, Lorg/android/spdy/SessionInfo;->getPubKeySeqNum()I

    move-result v7

    invoke-virtual {p1}, Lorg/android/spdy/SessionInfo;->getConnectionTimeoutMs()I

    move-result v8

    invoke-virtual {p1}, Lorg/android/spdy/SessionInfo;->getCertHost()Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/android/spdy/SpdyAgent;->createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;IIILjava/lang/String;)Lorg/android/spdy/SpdySession;

    move-result-object p1

    return-object p1
.end method

.method public disableHeaderCache()V
    .locals 1

    const/4 v0, 0x0

    .line 1076
    iput-boolean v0, p0, Lorg/android/spdy/SpdyAgent;->enable_header_cache:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getAllSession()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/android/spdy/SpdySession;",
            ">;"
        }
    .end annotation

    .line 1015
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    return-object v0
.end method

.method public logFileClose()V
    .locals 1

    .line 1036
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    if-eqz v0, :cond_0

    .line 1037
    invoke-direct {p0}, Lorg/android/spdy/SpdyAgent;->logFileFlushN()V

    .line 1038
    invoke-direct {p0}, Lorg/android/spdy/SpdyAgent;->logFileCloseN()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public logFileFlush()V
    .locals 1

    .line 1030
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    if-eqz v0, :cond_0

    .line 1031
    invoke-direct {p0}, Lorg/android/spdy/SpdyAgent;->logFileFlushN()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method removeSession(Lorg/android/spdy/SpdySession;)V
    .locals 1

    .line 633
    sget-object v0, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 635
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->sessionQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    sget-object p1, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public setAccsSslCallback(Lorg/android/spdy/AccsSSLCallback;)V
    .locals 3

    .line 716
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "tnet-jni"

    const-string v2, "[setAccsSslCallback] - "

    invoke-static {v1, v2, v0}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 717
    iput-object p1, p0, Lorg/android/spdy/SpdyAgent;->accsSSLCallback:Lorg/android/spdy/AccsSSLCallback;

    return-void
.end method

.method public setConnectTimeOut(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 706
    invoke-direct {p0}, Lorg/android/spdy/SpdyAgent;->agentIsOpen()V

    .line 708
    :try_start_0
    iget-wide v0, p0, Lorg/android/spdy/SpdyAgent;->agentNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/android/spdy/SpdyAgent;->setConTimeout(JI)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 710
    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setProxyUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lorg/android/spdy/SpdyAgent;->proxyUsername:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lorg/android/spdy/SpdyAgent;->proxyPassword:Ljava/lang/String;

    return-void
.end method

.method public setSessionKind(Lorg/android/spdy/SpdySessionKind;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 691
    invoke-direct {p0}, Lorg/android/spdy/SpdyAgent;->agentIsOpen()V

    .line 693
    :try_start_0
    iget-wide v0, p0, Lorg/android/spdy/SpdyAgent;->agentNativePtr:J

    invoke-virtual {p1}, Lorg/android/spdy/SpdySessionKind;->getint()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/android/spdy/SpdyAgent;->setSessionKind(JI)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 695
    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;I)Lorg/android/spdy/SpdySession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    .line 580
    invoke-virtual/range {v0 .. v8}, Lorg/android/spdy/SpdyAgent;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;I)Lorg/android/spdy/SpdySession;

    move-result-object v0

    return-object v0
.end method

.method public submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;II)Lorg/android/spdy/SpdySession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 548
    invoke-virtual/range {v0 .. v9}, Lorg/android/spdy/SpdyAgent;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;II)Lorg/android/spdy/SpdySession;

    move-result-object v0

    return-object v0
.end method

.method public submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;I)Lorg/android/spdy/SpdySession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 530
    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getConnectionTimeoutMs()I

    move-result v8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p3

    move-object v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v8}, Lorg/android/spdy/SpdyAgent;->createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;III)Lorg/android/spdy/SpdySession;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    .line 531
    invoke-virtual {v0, p1, p2, p4, p5}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I

    return-object v0
.end method

.method public submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;II)Lorg/android/spdy/SpdySession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 540
    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getConnectionTimeoutMs()I

    move-result v8

    move-object v0, p0

    move-object v3, p3

    move-object v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v8}, Lorg/android/spdy/SpdyAgent;->createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;III)Lorg/android/spdy/SpdySession;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    .line 541
    invoke-virtual {v0, p1, p2, p4, p5}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I

    return-object v0
.end method

.method public switchAccsServer(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
