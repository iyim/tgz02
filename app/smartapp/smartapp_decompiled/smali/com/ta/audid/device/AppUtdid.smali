.class public Lcom/ta/audid/device/AppUtdid;
.super Ljava/lang/Object;
.source "AppUtdid.java"


# static fields
.field private static final V5:I = 0x5

.field private static final mInstance:Lcom/ta/audid/device/AppUtdid;


# instance fields
.field private mAppUtdid:Ljava/lang/String;

.field private mUtdid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/ta/audid/device/AppUtdid;

    invoke-direct {v0}, Lcom/ta/audid/device/AppUtdid;-><init>()V

    sput-object v0, Lcom/ta/audid/device/AppUtdid;->mInstance:Lcom/ta/audid/device/AppUtdid;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/ta/audid/device/AppUtdid;->mAppUtdid:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/ta/audid/device/AppUtdid;->mUtdid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ta/audid/device/AppUtdid;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ta/audid/device/AppUtdid;->mAppUtdid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ta/audid/device/AppUtdid;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/ta/audid/device/AppUtdid;->writeSdcardDevice()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/ta/audid/device/AppUtdid;
    .locals 1

    .line 38
    sget-object v0, Lcom/ta/audid/device/AppUtdid;->mInstance:Lcom/ta/audid/device/AppUtdid;

    return-object v0
.end method

.method private getV5Utdid()Ljava/lang/String;
    .locals 11

    .line 83
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 88
    :cond_0
    invoke-static {}, Lcom/ta/audid/utils/AppInfoUtils;->isBelowMVersion()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_1

    .line 89
    invoke-static {v0}, Lcom/ta/audid/upload/UtdidKeyFile;->getUtdidFromSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 91
    invoke-static {v2}, Lcom/ta/audid/device/AppUtdidDecoder;->decode(Ljava/lang/String;)Lcom/ta/audid/device/UtdidObj;

    move-result-object v4

    .line 92
    invoke-virtual {v4}, Lcom/ta/audid/device/UtdidObj;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/ta/audid/device/UtdidObj;->getVersion()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 93
    invoke-static {v2}, Lcom/ta/audid/upload/UtdidKeyFile;->writeAppUtdidFile(Ljava/lang/String;)V

    .line 94
    invoke-static {v2}, Lcom/ta/audid/upload/UtdidKeyFile;->writeSdcardUtdidFile(Ljava/lang/String;)V

    return-object v2

    .line 100
    :cond_1
    invoke-static {}, Lcom/ta/audid/upload/UtdidKeyFile;->readSdcardUtdidFile()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {}, Lcom/ta/audid/upload/UtdidKeyFile;->readAppUtdidFile()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 106
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-nez v6, :cond_3

    .line 107
    invoke-static {v2}, Lcom/ta/audid/device/AppUtdidDecoder;->decode(Ljava/lang/String;)Lcom/ta/audid/device/UtdidObj;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 110
    invoke-virtual {v5}, Lcom/ta/audid/device/UtdidObj;->getVersion()I

    move-result v6

    if-eq v6, v3, :cond_2

    .line 112
    invoke-static {v1}, Lcom/ta/audid/upload/UtdidKeyFile;->writeSdcardUtdidFile(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v5}, Lcom/ta/audid/device/UtdidObj;->getTimestamp()J

    move-result-wide v9

    goto :goto_1

    :cond_3
    :goto_0
    move-wide v9, v7

    .line 119
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 120
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    .line 123
    :cond_4
    invoke-static {v4}, Lcom/ta/audid/device/AppUtdidDecoder;->decode(Ljava/lang/String;)Lcom/ta/audid/device/UtdidObj;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_6

    .line 127
    invoke-virtual {v5}, Lcom/ta/audid/device/UtdidObj;->getVersion()I

    move-result v6

    if-eq v6, v3, :cond_5

    .line 129
    invoke-static {v1}, Lcom/ta/audid/upload/UtdidKeyFile;->writeAppUtdidFile(Ljava/lang/String;)V

    move-object v4, v1

    goto :goto_3

    .line 131
    :cond_5
    invoke-virtual {v5}, Lcom/ta/audid/device/UtdidObj;->getTimestamp()J

    move-result-wide v7

    .line 136
    :cond_6
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 137
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v2

    :cond_7
    cmp-long v1, v9, v7

    if-ltz v1, :cond_8

    .line 141
    invoke-static {v2}, Lcom/ta/audid/upload/UtdidKeyFile;->writeAppUtdidFile(Ljava/lang/String;)V

    .line 142
    invoke-static {v0, v2}, Lcom/ta/audid/upload/UtdidKeyFile;->writeUtdidToSettings(Landroid/content/Context;Ljava/lang/String;)V

    return-object v2

    .line 145
    :cond_8
    invoke-static {v4}, Lcom/ta/audid/upload/UtdidKeyFile;->writeSdcardUtdidFile(Ljava/lang/String;)V

    .line 146
    invoke-static {v0, v4}, Lcom/ta/audid/upload/UtdidKeyFile;->writeUtdidToSettings(Landroid/content/Context;Ljava/lang/String;)V

    return-object v4

    .line 150
    :cond_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 151
    invoke-static {v2}, Lcom/ta/audid/upload/UtdidKeyFile;->writeAppUtdidFile(Ljava/lang/String;)V

    .line 152
    invoke-static {v0, v2}, Lcom/ta/audid/upload/UtdidKeyFile;->writeUtdidToSettings(Landroid/content/Context;Ljava/lang/String;)V

    return-object v2

    .line 154
    :cond_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 155
    invoke-static {v4}, Lcom/ta/audid/upload/UtdidKeyFile;->writeSdcardUtdidFile(Ljava/lang/String;)V

    .line 156
    invoke-static {v0, v4}, Lcom/ta/audid/upload/UtdidKeyFile;->writeUtdidToSettings(Landroid/content/Context;Ljava/lang/String;)V

    return-object v4

    :cond_b
    return-object v1
