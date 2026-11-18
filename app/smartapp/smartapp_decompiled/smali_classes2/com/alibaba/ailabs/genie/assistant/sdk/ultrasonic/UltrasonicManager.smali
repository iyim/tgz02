.class public Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "UltrasonicManager.java"


# static fields
.field private static final METHOD_ULTRASONIC_START:I = 0x0

.field private static final METHOD_ULTRASONIC_STOP:I = 0x1

.field private static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.ultrasonic"

.field private static mManager:Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;
    .locals 2

    .line 24
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;->mManager:Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;->mManager:Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;->mManager:Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 31
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;->mManager:Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.ultrasonic"

    return-object v0
.end method

.method private start(Lorg/json/JSONObject;Landroid/os/IBinder;)Z
    .locals 1

    .line 67
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 69
    invoke-static {v0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;->callAsynMethod(ILandroid/os/Bundle;)V

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start inner info = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UltrasonicClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    .line 40
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    const-string v0, "com.alibaba.ailabs.genie.assistant.ultrasonic"

    .line 42
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public start(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 2

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "c"

    .line 53
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string p1, "id"

    .line 55
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;->start(Lorg/json/JSONObject;Landroid/os/IBinder;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public stop(Ljava/lang/String;)Z
    .locals 3

    .line 79
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    .line 81
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/ultrasonic/UltrasonicManager;->callAsynMethod(ILandroid/os/Bundle;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop inner info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UltrasonicClient"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
