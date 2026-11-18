.class public Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;
.super Ljava/lang/Object;
.source "MemoryGuardManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$InstanceHolder;
    }
.end annotation


# static fields
.field public static final CFG_NAME:Ljava/lang/String; = "31HJWI7L74Sf"

.field private static final SMARTAPP_PACKAGENAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.smartapp"

.field public static final TAG:Ljava/lang/String; = "MemoryGuard.Manager"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private DEFAULT_MIN_DELAY:I

.field private DEFAULT_MIN_INTERVAL:I

.field private sIsRuning:Z

.field private sMemoryGuardBean:Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private sMhandler:Landroid/os/Handler;

.field private sWorkRunnable:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sIsRuning:Z

    const v0, 0x493e0

    .line 50
    iput v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->DEFAULT_MIN_DELAY:I

    const v0, 0x1d4c0

    .line 51
    iput v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->DEFAULT_MIN_INTERVAL:I

    .line 59
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->getInstance()Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;

    move-result-object v0

    const-string v1, "31HJWI7L74Sf"

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->register(Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sMhandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sIsRuning:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;)Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sMemoryGuardBean:Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->checkProcess(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(I)V
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->killProcessByPid(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sMhandler:Landroid/os/Handler;

    return-object p0
.end method

.method private checkProcess(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 150
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "activity"

    .line 153
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_7

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;

    .line 157
    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->getMaxMemSizeMb()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 161
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 162
    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check in : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MemoryGuard.Manager"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v3, v1, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->pid:I

    .line 165
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    return-object v0

    .line 172
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [I

    const/4 v1, 0x0

    .line 173
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 174
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;

    iget v2, v2, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->pid:I

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 176
    :cond_6
    invoke-static {p1, v0, p2}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->obtainTotalPss(Landroid/app/ActivityManager;Ljava/util/List;[I)V

    :cond_7
    :goto_3
    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;
    .locals 1

    .line 75
    sget-object v0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$InstanceHolder;->instance:Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;

    return-object v0
.end method

.method private static killProcessByPid(I)V
    .locals 5

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "killProcessByPid, pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MemoryGuard.Manager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kill -9 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 203
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; InterruptedException = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 208
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static loadOrangeConfig(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    const-string v0, "31HJWI7L74Sf"

    .line 221
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MemoryGuard.Manager"

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 225
    const-class v0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 229
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static obtainTotalPss(Landroid/app/ActivityManager;Ljava/util/List;[I)V
    .locals 2
    .param p0    # Landroid/app/ActivityManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;",
            ">;[I)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 186
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 187
    invoke-virtual {p0, p2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 188
    array-length p2, p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 189
    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_0

    .line 190
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;

    aget-object v1, p0, p2

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    iput v1, v0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->pss:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceiver(Ljava/lang/String;)V
    .locals 0

    .line 65
    sget-object p1, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 66
    invoke-static {p1}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->loadOrangeConfig(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sMemoryGuardBean:Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;

    :cond_0
    return-void
.end method

.method public startMonitor(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 91
    sput-object p1, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sContext:Landroid/content/Context;

    .line 92
    iget-boolean v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sIsRuning:Z

    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sMemoryGuardBean:Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;

    if-nez v0, :cond_0

    .line 94
    invoke-static {p1}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->loadOrangeConfig(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sMemoryGuardBean:Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sMemoryGuardBean:Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;

    if-nez v0, :cond_0

    const-string p1, "MemoryGuard.Manager"

    const-string v0, "sMemoryGuardBean  is empty"

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sWorkRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sMemoryGuardBean:Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;->getFirst_check_secs()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->DEFAULT_MIN_DELAY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sMemoryGuardBean:Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;->getCheck_interval_secs()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->DEFAULT_MIN_INTERVAL:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 105
    new-instance v2, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$1;-><init>(Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sWorkRunnable:Ljava/lang/Runnable;

    .line 141
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sMhandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sWorkRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 p1, 0x1

    .line 143
    iput-boolean p1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sIsRuning:Z

    :cond_2
    return-void
.end method

.method public stopMonitor()V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sWorkRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sMhandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sWorkRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->sIsRuning:Z

    return-void
.end method
