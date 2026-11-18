.class public Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "DistanceSvr.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;
.implements Landroid/os/Handler$Callback;
.implements Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic$OnStateChangedListener;


# static fields
.field private static final DIED:I = 0x2

.field private static final DISTANCE_URI:Ljava/lang/String; = "content://com.android.settings.SettingsProvider.voiceprint/ultrasonic_recognize"

.field private static final RECHECK:I = 0x4

.field private static final RESULT:I = 0x3

.field private static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.ultrasonic"

.field private static final START:I = 0x0

.field private static final STOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DistanceSvr"

.field private static sDistanceSvr:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCur:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

.field private mHandler:Landroid/os/Handler;

.field private mIsStarted:Z

.field private mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

.field private mUltrasonic:Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mIsStarted:Z

    .line 177
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mContentObserver:Landroid/database/ContentObserver;

    .line 65
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private check(Z)V
    .locals 6

    .line 228
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->isOpened()Z

    move-result v0

    .line 229
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->isBinderAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "DistanceSvr"

    if-eqz v4, :cond_4

    if-nez v0, :cond_1

    goto :goto_4

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mCur:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

    if-nez p1, :cond_3

    if-eq v1, v0, :cond_2

    .line 249
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->isSame(Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 250
    :cond_2
    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mCur:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " had started gesture = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 256
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->startUltrasonic()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :goto_1
    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mCur:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 258
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 262
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " had started = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 260
    :goto_3
    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mCur:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

    throw p1

    .line 233
    :cond_4
    :goto_4
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mCur:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    .line 235
    :goto_5
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->closeUltrasonic()V

    if-nez v4, :cond_6

    const/4 p1, 0x0

    .line 238
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

    .line 240
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no need gesture, has connected = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAlive ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOpened ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private closeUltrasonic()V
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeUltrasonic  mIsStarted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mIsStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUltrasonic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mUltrasonic:Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DistanceSvr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mIsStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mUltrasonic:Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;->doStop()V

    :cond_1
    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mIsStarted:Z

    return-void
.end method

.method public static getAvailable(Landroid/content/Context;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "content://com.android.settings.SettingsProvider.voiceprint/ultrasonic_recognize"

    .line 186
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 189
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 190
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 191
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 199
    :cond_0
    invoke-static {v1}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 200
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v1

    goto :goto_1

    :catch_1
    move-exception v2

    move-object p0, v1

    .line 197
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    :cond_1
    invoke-static {v1}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 200
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v0

    :catchall_1
    move-exception v0

    .line 199
    :goto_1
    invoke-static {v1}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 200
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x3
    .end annotation

    .line 52
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->sDistanceSvr:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->sDistanceSvr:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->sDistanceSvr:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 59
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->sDistanceSvr:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.ultrasonic"

    return-object v0
.end method

.method private isOpened()Z
    .locals 4

    .line 206
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 210
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr$1;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr$1;-><init>(Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mContentObserver:Landroid/database/ContentObserver;

    .line 217
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.SettingsProvider.voiceprint/ultrasonic_recognize"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mContentObserver:Landroid/database/ContentObserver;

    .line 224
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->getAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private onResult(I)Z
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mCur:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "distance distance  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", clientInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DistanceSvr"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->onResult(I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private startUltrasonic()V
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startUltrasonic  mIsStarted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mIsStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUltrasonic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mUltrasonic:Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DistanceSvr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mIsStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mUltrasonic:Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;

    if-nez v0, :cond_1

    .line 286
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;-><init>(Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic$OnStateChangedListener;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mUltrasonic:Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;

    .line 287
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mUltrasonic:Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;->setup()V

    :cond_1
    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mIsStarted:Z

    .line 290
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mUltrasonic:Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ultrasonic/NativeUltrasonic;->doStart()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "DistanceSvr"

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 80
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->unlinkToDeath()V

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trigger inner start, remove old = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->linkToDeath()V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trigger inner start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    goto/16 :goto_3

    .line 96
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-eq v0, v3, :cond_6

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_3

    goto :goto_1

    .line 117
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 119
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 120
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->onResult(I)Z

    move-result p1

    goto :goto_3

    .line 121
    :cond_4
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    goto :goto_3

    .line 97
    :cond_6
    :goto_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 98
    iget-object v5, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

    if-eqz v5, :cond_b

    .line 100
    invoke-virtual {v5}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_4

    .line 108
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x0

    if-ne v0, v4, :cond_8

    .line 109
    invoke-virtual {v5}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_9

    .line 110
    iput-object v6, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

    goto :goto_2

    .line 113
    :cond_8
    invoke-virtual {v5}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->unlinkToDeath()V

    .line 114
    iput-object v6, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mReadyTriggerInfo:Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

    .line 116
    :cond_9
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trigger inner stop, type  = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", info = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_3
    if-eqz p1, :cond_a

    .line 126
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->check(Z)V

    :cond_a
    return v3

    .line 101
    :cond_b
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trigger inner stop , but no execute, = clientId "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", clientInfo = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_c

    .line 102
    invoke-virtual {v5}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_c
    const-string v0, ""

    :goto_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "e"

    const/4 v2, 0x0

    const-string v3, "DistanceSvr"

    const/4 v4, 0x1

    if-nez p1, :cond_2

    const-string p1, "b"

    .line 139
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    .line 141
    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 146
    :cond_0
    :try_start_0
    new-instance v6, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p1, p0}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    .line 147
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "c"

    .line 150
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->setClientId(Ljava/lang/String;)V

    const-string p1, "id"

    .line 151
    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->setClientKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "trigger start = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mHandler:Landroid/os/Handler;

    invoke-static {p2, v2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const/4 v2, 0x1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 159
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 142
    :cond_1
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gesture client binder is null or alive = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2
    if-ne p1, v4, :cond_3

    .line 162
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trigger stop = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mHandler:Landroid/os/Handler;

    invoke-static {p2, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    const/4 v2, 0x1

    :cond_3
    :goto_3
    const-string p1, "r"

    .line 170
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onDied(Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;)V
    .locals 2

    .line 295
    check-cast p1, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDied  clientInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DistanceSvr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->getClientId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStateChanged(I)V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceSvr;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
