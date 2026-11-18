.class public Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;
.super Ljava/lang/Object;
.source "ScreenWakeManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenWakeManager"

.field private static mInstance:Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;


# instance fields
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getInstace()Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;
    .locals 1

    .line 15
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;->mInstance:Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;->mInstance:Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;

    .line 18
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;->mInstance:Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;

    return-object v0
.end method


# virtual methods
.method clearScreenAlwaysOn()V
    .locals 2

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenWakeManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method setScreenAlwaysOn()V
    .locals 2

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 37
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenWakeManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setScreenAlwaysOn(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;->setScreenAlwaysOn()V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;->clearScreenAlwaysOn()V

    :goto_0
    return-void
.end method
