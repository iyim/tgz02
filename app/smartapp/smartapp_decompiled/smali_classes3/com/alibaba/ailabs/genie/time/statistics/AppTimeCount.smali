.class public Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;
.super Ljava/lang/Object;
.source "AppTimeCount.java"


# static fields
.field private static final APPLET_PACKAGE:Ljava/lang/String; = "com.alipay.arome.app"

.field private static final TAG:Ljava/lang/String; = "AppletCount"

.field private static volatile singleton:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;


# instance fields
.field private mClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

.field private volatile mCurrentApp:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInsertThread:Landroid/os/HandlerThread;

.field private mReport:Lcom/alibaba/ailabs/genie/time/statistics/OpenEventReport;

.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private mStudyCheck:Lcom/alibaba/ailabs/genie/studymode/StudyCheck;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 54
    new-instance v0, Lcom/alibaba/ailabs/genie/time/statistics/OpenEventReport;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/time/statistics/OpenEventReport;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mReport:Lcom/alibaba/ailabs/genie/time/statistics/OpenEventReport;

    .line 55
    new-instance v0, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;

    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/studymode/StudyCheck;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mStudyCheck:Lcom/alibaba/ailabs/genie/studymode/StudyCheck;

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "insertThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mInsertThread:Landroid/os/HandlerThread;

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mInsertThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mInsertThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mCurrentApp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Lcom/alibaba/ailabs/genie/time/statistics/OpenEventReport;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mReport:Lcom/alibaba/ailabs/genie/time/statistics/OpenEventReport;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Lcom/alibaba/ailabs/genie/studymode/StudyCheck;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mStudyCheck:Lcom/alibaba/ailabs/genie/studymode/StudyCheck;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;
    .locals 2

    .line 62
    sget-object v0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->singleton:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    if-nez v0, :cond_1

    .line 63
    const-class v0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->singleton:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->singleton:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    .line 67
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->singleton:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    return-object v0
.end method


# virtual methods
.method public getCurrentApp()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mCurrentApp:Ljava/lang/String;

    return-object v0
.end method

.method public insertBackgroundEvent()V
    .locals 3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertBackgroundEvent, mCurrentApp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mCurrentApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppletCount"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mCurrentApp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "888, mCurrentApp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mCurrentApp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mCurrentApp:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertEvent(Ljava/lang/String;I)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mCurrentApp:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/utils/DataUtils;->isDigital(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->setCurrentApp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public insertBackgroundEvent(Ljava/lang/String;J)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$3;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$3;-><init>(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public insertEvent(Ljava/lang/String;I)V
    .locals 2

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AppletCount"

    const-string p2, "appPackage is null, return"

    .line 176
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$2;-><init>(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public insertForegroundEvent()V
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertForegroundEvent, mCurrentApp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mCurrentApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppletCount"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mCurrentApp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mCurrentApp:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/utils/DataUtils;->isDigital(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "777"

    .line 244
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mCurrentApp:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertEvent(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setCurrentApp(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 255
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppletCount"

    const-string v1, "set currentApp is null"

    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mCurrentApp:Ljava/lang/String;

    .line 259
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v0, "sp_time"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/NewSharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "currentApp"

    .line 261
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mCurrentApp:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_1
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public start()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    new-instance v1, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$1;-><init>(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->setPackageListener(Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnPackageListener;)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->start()V

    return-void
.end method

.method public stop()V
    .locals 3

    const-string v0, "AppletCount"

    const-string v1, "stop"

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mCurrentApp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "555, mCurrentApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mCurrentApp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mCurrentApp:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertEvent(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->setCurrentApp(Ljava/lang/String;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->mClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->stop()V

    return-void
.end method
