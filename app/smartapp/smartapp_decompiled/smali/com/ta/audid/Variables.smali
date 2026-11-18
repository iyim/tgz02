.class public Lcom/ta/audid/Variables;
.super Ljava/lang/Object;
.source "Variables.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "utdid.db"

.field private static final mInstance:Lcom/ta/audid/Variables;


# instance fields
.field private bGetModeState:Z

.field private volatile bInit:Z

.field private bOldMode:Z

.field private mAppChannel:Ljava/lang/String;

.field private mAppkey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDbMgr:Lcom/ta/audid/db/DBMgr;

.field private mDeltaTime:J

.field private mOldModeFile:Ljava/io/File;

.field private mPhoneStatePermission:Z

.field private mStoragePermission:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/ta/audid/Variables;

    invoke-direct {v0}, Lcom/ta/audid/Variables;-><init>()V

    sput-object v0, Lcom/ta/audid/Variables;->mInstance:Lcom/ta/audid/Variables;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "testKey"

    .line 23
    iput-object v0, p0, Lcom/ta/audid/Variables;->mAppkey:Ljava/lang/String;

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/ta/audid/Variables;->mAppChannel:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/ta/audid/Variables;->mDbMgr:Lcom/ta/audid/db/DBMgr;

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/ta/audid/Variables;->bInit:Z

    .line 28
    iput-object v0, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    .line 29
    iput-boolean v1, p0, Lcom/ta/audid/Variables;->bGetModeState:Z

    .line 30
    iput-boolean v1, p0, Lcom/ta/audid/Variables;->bOldMode:Z

    .line 31
    iput-boolean v1, p0, Lcom/ta/audid/Variables;->mStoragePermission:Z

    .line 32
    iput-boolean v1, p0, Lcom/ta/audid/Variables;->mPhoneStatePermission:Z

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/ta/audid/Variables;->mDeltaTime:J

    return-void
.end method

.method public static getInstance()Lcom/ta/audid/Variables;
    .locals 1

    .line 39
    sget-object v0, Lcom/ta/audid/Variables;->mInstance:Lcom/ta/audid/Variables;

    return-object v0
.end method


# virtual methods
.method public getAppChannel()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/ta/audid/Variables;->mAppChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/ta/audid/Variables;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentTimeMillis()J
    .locals 4

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ta/audid/Variables;->mDeltaTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getCurrentTimeMillisString()Ljava/lang/String;
    .locals 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ta/audid/Variables;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDbMgr()Lcom/ta/audid/db/DBMgr;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/ta/audid/Variables;->mDbMgr:Lcom/ta/audid/db/DBMgr;

    return-object v0
.end method

