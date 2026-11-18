.class public final Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;
.super Ljava/lang/Object;
.source "UpaasManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback;
    }
.end annotation


# static fields
.field private static mIsInited:Z = false

.field private static mUnetManagerImpl:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl; = null

.field private static mVid:Ljava/lang/String; = ""

.field private static sCallback:Lcom/alibaba/mbg/upaas/UpaasManager$Callback;

.field private static sLogger:Lcom/alibaba/mbg/upaas/UpaasManager$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    sput-object p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->mVid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Lcom/alibaba/mbg/upaas/UpaasManager$Callback;
    .locals 1

    .line 15
    sget-object v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->sCallback:Lcom/alibaba/mbg/upaas/UpaasManager$Callback;

    return-object v0
.end method

.method static synthetic access$200()Lcom/alibaba/mbg/upaas/UpaasManager$Logger;
    .locals 1

    .line 15
    sget-object v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->sLogger:Lcom/alibaba/mbg/upaas/UpaasManager$Logger;

    return-object v0
.end method

.method public static getUpaasState()Ljava/lang/String;
    .locals 2

    .line 122
    const-class v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;

    monitor-enter v0

    .line 123
    :try_start_0
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni;->nativeGetUpaasState()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getVid()Ljava/lang/String;
    .locals 2

    .line 75
    const-class v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->mVid:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static init(Lcom/alibaba/mbg/unet/UnetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;)V
    .locals 7

    .line 26
    const-class v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-boolean v1, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->mIsInited:Z

    if-eqz v1, :cond_0

    .line 28
    monitor-exit v0

    return-void

    .line 31
    :cond_0
    new-instance v1, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback;

    invoke-direct {v1}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback;-><init>()V

    invoke-static {v1}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni;->setCallback(Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni$Callback;)V

    const/4 v1, 0x1

    .line 33
    sput-boolean v1, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->mIsInited:Z

    .line 35
    check-cast p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    sput-object p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->mUnetManagerImpl:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    .line 36
    sget-object p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->mUnetManagerImpl:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-virtual {p0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->getNativePointer()J

    move-result-wide v1

    .line 38
    new-instance v6, Lcom/alibaba/mbg/unet/internal/SecurityGuardWrapperBridge;

    invoke-direct {v6, p4}, Lcom/alibaba/mbg/unet/internal/SecurityGuardWrapperBridge;-><init>(Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 40
    invoke-static/range {v1 .. v6}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni;->nativeInit(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;)V

    .line 42
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isInited()Z
    .locals 2

    .line 46
    const-class v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-boolean v1, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->mIsInited:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static postTaskToWorkThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 82
    :try_start_0
    sget-object v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->mUnetManagerImpl:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-virtual {v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->getWorkerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static sendRequestViaUpaas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 116
    const-class v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;

    monitor-enter v0

    .line 117
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni;->nativeSendRequestViaUpaas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static sendRmbReceipt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 110
    const-class v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;

    monitor-enter v0

    .line 111
    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni;->nativeSendRmbReceipt(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setBackgroudHeartbeatTimeoutInSecond(I)V
    .locals 1

    .line 134
    const-class v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;

    monitor-enter v0

    .line 135
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni;->nativeSetBackgroudHeartbeatTimeoutInSecond(I)V

    .line 136
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setCallback(Lcom/alibaba/mbg/upaas/UpaasManager$Callback;)V
    .locals 1

    .line 52
    const-class v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;

    monitor-enter v0

    .line 53
    :try_start_0
    sput-object p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->sCallback:Lcom/alibaba/mbg/upaas/UpaasManager$Callback;

    .line 54
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni;->nativeSetCallback()V

    .line 55
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setDmExData(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_0
    const-class p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;

    monitor-enter p0

    const/4 v1, 0x0

    .line 70
    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni;->nativeSetExData([Ljava/lang/String;)V

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static setLogger(Lcom/alibaba/mbg/upaas/UpaasManager$Logger;)V
    .locals 0

    .line 193
    sput-object p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->sLogger:Lcom/alibaba/mbg/upaas/UpaasManager$Logger;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setRmbMessageCallback(Lcom/alibaba/mbg/upaas/RmbMessageCallback;)V
    .locals 2

    .line 93
    const-class v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;

    monitor-enter v0

    .line 94
    :try_start_0
    new-instance v1, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1;

    invoke-direct {v1, p0}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1;-><init>(Lcom/alibaba/mbg/upaas/RmbMessageCallback;)V

    .line 105
    new-instance p0, Lcom/alibaba/mbg/unet/internal/RmbMessageCallbackBridge;

    invoke-direct {p0, v1}, Lcom/alibaba/mbg/unet/internal/RmbMessageCallbackBridge;-><init>(Lcom/alibaba/mbg/upaas/RmbMessageCallback;)V

    invoke-static {p0}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni;->nativeSetRmbCallback(Lcom/alibaba/mbg/upaas/RmbMessageCallback;)V

    .line 106
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static tryUpaasHeartbeat()V
    .locals 2

    .line 128
    const-class v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;

    monitor-enter v0

    .line 129
    :try_start_0
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni;->nativeTryUpaasHeartbeat()V

    .line 130
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
