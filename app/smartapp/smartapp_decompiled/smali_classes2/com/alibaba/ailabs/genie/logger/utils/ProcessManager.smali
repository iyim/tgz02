.class public Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# static fields
.field private static final MAIN_PROCESS:I = 0x1

.field private static final UNKNOW_PROCESS:I = -0x1

.field private static volatile sProcessManager:Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;


# instance fields
.field private mCurProcess:I

.field private mCurProcessName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;->mCurProcess:I

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;->mCurProcessName:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;
    .locals 2

    .line 46
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;->sProcessManager:Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;

    if-nez v0, :cond_1

    .line 47
    const-class v0, Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;->sProcessManager:Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;->sProcessManager:Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;

    .line 51
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 53
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;->sProcessManager:Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;

    return-object v0
.end method


# virtual methods
.method public checkProcess(Landroid/content/Context;)I
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "activity"

    .line 74
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 75
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 77
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 78
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 79
    iget-object v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;->mCurProcessName:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;->mCurProcessName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    :cond_1
    :goto_0
    iput v0, p0, Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;->mCurProcess:I

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 3

    .line 97
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/cmdline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 99
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isMainProcess(Landroid/content/Context;)Z
    .locals 1

    .line 62
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;->checkProcess(Landroid/content/Context;)I

    .line 63
    iget p1, p0, Lcom/alibaba/ailabs/genie/logger/utils/ProcessManager;->mCurProcess:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
