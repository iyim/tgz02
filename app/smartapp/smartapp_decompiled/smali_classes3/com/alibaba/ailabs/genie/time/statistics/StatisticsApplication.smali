.class public Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;
.super Landroid/app/Application;
.source "StatisticsApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$StatisticsThreadFactory;
    }
.end annotation


# static fields
.field private static final CHILD_MODE_AUTHORITY:Ljava/lang/String; = "content://com.alibaba.ailabs.childmode.provider/childMode"

.field private static final CORE_THREAD_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "StatisticsApplication"

.field private static mApplication:Landroid/app/Application;

.field private static volatile mChildModel:Z

.field private static mDaoSession:Lcom/alibaba/ailabs/genie/time/db/DaoSession;


# instance fields
.field private mChildContentObserver:Landroid/database/ContentObserver;

.field private mMainHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 51
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 133
    new-instance v0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$3;-><init>(Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mChildContentObserver:Landroid/database/ContentObserver;

    .line 196
    new-instance v0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$5;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$5;-><init>(Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->startService()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mChildModel:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 47
    sput-boolean p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mChildModel:Z

    return p0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 114
    sget-object v0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getDaoSession()Lcom/alibaba/ailabs/genie/time/db/DaoSession;
    .locals 1

    .line 62
    sget-object v0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mDaoSession:Lcom/alibaba/ailabs/genie/time/db/DaoSession;

    return-object v0
.end method

.method private initGreenDao()V
    .locals 3

    .line 127
    new-instance v0, Lcom/alibaba/ailabs/genie/time/db/DaoMaster$DevOpenHelper;

    sget-object v1, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mApplication:Landroid/app/Application;

    const-string v2, "appEvent.db"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/ailabs/genie/time/db/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/time/db/DaoMaster$DevOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/alibaba/ailabs/genie/time/db/DaoMaster;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/time/db/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 130
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/time/db/DaoMaster;->newSession()Lcom/alibaba/ailabs/genie/time/db/DaoSession;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mDaoSession:Lcom/alibaba/ailabs/genie/time/db/DaoSession;

    return-void
.end method

.method private initScheduleExecutorService()V
    .locals 8

    .line 158
    new-instance v0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$4;-><init>(Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    .line 166
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$StatisticsThreadFactory;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$StatisticsThreadFactory;-><init>()V

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 170
    new-instance v2, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;

    sget-object v0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;-><init>(Landroid/content/Context;)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    const-wide/16 v5, 0x5

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static isChildModel()Z
    .locals 1

    .line 150
    invoke-static {}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isMrGreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 153
    :cond_0
    sget-boolean v0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mChildModel:Z

    return v0
.end method

.method private registerBR()V
    .locals 3

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    sget-object v1, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mApplication:Landroid/app/Application;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private startService()V
    .locals 4

    const-string v0, "StatisticsApplication"

    const-string v1, "startService"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mApplication:Landroid/app/Application;

    const-class v3, Lcom/alibaba/ailabs/genie/time/service/TimerService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 121
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0, v2}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const-string v0, "StatisticsApplication"

    const-string v1, "init---"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sput-object p1, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mApplication:Landroid/app/Application;

    .line 81
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->registerBR()V

    .line 83
    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "content://com.alibaba.ailabs.childmode.provider/childMode"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mChildContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p1, "persist.sys.is.child.mode"

    .line 84
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getBooleanSystemProperties(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mChildModel:Z

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init-isChildMode:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mChildModel:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->initGreenDao()V

    .line 88
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->startService()V

    .line 89
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->getInstance()Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->start()V

    .line 91
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mMainHandler:Landroid/os/Handler;

    .line 94
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$1;-><init>(Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;)V

    const-wide/16 v1, 0x2328

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    new-instance p1, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$2;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$2;-><init>(Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
