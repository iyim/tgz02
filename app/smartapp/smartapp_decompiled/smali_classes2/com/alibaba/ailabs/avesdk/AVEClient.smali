.class public Lcom/alibaba/ailabs/avesdk/AVEClient;
.super Ljava/lang/Object;
.source "AVEClient.java"


# static fields
.field public static final CONNECT_MODE_SERVICE:I = 0x1

.field private static mAveClientId:J = 0x7L


# instance fields
.field private bridgeCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

.field private connectState:Z

.field private frameData:[B

.field private frameHeader:[B

.field private isBinded:Z

.field private mAVECameraHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/avesdk/AVECameraHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mAVEClientCallback:Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

.field private mAVEClientName:Ljava/lang/String;

.field private mCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

.field private mConnectKeepAliveRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

.field private mImageReader:Landroid/media/ImageReader;

.field private mImageReaderCallbackEnable:Z

.field private mImageReaderDataCallback:Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

.field private mLoopCount:J

.field private mReconnectRunnable:Ljava/lang/Runnable;

.field private mServerProviderUri:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;

.field private mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private mStoreCallback:Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

.field private mStoreCameraHeight:I

.field private mStoreCameraWidth:I

.field private mStoreCommands:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreSurface:Landroid/view/Surface;

.field private reconnectCount:I

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private serviceIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NULL"

    .line 40
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->serviceIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mImageReader:Landroid/media/ImageReader;

    .line 45
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    .line 46
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mServiceName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    .line 48
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientCallback:Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->isBinded:Z

    .line 51
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mImageReaderDataCallback:Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

    .line 52
    iput-boolean v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mImageReaderCallbackEnable:Z

    .line 53
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 55
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mContext:Landroid/content/Context;

    .line 56
    iput v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->reconnectCount:I

    .line 57
    iput-boolean v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->connectState:Z

    const/16 v2, 0x400

    .line 59
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->frameHeader:[B

    .line 60
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->frameData:[B

    .line 62
    iput v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCameraWidth:I

    .line 63
    iput v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCameraHeight:I

    .line 64
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCallback:Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

    .line 66
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreSurface:Landroid/view/Surface;

    .line 69
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandlerThread:Landroid/os/HandlerThread;

    .line 70
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandler:Landroid/os/Handler;

    const-string v0, "content://com.alibaba.ailabs.agui.ave_provider"

    .line 72
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mServerProviderUri:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCommands:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    new-instance v0, Lcom/alibaba/ailabs/avesdk/AVEClient$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient$1;-><init>(Lcom/alibaba/ailabs/avesdk/AVEClient;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->bridgeCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    .line 105
    new-instance v0, Lcom/alibaba/ailabs/avesdk/AVEClient$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient$2;-><init>(Lcom/alibaba/ailabs/avesdk/AVEClient;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->serviceConnection:Landroid/content/ServiceConnection;

    .line 197
    new-instance v0, Lcom/alibaba/ailabs/avesdk/AVEClient$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient$3;-><init>(Lcom/alibaba/ailabs/avesdk/AVEClient;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mReconnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    .line 206
    iput-wide v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mLoopCount:J

    .line 207
    new-instance v0, Lcom/alibaba/ailabs/avesdk/AVEClient$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient$4;-><init>(Lcom/alibaba/ailabs/avesdk/AVEClient;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mConnectKeepAliveRunnable:Ljava/lang/Runnable;

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVECameraHandlerList:Ljava/util/List;

    .line 75
    sget-wide v0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAveClientId:J

    const-wide/16 v2, 0x6

    add-long/2addr v0, v2

    sput-wide v0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAveClientId:J

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/avesdk/AVEClient;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/acamera/IACameraCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/avesdk/AVEClient;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCameraHeight:I

    return p0
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/avesdk/AVEClient;)Landroid/view/Surface;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/avesdk/AVEClient;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->connectState:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/alibaba/ailabs/avesdk/AVEClient;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->connectState:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientCallback:Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/alibaba/ailabs/avesdk/AVEClient;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->isBinded:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/alibaba/ailabs/avesdk/AVEClient;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/alibaba/ailabs/avesdk/AVEClient;Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->reconnectService(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1708(Lcom/alibaba/ailabs/avesdk/AVEClient;)J
    .locals 4

    .line 37
    iget-wide v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mLoopCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mLoopCount:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mConnectKeepAliveRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mServiceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/alibaba/ailabs/avesdk/AVEClient;)[B
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->frameHeader:[B

    return-object p0
.end method

.method static synthetic access$2100(Lcom/alibaba/ailabs/avesdk/AVEClient;)[B
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->frameData:[B

    return-object p0
.end method

.method static synthetic access$2200(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mImageReaderDataCallback:Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mReconnectRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    return-object p0
.end method

.method static synthetic access$502(Lcom/alibaba/ailabs/avesdk/AVEClient;Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;)Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    return-object p1
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/acamera/IACameraCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->bridgeCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/avesdk/AVEClient;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCommands:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCallback:Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/avesdk/AVEClient;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCameraWidth:I

    return p0
.end method

.method private reconnectService(Landroid/content/Context;)V
    .locals 3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reconnectService time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->reconnectCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->reconnectCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->isBinded:Z

    .line 194
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->restart(Landroid/content/Context;)V

    return-void
.end method

.method private restart(Landroid/content/Context;)V
    .locals 5

    .line 223
    const-class v0, Lcom/alibaba/ailabs/avesdk/AVEClient;

    monitor-enter v0

    .line 224
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "build_version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/alibaba/ailabs/aveclientsdk/R$string;->build_revision:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "build_time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/alibaba/ailabs/aveclientsdk/R$string;->build_time:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "build_host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/alibaba/ailabs/aveclientsdk/R$string;->build_host:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 227
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mContext:Landroid/content/Context;

    .line 229
    invoke-virtual {p0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->getRemotePackage()Ljava/lang/String;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->serviceIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAveClientId:J

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client Name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " restart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 239
    iput-boolean v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->isBinded:Z

    .line 240
    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->serviceIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 241
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mReconnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public cleanImageSurface()Z
    .locals 5

    const/4 v0, 0x0

    .line 737
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    const-string v3, "setCameraWidth"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->ioctlV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 738
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    const-string v3, "setCameraHeight"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->ioctlV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 739
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->setImageReaderSurfaceV2(Ljava/lang/String;Landroid/view/Surface;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 741
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public getConnectState()Z
    .locals 1

    .line 712
    iget-boolean v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->isBinded:Z

    return v0
.end method

.method public getEngineState(Ljava/lang/String;)Z
    .locals 4

    .line 667
    const-class v0, Lcom/alibaba/ailabs/avesdk/AVEClient;

    monitor-enter v0

    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 670
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    const-string v3, "isEngineEnable"

    invoke-interface {v1, v2, v3, p1}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->ioctlV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 672
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    .line 675
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getEngineState(Ljava/lang/String;Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;)Z
    .locals 2

    .line 682
    iget-boolean v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->connectState:Z

    if-eqz v0, :cond_0

    const-string v0, "isEngineEnable"

    .line 683
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 684
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;->eventCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 686
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/ailabs/avesdk/AVEClient$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/ailabs/avesdk/AVEClient$10;-><init>(Lcom/alibaba/ailabs/avesdk/AVEClient;Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 705
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getRemotePackage()Ljava/lang/String;
    .locals 5

    const-string v0, "com.alibaba.ailabs.ar.monitor"

    const/16 v1, 0x18

    const/4 v2, 0x0

    .line 165
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mServerProviderUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 166
    iget-object v4, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 167
    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v2, v3}, Landroid/content/ContentProviderClient;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v2, :cond_2

    .line 176
    :try_start_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_1

    .line 177
    :goto_0
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 172
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 176
    :try_start_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    if-lt v3, v1, :cond_1

    goto :goto_0

    .line 186
    :catch_1
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remotePackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->w(Ljava/lang/String;)V

    return-object v0

    :goto_2
    if-eqz v2, :cond_4

    .line 176
    :try_start_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_3

    .line 177
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_3

    .line 179
    :cond_3
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 182
    :catch_2
    :cond_4
    :goto_3
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public init(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;)Z
    .locals 1

    const/4 v0, 0x1

    .line 322
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->init(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;I)Z

    return v0
.end method

.method public init(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;I)Z
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mServiceName:Ljava/lang/String;

    .line 333
    iput-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    .line 334
    iput-object p3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientCallback:Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

    .line 335
    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "android.intent.action."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mServiceName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->serviceIntent:Landroid/content/Intent;

    const/4 p1, 0x0

    .line 336
    iput-boolean p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->isBinded:Z

    .line 337
    iput-boolean p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->connectState:Z

    .line 338
    iput p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->reconnectCount:I

    const/4 p1, 0x1

    return p1
.end method

.method public ioctl(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    .line 380
    const-class v0, Lcom/alibaba/ailabs/avesdk/AVEClient;

    monitor-enter v0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 382
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIAveAidlInterface == null  --- "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bundle = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 383
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 387
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-interface {v1, v3, p1, p2}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->ioctlV3(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 389
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 391
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public ioctl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 345
    const-class v0, Lcom/alibaba/ailabs/avesdk/AVEClient;

    monitor-enter v0

    :try_start_0
    const-string v1, "feedSpeechDoa"

    .line 346
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ioctl cmd : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 352
    :goto_0
    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCommands:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    .line 353
    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCommands:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_1
    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 357
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIAveAidlInterface == null  --- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 358
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    .line 362
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v5, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-interface {v3, v5, p1, p2}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->ioctlV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    const-wide/16 v7, 0xc8

    cmp-long v3, v5, v7

    if-lez v3, :cond_3

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cost > 200ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/avesdk/LogUtils;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 367
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    const-string v3, "feedSpeechDoa"

    .line 370
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ioctl cmd : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cost time =  "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v1

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 373
    :cond_4
    monitor-exit v0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public registerCameraDataCallback(Ljava/lang/String;IILcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;)Lcom/alibaba/ailabs/avesdk/AVECameraHandler;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v0, p4

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerCameraDataCallback --- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 560
    iput v8, v1, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCameraWidth:I

    .line 561
    iput v9, v1, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCameraHeight:I

    .line 562
    iput-object v0, v1, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCallback:Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

    .line 564
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    .line 567
    const-class v11, Lcom/alibaba/ailabs/avesdk/AVEClient;

    monitor-enter v11

    .line 568
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    const/4 v12, 0x0

    if-lt v2, v3, :cond_1

    .line 569
    iget-object v2, v1, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    if-nez v2, :cond_0

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIAveAidlInterface == null --- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 571
    monitor-exit v11

    return-object v12

    :cond_0
    mul-int v2, v8, v9

    mul-int/lit8 v13, v2, 0x3

    .line 574
    div-int/lit8 v2, v13, 0x2

    add-int/lit16 v2, v2, 0x400

    const/4 v3, 0x1

    const/16 v4, 0x24

    const/4 v14, 0x2

    invoke-static {v2, v3, v4, v14}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    :try_start_1
    iget-object v2, v1, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v3, v1, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-virtual {v15}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->setImageReaderSurfaceV3(Ljava/lang/String;Ljava/lang/String;IILandroid/view/Surface;)Z

    .line 580
    div-int/2addr v13, v14

    new-array v2, v13, [B

    iput-object v2, v1, Lcom/alibaba/ailabs/avesdk/AVEClient;->frameData:[B

    .line 581
    new-instance v2, Lcom/alibaba/ailabs/avesdk/AVEClient$9;

    invoke-direct {v2, v1, v10, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient$9;-><init>(Lcom/alibaba/ailabs/avesdk/AVEClient;Ljava/util/concurrent/ExecutorService;Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;)V

    invoke-virtual {v15, v2, v12}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 610
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 613
    :goto_0
    new-instance v0, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;

    move-object v2, v0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v15

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;-><init>(Ljava/lang/String;IILandroid/media/ImageReader;Ljava/util/concurrent/ExecutorService;)V

    .line 614
    iget-object v2, v1, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVECameraHandlerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aveCameraHandler --- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    move-object v12, v0

    .line 618
    :cond_1
    monitor-exit v11

    return-object v12

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public registerCameraDataCallback(IILcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;)Z
    .locals 6

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCameraDataCallback --- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 448
    iput p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCameraWidth:I

    .line 449
    iput p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCameraHeight:I

    .line 450
    iput-object p3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCallback:Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

    .line 451
    const-class v0, Lcom/alibaba/ailabs/avesdk/AVEClient;

    monitor-enter v0

    .line 452
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 453
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIAveAidlInterface == null --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/ailabs/avesdk/AVEClient$7;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/alibaba/ailabs/avesdk/AVEClient$7;-><init>(Lcom/alibaba/ailabs/avesdk/AVEClient;IILcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 461
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 465
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    const-string v4, "setCameraWidth"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v4, v5}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->ioctlV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 466
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    const-string v4, "setCameraHeight"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v4, v5}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->ioctlV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 468
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x3

    .line 471
    div-int/lit8 p2, p1, 0x2

    add-int/lit16 p2, p2, 0x400

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v4, 0x2

    invoke-static {p2, v2, v1, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mImageReader:Landroid/media/ImageReader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 475
    :try_start_3
    iget-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-interface {p2, v1, v5}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->setImageReaderSurfaceV2(Ljava/lang/String;Landroid/view/Surface;)Z

    .line 477
    iput-boolean v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mImageReaderCallbackEnable:Z

    .line 478
    iput-object p3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mImageReaderDataCallback:Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

    .line 479
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 481
    div-int/2addr p1, v4

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->frameData:[B

    .line 482
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mImageReader:Landroid/media/ImageReader;

    new-instance p2, Lcom/alibaba/ailabs/avesdk/AVEClient$8;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient$8;-><init>(Lcom/alibaba/ailabs/avesdk/AVEClient;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 511
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 514
    :cond_1
    :goto_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public setImageSurface(IILandroid/view/Surface;)Z
    .locals 4

    .line 718
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "mIAveAidlInterface == null"

    .line 719
    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    return v1

    .line 724
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    const-string v3, "setCameraWidth"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, v3, p1}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->ioctlV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 725
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    const-string v2, "setCameraHeight"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v2, p2}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->ioctlV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 726
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->setImageReaderSurfaceV2(Ljava/lang/String;Landroid/view/Surface;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 728
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public setServerProviderUri(Ljava/lang/String;)Z
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mServerProviderUri:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setSurface(Landroid/view/Surface;)Z
    .locals 6

    .line 398
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreSurface:Landroid/view/Surface;

    .line 399
    const-class v0, Lcom/alibaba/ailabs/avesdk/AVEClient;

    monitor-enter v0

    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/alibaba/ailabs/avesdk/AVEClient$5;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/ailabs/avesdk/AVEClient$5;-><init>(Lcom/alibaba/ailabs/avesdk/AVEClient;Landroid/view/Surface;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "mIAveAidlInterface == null"

    .line 407
    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 408
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 412
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->setSurfaceV2(Ljava/lang/String;Landroid/view/Surface;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 414
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 416
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setSurface(Landroid/view/Surface;I)Z
    .locals 4

    .line 423
    const-class v0, Lcom/alibaba/ailabs/avesdk/AVEClient;

    monitor-enter v0

    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/alibaba/ailabs/avesdk/AVEClient$6;

    invoke-direct {v3, p0, p1, p2}, Lcom/alibaba/ailabs/avesdk/AVEClient$6;-><init>(Lcom/alibaba/ailabs/avesdk/AVEClient;Landroid/view/Surface;I)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v1, v3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "mIAveAidlInterface == null"

    .line 431
    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 432
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 436
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-interface {v1, v3, p2, p1}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->setSurfaceV3(Ljava/lang/String;ILandroid/view/Surface;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 438
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public start(Landroid/content/Context;)V
    .locals 3

    .line 254
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AVEClientThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandlerThread:Landroid/os/HandlerThread;

    .line 257
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 258
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandler:Landroid/os/Handler;

    .line 260
    :cond_0
    const-class v0, Lcom/alibaba/ailabs/avesdk/AVEClient;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 261
    :try_start_1
    iput v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->reconnectCount:I

    .line 262
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->restart(Landroid/content/Context;)V

    .line 263
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :try_start_2
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 265
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mConnectKeepAliveRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 263
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 268
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "Panic AVEClient start crash"

    .line 269
    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->w(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop(Landroid/content/Context;)V
    .locals 5

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCommands:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCallback:Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

    const/4 v1, 0x0

    .line 280
    iput v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCameraHeight:I

    .line 281
    iput v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCameraWidth:I

    .line 283
    iget-boolean v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->isBinded:Z

    if-nez v2, :cond_0

    const-string p1, "not start, can`t stop"

    .line 284
    invoke-static {p1}, Lcom/alibaba/ailabs/avesdk/LogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 289
    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mConnectKeepAliveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 290
    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mReconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    :cond_1
    iput-boolean v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->isBinded:Z

    .line 294
    iput v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->reconnectCount:I

    .line 295
    iput-boolean v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->connectState:Z

    .line 297
    const-class v1, Lcom/alibaba/ailabs/avesdk/AVEClient;

    monitor-enter v1

    .line 299
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    if-eqz v2, :cond_2

    .line 300
    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    const-string v4, "unInit"

    invoke-interface {v2, v3, v4, v0}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->ioctlV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 302
    :cond_2
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    .line 303
    iget-object v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string p1, "NULL"

    .line 304
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    .line 305
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_3

    .line 306
    iget-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    .line 307
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandler:Landroid/os/Handler;

    .line 308
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 311
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    :cond_3
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public unRegisterCameraDataCallback()Z
    .locals 7

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterCameraDataCallback --- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 521
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCallback:Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

    const/4 v1, 0x0

    .line 522
    iput v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCameraHeight:I

    .line 523
    iput v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCameraWidth:I

    .line 524
    const-class v2, Lcom/alibaba/ailabs/avesdk/AVEClient;

    monitor-enter v2

    .line 525
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v4, 0x13

    if-lt v3, v4, :cond_4

    .line 527
    :try_start_1
    iget-boolean v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mImageReaderCallbackEnable:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_3

    .line 528
    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    if-eqz v3, :cond_0

    .line 529
    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v4, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    const-string v5, "setCameraWidth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->ioctlV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 530
    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v4, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    const-string v5, "setCameraHeight"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->ioctlV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 531
    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v4, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->setImageReaderSurfaceV2(Ljava/lang/String;Landroid/view/Surface;)Z

    .line 533
    :cond_0
    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_1

    .line 534
    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 535
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 537
    :cond_1
    iput-boolean v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mImageReaderCallbackEnable:Z

    .line 538
    const-class v1, Lcom/alibaba/ailabs/avesdk/AVEClient;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 539
    :try_start_2
    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mImageReader:Landroid/media/ImageReader;

    if-eqz v3, :cond_2

    .line 540
    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->close()V

    .line 541
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mImageReader:Landroid/media/ImageReader;

    .line 543
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    .line 546
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 551
    :cond_3
    :goto_0
    monitor-exit v2

    const/4 v0, 0x1

    return v0

    .line 549
    :cond_4
    monitor-exit v2

    return v1

    :catchall_1
    move-exception v0

    .line 551
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public unRegisterCameraDataCallback(Lcom/alibaba/ailabs/avesdk/AVECameraHandler;)Z
    .locals 9

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterCameraDataCallback --- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aveCameraHandler --- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 625
    iput-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCallback:Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

    const/4 v1, 0x0

    .line 626
    iput v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCameraHeight:I

    .line 627
    iput v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mStoreCameraWidth:I

    if-nez p1, :cond_0

    return v1

    .line 631
    :cond_0
    const-class v2, Lcom/alibaba/ailabs/avesdk/AVEClient;

    monitor-enter v2

    .line 632
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x13

    if-lt v3, v4, :cond_4

    .line 634
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 635
    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    if-eqz v1, :cond_1

    .line 638
    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mIAveAidlInterface:Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;

    iget-object v4, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVEClientName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->getCameraIndex()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/ailabs/acamera/IACameraAidlInterface;->setImageReaderSurfaceV3(Ljava/lang/String;Ljava/lang/String;IILandroid/view/Surface;)Z

    .line 641
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->getImageReader()Landroid/media/ImageReader;

    move-result-object v1

    .line 642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageReader = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/avesdk/LogUtils;->w(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 644
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 648
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 649
    invoke-virtual {p1}, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 650
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/avesdk/AVECameraHandler;->setSingleThreadExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 653
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient;->mAVECameraHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 655
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 660
    :goto_0
    monitor-exit v2

    const/4 p1, 0x1

    return p1

    .line 658
    :cond_4
    monitor-exit v2

    return v1

    :catchall_0
    move-exception p1

    .line 660
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
