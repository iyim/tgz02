.class public Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "SystemContextManager.java"


# static fields
.field public static final METHOD_GET_SYSTEM_CONTEXT:I = 0x1

.field private static final SERVER_NAME:Ljava/lang/String; = "com.ailabas.alibaba.genie.system.context"

.field private static final SYSTEM_METHOD_REGISTER_CALLBACK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeviceMirrorManager"

.field private static sDeviceMirrorManager:Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;


# instance fields
.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;
    .locals 2

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;->sDeviceMirrorManager:Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;->sDeviceMirrorManager:Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;->sDeviceMirrorManager:Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 37
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;->sDeviceMirrorManager:Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;

    return-object p0
.end method


# virtual methods
.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    .line 48
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    const-string v0, "com.ailabas.alibaba.genie.system.context"

    .line 49
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public registerSystemContextCallback(Lcom/alibaba/ailabs/genie/assistant/sdk/System/OnSystemContextListener;)V
    .locals 2

    .line 41
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemClientCallback;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemClientCallback;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/System/OnSystemContextListener;)V

    .line 42
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemClientCallback;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/System/SystemContextManager;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method