.method public declared-synchronized getOldMode()Z
    .locals 5

    monitor-enter p0

    .line 103
    :try_start_0
    iget-boolean v0, p0, Lcom/ta/audid/Variables;->bGetModeState:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 104
    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/ta/audid/Variables;->bOldMode:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-boolean v0, p0, Lcom/ta/audid/Variables;->bOldMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return v0

    .line 109
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/ta/audid/upload/UtdidKeyFile;->getOldModeFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iput-boolean v2, p0, Lcom/ta/audid/Variables;->bOldMode:Z

    const-string v0, ""

    .line 115
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "old mode file"

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-boolean v0, p0, Lcom/ta/audid/Variables;->bOldMode:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    iput-boolean v2, p0, Lcom/ta/audid/Variables;->bGetModeState:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v0

    :cond_2
    :goto_0
    :try_start_3
    iput-boolean v2, p0, Lcom/ta/audid/Variables;->bGetModeState:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v3, ""

    .line 119
    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 124
    :goto_1
    :try_start_5
    iput-boolean v1, p0, Lcom/ta/audid/Variables;->bOldMode:Z

    const-string v0, ""

    .line 125
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "new mode file"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-boolean v0, p0, Lcom/ta/audid/Variables;->bOldMode:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v0

    .line 121
    :goto_2
    :try_start_6
    iput-boolean v2, p0, Lcom/ta/audid/Variables;->bGetModeState:Z

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized init()V
    .locals 3

    monitor-enter p0

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lcom/ta/audid/Variables;->bInit:Z

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->getInstance()Lcom/ta/audid/filesync/UtdidBroadcastMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->startBroadCastReceiver(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/ta/audid/db/DBMgr;

    iget-object v1, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "utdid.db"

    invoke-direct {v0, v1, v2}, Lcom/ta/audid/db/DBMgr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/audid/Variables;->mDbMgr:Lcom/ta/audid/db/DBMgr;

    .line 49
    iget-object v0, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/audid/upload/UploadMgr;->getInstance(Landroid/content/Context;)Lcom/ta/audid/upload/UploadMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/upload/UploadMgr;->start()V

    .line 50
    iget-object v0, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/audid/permission/PermissionUtils;->checkStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ta/audid/Variables;->mStoragePermission:Z

    .line 51
    iget-object v0, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/audid/permission/PermissionUtils;->checkReadPhoneStatePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ta/audid/Variables;->mPhoneStatePermission:Z

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/ta/audid/Variables;->bInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initContext(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    .line 59
    monitor-exit p0

    return-void

    .line 62
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 65
    :cond_1
    iput-object p1, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/ta/audid/Variables;->mAppChannel:Ljava/lang/String;

    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 1

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iput-object p1, p0, Lcom/ta/audid/Variables;->mAppkey:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 130
    invoke-static {p1}, Lcom/ta/audid/utils/UtdidLogger;->setDebug(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public declared-synchronized setOldMode(Z)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 76
    :try_start_0
    iput-boolean p1, p0, Lcom/ta/audid/Variables;->bOldMode:Z

    const-string v2, ""

    .line 77
    new-array v3, v1, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/ta/audid/Variables;->bOldMode:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 80
    iget-object v2, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ta/audid/upload/UploadMgr;->getInstance(Landroid/content/Context;)Lcom/ta/audid/upload/UploadMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/audid/upload/UploadMgr;->stop()V

    .line 81
    invoke-static {}, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->getInstance()Lcom/ta/audid/filesync/UtdidBroadcastMgr;

    move-result-object v2

    iget-object v3, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->stopBroadCastReceiver(Landroid/content/Context;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {}, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->getInstance()Lcom/ta/audid/filesync/UtdidBroadcastMgr;

    move-result-object v2

    iget-object v3, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->startBroadCastReceiver(Landroid/content/Context;)V

    .line 85
    iget-object v2, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ta/audid/upload/UploadMgr;->getInstance(Landroid/content/Context;)Lcom/ta/audid/upload/UploadMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/audid/upload/UploadMgr;->start()V

    .line 88
    :goto_0
    iget-object v2, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    if-nez v2, :cond_1

    .line 89
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/ta/audid/upload/UtdidKeyFile;->getOldModeFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 93
    iget-object p1, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    if-eqz v2, :cond_3

    .line 95
    iget-object p1, p0, Lcom/ta/audid/Variables;->mOldModeFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, ""

    .line 98
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public setSystemTime(J)V
    .locals 2

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/ta/audid/Variables;->mDeltaTime:J

    return-void
.end method

.method public userGrantPhoneStatePermission()Z
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/audid/permission/PermissionUtils;->checkReadPhoneStatePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    .line 162
    iget-boolean v1, p0, Lcom/ta/audid/Variables;->mPhoneStatePermission:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/ta/audid/Variables;->mStoragePermission:Z

    return v0

    .line 166
    :cond_0
    iput-boolean v0, p0, Lcom/ta/audid/Variables;->mStoragePermission:Z

    const/4 v0, 0x0

    return v0
.end method

.method public userGrantStoragePermission()Z
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/ta/audid/Variables;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/audid/permission/PermissionUtils;->checkStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    .line 146
    iget-boolean v1, p0, Lcom/ta/audid/Variables;->mStoragePermission:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/ta/audid/Variables;->mStoragePermission:Z

    return v0

    .line 150
    :cond_0
    iput-boolean v0, p0, Lcom/ta/audid/Variables;->mStoragePermission:Z

    const/4 v0, 0x0

    return v0
.end method