.end method

.method private uploadAppUtdid()V
    .locals 3

    .line 164
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->d()V

    .line 165
    iget-object v0, p0, Lcom/ta/audid/device/AppUtdid;->mAppUtdid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 169
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ta/audid/utils/TaskExecutor;->getInstance()Lcom/ta/audid/utils/TaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/ta/audid/device/AppUtdid$1;

    invoke-direct {v1, p0}, Lcom/ta/audid/device/AppUtdid$1;-><init>(Lcom/ta/audid/device/AppUtdid;)V

    invoke-virtual {v0, v1}, Lcom/ta/audid/utils/TaskExecutor;->submit(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 191
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, ""

    invoke-static {v0, v1}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private writeSdcardDevice()V
    .locals 2

    .line 196
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-static {v0}, Lcom/ta/audid/collect/DeviceInfo2;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-static {v0}, Lcom/ta/audid/collect/DeviceInfo2;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v1, v0}, Lcom/ta/audid/store/SdcardDeviceModle;->writeSdcardDeviceModle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentAppUtdid()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/ta/audid/device/AppUtdid;->mAppUtdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUtdid()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/ta/audid/device/AppUtdid;->mUtdid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/ta/audid/device/AppUtdid;->mUtdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 46
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/ta/audid/device/AppUtdid;->getUtdidFromFile()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    invoke-direct {p0}, Lcom/ta/audid/device/AppUtdid;->uploadAppUtdid()V

    .line 49
    iget-object v0, p0, Lcom/ta/audid/device/AppUtdid;->mUtdid:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    const-string v0, "ffffffffffffffffffffffff"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUtdidFromFile()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    .line 57
    :try_start_0
    invoke-static {}, Lcom/ta/audid/utils/MutiProcessLock;->lockUtdidFile()V

    .line 59
    invoke-direct {p0}, Lcom/ta/audid/device/AppUtdid;->getV5Utdid()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 61
    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read from NewFile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iput-object v2, p0, Lcom/ta/audid/device/AppUtdid;->mUtdid:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/ta/audid/device/AppUtdid;->mAppUtdid:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/ta/audid/device/AppUtdid;->mUtdid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-static {}, Lcom/ta/audid/utils/MutiProcessLock;->releaseUtdidFile()V

    return-object v0

    .line 67
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ta/utdid2/device/UTUtdid;->instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/utdid2/device/UTUtdid;->getValueForUpdate()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 69
    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read from OldFile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iput-object v2, p0, Lcom/ta/audid/device/AppUtdid;->mUtdid:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lcom/ta/audid/device/AppUtdid;->mAppUtdid:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/ta/audid/device/AppUtdid;->mUtdid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-static {}, Lcom/ta/audid/utils/MutiProcessLock;->releaseUtdidFile()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 75
    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :cond_1
    invoke-static {}, Lcom/ta/audid/utils/MutiProcessLock;->releaseUtdidFile()V

    return-object v0

    :goto_0
    invoke-static {}, Lcom/ta/audid/utils/MutiProcessLock;->releaseUtdidFile()V

    throw v0
.end method

.method public declared-synchronized setAppUtdid(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 207
    :try_start_0
    iput-object p1, p0, Lcom/ta/audid/device/AppUtdid;->mAppUtdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
