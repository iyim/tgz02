.class public Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;
.super Ljava/lang/Object;
.source "ScreenWakeManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenWakeManager"

.field private static mInstance:Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;


# instance fields
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x3000001a

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ScreenWakeManager"

    const-string v2, "get wakelock error!"

    .line 45
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getInstace()Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;
    .locals 1

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->mInstance:Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->mInstance:Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;

    .line 34
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->mInstance:Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;

    return-object v0
.end method


# virtual methods
.method clearScreenAlwaysOn()V
    .locals 1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method setScreenAlwaysOn()V
    .locals 1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setScreenAlwaysOn(Z)V
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScreenAlwaysOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",  mWakeLock.isHeld():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenWakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->setScreenAlwaysOn()V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->clearScreenAlwaysOn()V

    :goto_0
    return-void
.end method
