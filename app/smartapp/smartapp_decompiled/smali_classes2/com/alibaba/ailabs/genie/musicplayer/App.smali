.class public Lcom/alibaba/ailabs/genie/musicplayer/App;
.super Landroid/app/Application;
.source "App.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field private static final TAG:Ljava/lang/String; = "Application"

.field private static mApp:Lcom/alibaba/ailabs/genie/musicplayer/App;

.field private static volatile mApplication:Landroid/app/Application;


# instance fields
.field private mIsMainActivityInForeground:Z

.field private mIsPlayListActivityInForeground:Z

.field private mIsSpeedActivityInForeground:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/App;->mIsMainActivityInForeground:Z

    .line 39
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/App;->mIsPlayListActivityInForeground:Z

    .line 40
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/App;->mIsSpeedActivityInForeground:Z

    return-void
.end method

.method public static getApp()Lcom/alibaba/ailabs/genie/musicplayer/App;
    .locals 1

    .line 174
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/App;->mApp:Lcom/alibaba/ailabs/genie/musicplayer/App;

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 170
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/App;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method private getConfigProcessName()Ljava/lang/String;
    .locals 3

    .line 180
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/App;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/App;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 182
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "MUSIC_RUN_PROCESS_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    .line 187
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "com.alibaba.ailabs.genie.smartapp"

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    const-string v1, ":"

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getCurrentProcessName()Ljava/lang/String;
    .locals 5

    .line 51
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, ""

    .line 54
    :try_start_0
    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/App;->mApplication:Landroid/app/Application;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 55
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-nez v3, :cond_2

    goto :goto_0

    .line 64
    :cond_2
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v0, :cond_1

    .line 65
    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v1
.end method

.method static synthetic lambda$init$33(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAG, rxjava throwable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public init(Landroid/app/Application;)V
    .locals 4

    .line 77
    sput-object p1, Lcom/alibaba/ailabs/genie/musicplayer/App;->mApplication:Landroid/app/Application;

    .line 78
    sput-object p0, Lcom/alibaba/ailabs/genie/musicplayer/App;->mApp:Lcom/alibaba/ailabs/genie/musicplayer/App;

    .line 79
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->init(Landroid/content/Context;)V

    const-string v0, "Application"

    const-string v1, "\u542f\u52a8App onCreate"

    .line 80
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v1

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music current processName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getConfigProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->init(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->init(Landroid/content/Context;)V

    .line 90
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;

    move-result-object v1

    const-string v2, "com.alibaba.ailabs.genie.musicplayer"

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->setPackageName(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->getInstance()Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->init(Landroid/content/Context;)V

    .line 93
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->init()V

    const-string v1, "\u542f\u52a8App onCreate2"

    .line 94
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->init(Landroid/app/Application;)V

    .line 96
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/-$$Lambda$App$DGi7avsGAus_e7h4V-BYZIGe7_I;->INSTANCE:Lcom/alibaba/ailabs/genie/musicplayer/-$$Lambda$App$DGi7avsGAus_e7h4V-BYZIGe7_I;

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->setErrorHandler(Lio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public isMainActivityInForeground()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/App;->mIsMainActivityInForeground:Z

    return v0
.end method

.method public isPlayListActivityInForeground()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/App;->mIsPlayListActivityInForeground:Z

    return v0
.end method

.method public isSpeedActivityInForeground()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/App;->mIsSpeedActivityInForeground:Z

    return v0
.end method

.method public onCreate()V
    .locals 0

    .line 101
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onLowMemory()V
    .locals 4

    const-string v0, "Application"

    const-string v1, "onLowMemory"

    .line 136
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 139
    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->clearMemory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLowMemory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 166
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTrimMemory(I)V
    .locals 4

    .line 147
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Application"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onTrimMemory:"

    const/16 v2, 0x14

    if-ne p1, v2, :cond_0

    .line 151
    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->clearMemory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "clearMemory"

    .line 155
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/Glide;->trimMemory(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setIsMainActivityInForeground(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/App;->mIsMainActivityInForeground:Z

    return-void
.end method

.method public setIsPlayListActivityInForeground(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/App;->mIsPlayListActivityInForeground:Z

    return-void
.end method

.method public setSpeedActivityInForeground(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/App;->mIsSpeedActivityInForeground:Z

    return-void
.end method
