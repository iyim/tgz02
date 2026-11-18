.class public Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "ChildFaceManager.java"


# static fields
.field private static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.childface"

.field private static final VISION_CENTER:I = 0x3

.field private static final VISION_MODE:I = 0x4

.field private static final VISION_START:I = 0x1

.field private static final VISION_STOP:I = 0x2

.field private static sInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;
    .locals 2

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->sInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->sInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->sInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 28
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->sInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.childface"

    return-object v0
.end method


# virtual methods
.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    .line 40
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    const-string v0, "com.alibaba.ailabs.genie.assistant.childface"

    .line 42
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public setChildFace(Ljava/lang/String;Z)Z
    .locals 1

    .line 67
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "d"

    .line 68
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p2, 0x3

    .line 71
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->callAsynMethod(ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setMode(Ljava/lang/String;I)Z
    .locals 1

    .line 76
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "m"

    .line 77
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p2, 0x4

    .line 79
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->callAsynMethod(ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public start(Ljava/lang/String;Landroid/os/IBinder;ZLandroid/view/Surface;ILjava/lang/String;)Z
    .locals 0

    .line 46
    invoke-static {p4, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "c"

    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "m"

    .line 49
    invoke-virtual {p1, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p6, :cond_0

    const-string p2, "ck"

    .line 52
    invoke-virtual {p1, p2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x1

    .line 55
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->callAsynMethod(ILandroid/os/Bundle;)V

    return p2
.end method

.method public stop(Ljava/lang/String;)Z
    .locals 1

    .line 60
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x2

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceManager;->callAsynMethod(ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method
