.class public Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "TaskManager.java"


# static fields
.field private static final NOTIFY_CONTAINER_INFO:I = 0x3

.field private static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.task"

.field private static final START:I = 0x1

.field private static final STOP:I = 0x2

.field private static sInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;
    .locals 2

    .line 23
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;->sInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;

    if-nez v0, :cond_1

    .line 24
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;->sInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;->sInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 30
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;->sInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.task"

    return-object v0
.end method


# virtual methods
.method public notifyContainerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    .line 78
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, "pn"

    .line 80
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "p"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 84
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;->callAsynMethod(ILandroid/os/Bundle;)V

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyContainerInfo appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",pageName = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskClient"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    .line 43
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    const-string v0, "com.alibaba.ailabs.genie.assistant.task"

    .line 45
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public start(ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-static {v0, p3, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo p3, "t"

    .line 51
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_0

    const-string p1, "ck"

    .line 54
    invoke-virtual {p2, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "f"

    .line 56
    invoke-virtual {p2, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x2

    .line 64
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskManager;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method
