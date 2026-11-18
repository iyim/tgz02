.class public Lcom/uc/sdk/ulog/ULogSetup;
.super Ljava/lang/Object;
.source "ULogSetup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/sdk/ulog/ULogSetup$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_ALIVE_DAY:I = 0x5

.field private static final DEFAULT_PUBLIC_KEY:Ljava/lang/String; = "a05033cfb9e2bb67cecd14353339cef78d40ea6f8397fdf8caec4df3812ff2ef8b0f3057e4b72c40390a1bab426cb0531668ecf36c0df6350100711c0f264156"

.field private static final TAG:Ljava/lang/String; = "ULog.ULogSetup"

.field private static volatile sInstance:Lcom/uc/sdk/ulog/ULogSetup; = null

.field private static volatile sIsInstalled:Z = false


# instance fields
.field private final mCacheDir:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mIsDebug:Z

.field private mLogEnable:Z

.field private final mLogFileDir:Ljava/lang/String;

.field private final mLogFileNamePrefix:Ljava/lang/String;

.field private final mLogLevel:I

.field private final mLogSyncWrite:Z

.field private final mMaxFileSize:J

.field private final mMaxLogAliveDay:I

.field private final mPublicKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;ZZJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/uc/sdk/ulog/ULogSetup;->mContext:Landroid/content/Context;

    .line 39
    iput-boolean p3, p0, Lcom/uc/sdk/ulog/ULogSetup;->mIsDebug:Z

    .line 40
    iput-wide p4, p0, Lcom/uc/sdk/ulog/ULogSetup;->mMaxFileSize:J

    .line 42
    iput p6, p0, Lcom/uc/sdk/ulog/ULogSetup;->mMaxLogAliveDay:I

    .line 43
    iput p7, p0, Lcom/uc/sdk/ulog/ULogSetup;->mLogLevel:I

    .line 44
    iput-object p8, p0, Lcom/uc/sdk/ulog/ULogSetup;->mLogFileNamePrefix:Ljava/lang/String;

    .line 45
    iput-object p9, p0, Lcom/uc/sdk/ulog/ULogSetup;->mLogFileDir:Ljava/lang/String;

    .line 46
    iput-object p10, p0, Lcom/uc/sdk/ulog/ULogSetup;->mCacheDir:Ljava/lang/String;

    .line 47
    iput-object p11, p0, Lcom/uc/sdk/ulog/ULogSetup;->mPublicKey:Ljava/lang/String;

    .line 49
    iput-boolean p2, p0, Lcom/uc/sdk/ulog/ULogSetup;->mLogEnable:Z

    .line 50
    iput-boolean p12, p0, Lcom/uc/sdk/ulog/ULogSetup;->mLogSyncWrite:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ZZJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/uc/sdk/ulog/ULogSetup$1;)V
    .locals 0

    .line 10
    invoke-direct/range {p0 .. p12}, Lcom/uc/sdk/ulog/ULogSetup;-><init>(Landroid/content/Context;ZZJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static init(Lcom/uc/sdk/ulog/ULogSetup;)Lcom/uc/sdk/ulog/ULogSetup;
    .locals 2

    if-eqz p0, :cond_2

    .line 92
    const-class v0, Lcom/uc/sdk/ulog/ULogSetup;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lcom/uc/sdk/ulog/ULogSetup;->sInstance:Lcom/uc/sdk/ulog/ULogSetup;

    if-nez v1, :cond_0

    .line 94
    sput-object p0, Lcom/uc/sdk/ulog/ULogSetup;->sInstance:Lcom/uc/sdk/ulog/ULogSetup;

    .line 95
    invoke-virtual {p0}, Lcom/uc/sdk/ulog/ULogSetup;->isLogEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-static {p0}, Lcom/uc/sdk/ulog/ULogSetup;->initXlog(Lcom/uc/sdk/ulog/ULogSetup;)Z

    goto :goto_0

    :cond_0
    const-string p0, "ULog.ULogSetup"

    const-string v1, "ULog instance is already set. this invoking will be ignored"

    .line 99
    invoke-static {p0, v1}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    sget-object p0, Lcom/uc/sdk/ulog/ULogSetup;->sInstance:Lcom/uc/sdk/ulog/ULogSetup;

    return-object p0

    :catchall_0
    move-exception p0

    .line 101
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 90
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ULog init, logSetup should not be null."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static initXlog(Lcom/uc/sdk/ulog/ULogSetup;)Z
    .locals 12

    .line 54
    sget-boolean v0, Lcom/uc/sdk/ulog/ULogSetup;->sIsInstalled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 58
    :cond_0
    const-class v0, Lcom/uc/sdk/ulog/ULogSetup;

    monitor-enter v0

    const/4 v2, 0x1

    .line 60
    :try_start_0
    sput-boolean v2, Lcom/uc/sdk/ulog/ULogSetup;->sIsInstalled:Z

    .line 61
    iget-boolean v3, p0, Lcom/uc/sdk/ulog/ULogSetup;->mLogEnable:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/uc/sdk/ulog/ULogSetup;->mLogLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    .line 64
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/uc/sdk/ulog/ULogSetup;->getMaxLogAliveDay()I

    move-result v5

    const/4 v6, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/uc/sdk/ulog/ULogSetup;->getCacheDir()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/uc/sdk/ulog/ULogSetup;->getLogFileDir()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/uc/sdk/ulog/ULogSetup;->getLogFileNamePrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/uc/sdk/ulog/ULogSetup;->getPublicKey()Ljava/lang/String;

    move-result-object v10

    .line 66
    invoke-virtual {p0}, Lcom/uc/sdk/ulog/ULogSetup;->isLogSyncWrite()Z

    move-result v11

    move v4, v3

    .line 64
    invoke-static/range {v4 .. v11}, Lcom/uc/sdk/ulog/Xlog;->open(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    invoke-static {v3}, Lcom/uc/sdk/ulog/ULogSetup;->setLogLevel(I)V

    .line 71
    new-instance v4, Lcom/uc/sdk/ulog/Xlog;

    invoke-direct {v4}, Lcom/uc/sdk/ulog/Xlog;-><init>()V

    invoke-static {v4}, Lcom/uc/sdk/ulog/LogInternal;->setLogImp(Lcom/uc/sdk/ulog/LogImp;)V

    .line 73
    iget-boolean v4, p0, Lcom/uc/sdk/ulog/ULogSetup;->mIsDebug:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0, v4}, Lcom/uc/sdk/ulog/ULogSetup;->setConsoleLogOpen(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/uc/sdk/ulog/ULogSetup;->getMaxFileSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/uc/sdk/ulog/ULogSetup;->getMaxFileSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/uc/sdk/ulog/Xlog;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "ULog.ULogSetup"

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ULog init fail, error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    const-string v4, "ULog.ULogSetup"

    const-string v5, "init ULog. enable:%b, realLogLevel:%d, prefix:%s"

    const/4 v6, 0x3

    .line 83
    new-array v6, v6, [Ljava/lang/Object;

    iget-boolean v7, p0, Lcom/uc/sdk/ulog/ULogSetup;->mLogEnable:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/uc/sdk/ulog/ULogSetup;->getLogFileNamePrefix()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v1

    invoke-static {v4, v5, v6}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static isInited()Z
    .locals 1

    .line 113
    sget-object v0, Lcom/uc/sdk/ulog/ULogSetup;->sInstance:Lcom/uc/sdk/ulog/ULogSetup;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/uc/sdk/ulog/ULogSetup;->sIsInstalled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 117
    invoke-static {p0}, Lcom/uc/sdk/ulog/LogInternal;->setLogLevel(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static with()Lcom/uc/sdk/ulog/ULogSetup;
    .locals 2

    .line 106
    sget-object v0, Lcom/uc/sdk/ulog/ULogSetup;->sInstance:Lcom/uc/sdk/ulog/ULogSetup;

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/uc/sdk/ulog/ULogSetup;->sInstance:Lcom/uc/sdk/ulog/ULogSetup;

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "you must init ULog sdk first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addExtraInfo2File(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 165
    invoke-static {}, Lcom/uc/sdk/ulog/LogInternal;->getImpl()Lcom/uc/sdk/ulog/LogImp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/uc/sdk/ulog/ULogSetup;->mPublicKey:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/uc/sdk/ulog/LogImp;->addExtraInfo2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public closeULog()V
    .locals 1

    .line 137
    invoke-static {}, Lcom/uc/sdk/ulog/LogInternal;->getImpl()Lcom/uc/sdk/ulog/LogImp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Lcom/uc/sdk/ulog/LogImp;->appenderClose()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public flushToDisk()V
    .locals 2

    .line 151
    invoke-static {}, Lcom/uc/sdk/ulog/LogInternal;->getImpl()Lcom/uc/sdk/ulog/LogImp;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 153
    invoke-interface {v0, v1}, Lcom/uc/sdk/ulog/LogImp;->appenderFlush(Z)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public flushToDiskAndWait()V
    .locals 2

    .line 158
    invoke-static {}, Lcom/uc/sdk/ulog/LogInternal;->getImpl()Lcom/uc/sdk/ulog/LogImp;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 160
    invoke-interface {v0, v1}, Lcom/uc/sdk/ulog/LogImp;->appenderFlush(Z)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getCacheDir()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/uc/sdk/ulog/ULogSetup;->mCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/uc/sdk/ulog/ULogSetup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLogFileDir()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/uc/sdk/ulog/ULogSetup;->mLogFileDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLogFileNamePrefix()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/uc/sdk/ulog/ULogSetup;->mLogFileNamePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getLoglevel()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/uc/sdk/ulog/ULogSetup;->mLogLevel:I

    return v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .line 193
    iget-wide v0, p0, Lcom/uc/sdk/ulog/ULogSetup;->mMaxFileSize:J

    return-wide v0
.end method

.method public getMaxLogAliveDay()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/uc/sdk/ulog/ULogSetup;->mMaxLogAliveDay:I

    return v0
.end method

.method public getPeriodLogs(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 172
    invoke-static {}, Lcom/uc/sdk/ulog/LogInternal;->getImpl()Lcom/uc/sdk/ulog/LogImp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p1, p2, p3}, Lcom/uc/sdk/ulog/LogImp;->getPeriodLogs(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/uc/sdk/ulog/ULogSetup;->mPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/uc/sdk/ulog/ULogSetup;->mIsDebug:Z

    return v0
.end method

.method public isLogEnable()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/uc/sdk/ulog/ULogSetup;->mLogEnable:Z

    return v0
.end method

.method public isLogSyncWrite()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/uc/sdk/ulog/ULogSetup;->mLogSyncWrite:Z

    return v0
.end method

.method public setConsoleLogOpen(Z)V
    .locals 1

    .line 144
    invoke-static {}, Lcom/uc/sdk/ulog/LogInternal;->getImpl()Lcom/uc/sdk/ulog/LogImp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p1}, Lcom/uc/sdk/ulog/LogImp;->setConsoleLogOpen(Z)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setLogEnable(Z)V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/uc/sdk/ulog/ULogSetup;->mLogEnable:Z

    if-eq v0, p1, :cond_1

    .line 122
    iput-boolean p1, p0, Lcom/uc/sdk/ulog/ULogSetup;->mLogEnable:Z

    if-nez p1, :cond_0

    const/4 p1, 0x6

    .line 125
    invoke-static {p1}, Lcom/uc/sdk/ulog/ULogSetup;->setLogLevel(I)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Lcom/uc/sdk/ulog/ULogSetup;->with()Lcom/uc/sdk/ulog/ULogSetup;

    move-result-object p1

    invoke-static {p1}, Lcom/uc/sdk/ulog/ULogSetup;->initXlog(Lcom/uc/sdk/ulog/ULogSetup;)Z

    .line 128
    iget p1, p0, Lcom/uc/sdk/ulog/ULogSetup;->mLogLevel:I

    invoke-static {p1}, Lcom/uc/sdk/ulog/ULogSetup;->setLogLevel(I)V

    :cond_1
    :goto_0
    return-void
.end method
