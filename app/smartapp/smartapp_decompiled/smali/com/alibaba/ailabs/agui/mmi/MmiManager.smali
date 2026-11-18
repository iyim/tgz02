.class public Lcom/alibaba/ailabs/agui/mmi/MmiManager;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "MmiManager.java"


# static fields
.field public static final METHOD_registerClient:I = 0x0

.field public static final METHOD_sendCommand:I = 0x2

.field public static final METHOD_sendCommandToCapability:I = 0x5

.field public static final METHOD_startCapability:I = 0x3

.field public static final METHOD_stopCapability:I = 0x4

.field public static final METHOD_unregisterClient:I = 0x1

.field public static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.mmi"

.field private static sInstance:Lcom/alibaba/ailabs/agui/mmi/MmiManager;


# instance fields
.field private mActivityLifecycle:Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;

.field private mIsInited:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->mIsInited:Z

    .line 31
    new-instance v0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->mActivityLifecycle:Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/agui/mmi/MmiManager;
    .locals 2

    .line 42
    sget-object v0, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->sInstance:Lcom/alibaba/ailabs/agui/mmi/MmiManager;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/alibaba/ailabs/agui/mmi/MmiManager;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->sInstance:Lcom/alibaba/ailabs/agui/mmi/MmiManager;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/alibaba/ailabs/agui/mmi/MmiManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->sInstance:Lcom/alibaba/ailabs/agui/mmi/MmiManager;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 49
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->sInstance:Lcom/alibaba/ailabs/agui/mmi/MmiManager;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.mmi"

    return-object v0
.end method


# virtual methods
.method public declared-synchronized init(Landroid/app/Application;)V
    .locals 1

    monitor-enter p0

    .line 35
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->mIsInited:Z

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->mActivityLifecycle:Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->mIsInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    .line 54
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    const-string v0, "com.alibaba.ailabs.genie.assistant.mmi"

    .line 56
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public registerClient(Ljava/lang/String;Landroid/os/IBinder;)Z
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-static {v0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    .line 73
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->callBooleanMethod(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public sendAsynCommand(IILjava/lang/String;Lcom/alibaba/ailabs/agui/event/MmiEvent;)V
    .locals 1

    .line 127
    :try_start_0
    invoke-static {p4}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->toBundle(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Landroid/os/Bundle;

    move-result-object p4

    const-string v0, "e"

    .line 129
    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p3, "pvt"

    .line 131
    invoke-virtual {p4, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "pt"

    .line 132
    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x2

    .line 134
    invoke-virtual {p0, p1, p4}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->callAsynMethod(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendCommand(IILjava/lang/String;Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
    .locals 1

    .line 100
    :try_start_0
    invoke-static {p4}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->toBundle(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Landroid/os/Bundle;

    move-result-object p4

    const-string v0, "e"

    .line 102
    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p3, "pvt"

    .line 104
    invoke-virtual {p4, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "pt"

    .line 105
    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x2

    .line 107
    invoke-virtual {p0, p1, p4}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 109
    invoke-static {p1}, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->toMmiEventResponse(Landroid/os/Bundle;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public sendCommandToCapability(ILcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
    .locals 1

    .line 177
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->toBundle(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo v0, "t"

    .line 179
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x5

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 183
    invoke-static {p1}, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->toMmiEventResponse(Landroid/os/Bundle;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setMmiDefaultConfig(Lcom/alibaba/ailabs/agui/mmi/MmiInfo;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->mActivityLifecycle:Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->setDefaultConfig(Lcom/alibaba/ailabs/agui/mmi/MmiInfo;)V

    return-void
.end method

.method public startCapability(I)Z
    .locals 2

    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "t"

    .line 148
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x3

    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "r"

    .line 151
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public stopCapability(I)Z
    .locals 2

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "t"

    .line 161
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x4

    .line 162
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "r"

    .line 164
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public unregisterClient(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-static {v0, p1, v0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/agui/mmi/MmiManager;->callBooleanMethod(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
