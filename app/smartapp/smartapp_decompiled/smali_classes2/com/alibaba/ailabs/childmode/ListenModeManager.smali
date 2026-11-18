.class public Lcom/alibaba/ailabs/childmode/ListenModeManager;
.super Ljava/lang/Object;
.source "ListenModeManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListenModeManager"

.field private static mMainHandler:Landroid/os/Handler;

.field private static sListenModeManager:Lcom/alibaba/ailabs/childmode/ListenModeManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mValidatePasswordFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcom/alibaba/ailabs/childmode/ListenModeManager$2;

    new-instance v1, Lcom/alibaba/ailabs/childmode/ListenModeManager$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/childmode/ListenModeManager$1;-><init>(Lcom/alibaba/ailabs/childmode/ListenModeManager;)V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/childmode/ListenModeManager$2;-><init>(Lcom/alibaba/ailabs/childmode/ListenModeManager;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mValidatePasswordFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/childmode/ListenModeManager;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private dismissDialog()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const-string v0, "ListenModeManager"

    const-string v1, "dismiss ListenMode dialog"

    .line 74
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private enterListenMode()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/CacheManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/CacheManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/CacheManager;->updateListenModeInfo(Z)V

    return-void
.end method

.method private exitListenMode()V
    .locals 2

    .line 128
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->needValidate()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->show(Z)V

    .line 130
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->reset()V

    .line 131
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mValidatePasswordFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 132
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->add(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->next()V

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/childmode/CacheManager;->getInstance()Lcom/alibaba/ailabs/childmode/CacheManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/CacheManager;->updateListenModeInfo(Z)V

    :goto_0
    return-void
.end method

.method private exitListenMode(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/CacheManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/CacheManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/CacheManager;->updateListenModeInfo(Z)V

    return-void

    .line 187
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 191
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->needValidate()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 192
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->show(Z)V

    .line 193
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->reset()V

    .line 194
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mValidatePasswordFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 195
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->add(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->next()V

    goto :goto_0

    .line 198
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/CacheManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/CacheManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/CacheManager;->updateListenModeInfo(Z)V

    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/ListenModeManager;
    .locals 2

    .line 38
    sget-object v0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->sListenModeManager:Lcom/alibaba/ailabs/childmode/ListenModeManager;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/alibaba/ailabs/childmode/ListenModeManager;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/childmode/ListenModeManager;->sListenModeManager:Lcom/alibaba/ailabs/childmode/ListenModeManager;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/alibaba/ailabs/childmode/ListenModeManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/childmode/ListenModeManager;->sListenModeManager:Lcom/alibaba/ailabs/childmode/ListenModeManager;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 45
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->sListenModeManager:Lcom/alibaba/ailabs/childmode/ListenModeManager;

    return-object p0
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .locals 3

    .line 54
    sget-object v0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 55
    const-class v0, Lcom/alibaba/ailabs/childmode/ListenModeManager;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mMainHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mMainHandler:Landroid/os/Handler;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 65
    invoke-static {}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 69
    invoke-static {}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method private showDialog()V
    .locals 4

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->isSkipForbiddenTimeActivity()Z

    move-result v0

    const-string v1, "ListenModeManager"

    if-eqz v0, :cond_0

    const-string v0, "current Activity not show listenMode"

    .line 91
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->getListenModerDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mDialog:Landroid/app/Dialog;

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    const/4 v0, 0x0

    const-string v2, "a1z3lt.12346949"

    const-string v3, "listenmodel"

    .line 101
    invoke-static {v2, v3, v0}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "show ListenMode dialog"

    .line 102
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clickToEnterListenMode()V
    .locals 4

    .line 140
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->enterListenMode()V

    const-string v0, "listenmodel"

    const-string v1, "a1z3lt.12346871"

    const-string v2, "systemsetting_lab"

    const/4 v3, 0x0

    .line 141
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->utEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public clickToExitListenMode()V
    .locals 4

    .line 145
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->exitListenMode()V

    const-string v0, "listenmodel_exit"

    const-string v1, "a1z3lt.12346949"

    const-string v2, "listenmodel"

    const/4 v3, 0x0

    .line 146
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->utEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public isSkipForbiddenTimeActivity()Z
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/ActivityUtils;->getTopActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.alibaba.ailabs.childmode.ui.page.ValidateLockActivity"

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.alibaba.ailabs.childmode.ui.page.AppSettingActivity"

    .line 205
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public show(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->showDialog()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->dismissDialog()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateListenModeInfo(Z)V
    .locals 4

    const-string v0, "listenmodel"

    const-string v1, "a1z3lt.12346949"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->enterListenMode()V

    const-string p1, "command_openlistenmodel"

    const-string v3, "a1z3lt.12371583"

    .line 156
    invoke-static {v3, p1, v2}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 157
    invoke-static {p1, v1, v0, v2}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->utEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->exitListenMode()V

    const-string p1, "command_exitlistenmodel"

    const-string v3, "a1z3lt.12371590"

    .line 161
    invoke-static {v3, p1, v2}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 162
    invoke-static {p1, v1, v0, v2}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->utEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateListenModeInfo(ZZ)V
    .locals 3

    const-string v0, "listenmodel"

    const-string v1, "a1z3lt.12346949"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->enterListenMode()V

    const-string p1, "command_openlistenmodel"

    const-string p2, "a1z3lt.12371583"

    .line 170
    invoke-static {p2, p1, v2}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 171
    invoke-static {p1, v1, v0, v2}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->utEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->exitListenMode(Z)V

    const-string p1, "command_exitlistenmodel"

    const-string p2, "a1z3lt.12371590"

    .line 175
    invoke-static {p2, p1, v2}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 176
    invoke-static {p1, v1, v0, v2}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->utEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
