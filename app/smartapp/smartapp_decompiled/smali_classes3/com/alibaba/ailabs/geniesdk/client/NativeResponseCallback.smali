.class public Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;
.super Ljava/lang/Object;
.source "NativeResponseCallback.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/client/IResponseCallback;


# static fields
.field private static final CANCEL:I = 0x1

.field private static final END:I = 0x2

.field private static final NORMAL:I

.field private static mHandler:Landroid/os/Handler;

.field private static mHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mIAliTVASRResponseCallback:Lcom/yunos/tv/alitvasr/IAliTVASRResponseCallback;

.field private mIResponseCallback:Lcom/alibaba/ailabs/geniesdk/client/IResponseCallback;

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mStatus:I

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/geniesdk/client/IResponseCallback;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mStatus:I

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mIResponseCallback:Lcom/alibaba/ailabs/geniesdk/client/IResponseCallback;

    return-void
.end method

.method public constructor <init>(Lcom/yunos/tv/alitvasr/IAliTVASRResponseCallback;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mStatus:I

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mIAliTVASRResponseCallback:Lcom/yunos/tv/alitvasr/IAliTVASRResponseCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mStatus:I

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;)Lcom/alibaba/ailabs/geniesdk/client/IResponseCallback;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mIResponseCallback:Lcom/alibaba/ailabs/geniesdk/client/IResponseCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;)Lcom/yunos/tv/alitvasr/IAliTVASRResponseCallback;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mIAliTVASRResponseCallback:Lcom/yunos/tv/alitvasr/IAliTVASRResponseCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;)Landroid/os/IBinder;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 3

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NativeResponseCallback"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mHandlerThread:Landroid/os/HandlerThread;

    .line 25
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 26
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mHandler:Landroid/os/Handler;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onResponseEnd(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 89
    iget p1, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mStatus:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mStatus:I

    .line 91
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mStatus:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->mStatus:I

    return-void
.end method


# virtual methods
.method public onResponseCallback(IILjava/lang/String;)V
    .locals 2

    .line 54
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;-><init>(Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
