.class public Lcom/alibaba/mbg/unet/internal/UnetLibLoader;
.super Ljava/lang/Object;
.source "UnetLibLoader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final NB_SO_LIBRARY:[Ljava/lang/String;

.field private static final PRIVATE_DATA_DIRECTORY_SUFFIX:Ljava/lang/String; = "unet_shell"

.field private static final TAG:Ljava/lang/String; = "#unet"

.field private static volatile sInitStarted:Z

.field private static final sLoadLock:Ljava/lang/Object;

.field private static sMainThreadInitDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/mbg/unet/internal/UnetLibLoader;->sLoadLock:Ljava/lang/Object;

    const-string v0, "base_net"

    .line 21
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mbg/unet/internal/UnetLibLoader;->NB_SO_LIBRARY:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    sput-boolean v0, Lcom/alibaba/mbg/unet/internal/UnetLibLoader;->sInitStarted:Z

    .line 28
    sput-boolean v0, Lcom/alibaba/mbg/unet/internal/UnetLibLoader;->sMainThreadInitDone:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static ensureInitialized(Landroid/content/Context;)V
    .locals 3

    .line 35
    sget-object v0, Lcom/alibaba/mbg/unet/internal/UnetLibLoader;->sLoadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-boolean v1, Lcom/alibaba/mbg/unet/internal/UnetLibLoader;->sInitStarted:Z

    if-eqz v1, :cond_0

    .line 37
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 39
    sput-boolean v1, Lcom/alibaba/mbg/unet/internal/UnetLibLoader;->sInitStarted:Z

    .line 40
    invoke-static {p0}, Lunet/org/chromium/base/ContextUtils;->initApplicationContext(Landroid/content/Context;)V

    const-string/jumbo v1, "unet_shell"

    .line 41
    invoke-static {v1}, Lunet/org/chromium/base/PathUtils;->setPrivateDataDirectorySuffix(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lunet/org/chromium/base/ContextUtils;->initApplicationContextForNative()V

    const-string v1, "#unet"

    const-string v2, "#unet ensureInitialized"

    .line 47
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v1, Lcom/alibaba/mbg/unet/internal/UnetLibLoader$1;

    invoke-direct {v1, p0}, Lcom/alibaba/mbg/unet/internal/UnetLibLoader$1;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne p0, v2, :cond_1

    .line 57
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 61
    :cond_1
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static ensureInitializedOnMainThread(Landroid/content/Context;)V
    .locals 0

    .line 88
    sget-boolean p0, Lcom/alibaba/mbg/unet/internal/UnetLibLoader;->sMainThreadInitDone:Z

    if-eqz p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 91
    :cond_0
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UnetLibraryLoader;->nativeUNetInitOnMainThread()V

    const/4 p0, 0x1

    .line 92
    sput-boolean p0, Lcom/alibaba/mbg/unet/internal/UnetLibLoader;->sMainThreadInitDone:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static initNetworkNotifier(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-static {p0}, Lunet/org/chromium/net/NetworkChangeNotifier;->init(Landroid/content/Context;)Lunet/org/chromium/net/NetworkChangeNotifier;

    .line 73
    invoke-static {}, Lunet/org/chromium/net/NetworkChangeNotifier;->registerToReceiveNotificationsAlways()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
