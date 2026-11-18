.class public Lcom/ulog/uploader/ULogUploadSetup;
.super Ljava/lang/Object;
.source "ULogUploadSetup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ulog/uploader/ULogUploadSetup$Builder;
    }
.end annotation


# static fields
.field public static final KEY_TASK_ID:Ljava/lang/String; = "w_taskid"

.field public static final KEY_TRIGGER_ID:Ljava/lang/String; = "w_triggerid"

.field private static final TAG:Ljava/lang/String; = "ULog.UploadSetup"

.field private static volatile sInstance:Lcom/ulog/uploader/ULogUploadSetup;


# instance fields
.field private final uLogSetup:Lcom/uc/sdk/ulog/ULogSetup;

.field private final uLogUploadClient:Lcom/ulog/uploader/client/UploadClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uc/sdk/ulog/ULogSetup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/ulog/uploader/client/IULogUploader;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uc/sdk/ulog/ULogSetup;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/ulog/uploader/client/IULogUploader;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v13, Lcom/ulog/uploader/client/UploadClient;

    move-object v1, v13

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v1 .. v12}, Lcom/ulog/uploader/client/UploadClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/ulog/uploader/client/IULogUploader;)V

    iput-object v13, v0, Lcom/ulog/uploader/ULogUploadSetup;->uLogUploadClient:Lcom/ulog/uploader/client/UploadClient;

    move-object/from16 v1, p2

    .line 37
    iput-object v1, v0, Lcom/ulog/uploader/ULogUploadSetup;->uLogSetup:Lcom/uc/sdk/ulog/ULogSetup;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcom/ulog/uploader/ULogUploadSetup;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 302
    invoke-static {p0, p1, v0}, Lcom/ulog/uploader/ULogUploadSetup;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static checkNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 297
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ULogUploadSetup build error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " should not be empty! "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static init(Lcom/ulog/uploader/ULogUploadSetup;)Lcom/ulog/uploader/ULogUploadSetup;
    .locals 2

    if-eqz p0, :cond_1

    .line 44
    const-class v0, Lcom/ulog/uploader/ULogUploadSetup;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/ulog/uploader/ULogUploadSetup;->sInstance:Lcom/ulog/uploader/ULogUploadSetup;

    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/ulog/uploader/ULogUploadSetup;->uLogSetup:Lcom/uc/sdk/ulog/ULogSetup;

    invoke-static {v1}, Lcom/ulog/uploader/ULogUploadSetup;->initUlog(Lcom/uc/sdk/ulog/ULogSetup;)V

    .line 47
    sput-object p0, Lcom/ulog/uploader/ULogUploadSetup;->sInstance:Lcom/ulog/uploader/ULogUploadSetup;

    goto :goto_0

    :cond_0
    const-string p0, "ULog.UploadSetup"

    const-string/jumbo v1, "ulog uploader instance is already set. this invoking will be ignored"

    .line 49
    invoke-static {p0, v1}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    sget-object p0, Lcom/ulog/uploader/ULogUploadSetup;->sInstance:Lcom/ulog/uploader/ULogUploadSetup;

    return-object p0

    :catchall_0
    move-exception p0

    .line 51
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "ulog uploader init, uploadSetup should not be null."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static initUlog(Lcom/uc/sdk/ulog/ULogSetup;)V
    .locals 12

    .line 111
    invoke-virtual {p0}, Lcom/uc/sdk/ulog/ULogSetup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ulog/uploader/utils/ULogPreferences;->init(Landroid/content/Context;)V

    const/4 v0, -0x1

    const-string/jumbo v1, "ulog_push_level"

    .line 113
    invoke-static {v1, v0}, Lcom/ulog/uploader/utils/ULogPreferences;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "ulog_push_level_tsp"

    .line 114
    invoke-static {v4, v2, v3}, Lcom/ulog/uploader/utils/ULogPreferences;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v6, "ulog_push_level_age"

    .line 117
    invoke-static {v6, v2, v3}, Lcom/ulog/uploader/utils/ULogPreferences;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v6

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    sub-long/2addr v8, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v10, v8, v2

    if-lez v10, :cond_0

    cmp-long v2, v8, v6

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 121
    :goto_0
    invoke-static {}, Lcom/uc/sdk/ulog/ULogSetup;->isInited()Z

    move-result v3

    if-nez v3, :cond_2

    if-eq v1, v0, :cond_1

    if-eqz v2, :cond_1

    .line 123
    invoke-static {v1}, Lcom/uc/sdk/ulog/ULogSetup;->setLogLevel(I)V

    .line 125
    :cond_1
    invoke-static {p0}, Lcom/uc/sdk/ulog/ULogSetup;->init(Lcom/uc/sdk/ulog/ULogSetup;)Lcom/uc/sdk/ulog/ULogSetup;

    goto :goto_1

    :cond_2
    if-eq v1, v0, :cond_3

    if-eqz v2, :cond_3

    .line 127
    new-array p0, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v5

    const-string v0, "ULog.UploadSetup"

    const-string/jumbo v2, "ulog sdk is already init, just set the remote log level to %d"

    invoke-static {v0, v2, p0}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-static {}, Lcom/uc/sdk/ulog/ULogSetup;->with()Lcom/uc/sdk/ulog/ULogSetup;

    invoke-static {v1}, Lcom/uc/sdk/ulog/ULogSetup;->setLogLevel(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static isInit()Z
    .locals 1

    .line 63
    sget-object v0, Lcom/ulog/uploader/ULogUploadSetup;->sInstance:Lcom/ulog/uploader/ULogUploadSetup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static with()Lcom/ulog/uploader/ULogUploadSetup;
    .locals 2

    .line 56
    sget-object v0, Lcom/ulog/uploader/ULogUploadSetup;->sInstance:Lcom/ulog/uploader/ULogUploadSetup;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/ulog/uploader/ULogUploadSetup;->sInstance:Lcom/ulog/uploader/ULogUploadSetup;

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "you must init ULogUpload sdk first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onReceivedPush(Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup;->uLogUploadClient:Lcom/ulog/uploader/client/UploadClient;

    invoke-virtual {v0, p1}, Lcom/ulog/uploader/client/UploadClient;->onReceivedPush(Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultUploadCallback(Lcom/ulog/uploader/callback/ULogUploadCallback;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup;->uLogUploadClient:Lcom/ulog/uploader/client/UploadClient;

    invoke-virtual {v0, p1}, Lcom/ulog/uploader/client/UploadClient;->setDefaultUploadCallback(Lcom/ulog/uploader/callback/ULogUploadCallback;)V

    return-void
.end method

.method public uploadAllULog(Ljava/util/Date;)V
    .locals 1

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/ulog/uploader/ULogUploadSetup;->uploadAllULog(Ljava/util/Date;Ljava/util/Map;)V

    return-void
.end method

.method public uploadAllULog(Ljava/util/Date;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup;->uLogUploadClient:Lcom/ulog/uploader/client/UploadClient;

    invoke-virtual {v0, p1, p2}, Lcom/ulog/uploader/client/UploadClient;->uploadAllULog(Ljava/util/Date;Ljava/util/Map;)V

    return-void
.end method

.method public uploadULog(Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    invoke-virtual {p0, p1, p2, v0}, Lcom/ulog/uploader/ULogUploadSetup;->uploadULog(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)V

    return-void
.end method

.method public uploadULog(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;)V
    .locals 1

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ulog/uploader/ULogUploadSetup;->uploadULog(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;Ljava/util/Map;)V

    return-void
.end method

.method public uploadULog(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;II)V
    .locals 7

    .line 98
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 99
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup;->uLogUploadClient:Lcom/ulog/uploader/client/UploadClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ulog/uploader/client/UploadClient;->uploadULog(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;IILjava/util/Map;)V

    return-void
.end method

.method public uploadULog(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;IILjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/ulog/uploader/callback/ULogUploadCallback;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup;->uLogUploadClient:Lcom/ulog/uploader/client/UploadClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ulog/uploader/client/UploadClient;->uploadULog(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;IILjava/util/Map;)V

    return-void
.end method

.method public uploadULog(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/ulog/uploader/callback/ULogUploadCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup;->uLogUploadClient:Lcom/ulog/uploader/client/UploadClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ulog/uploader/client/UploadClient;->uploadULog(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;Ljava/util/Map;)V

    return-void
.end method

.method public uploadULog(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup;->uLogUploadClient:Lcom/ulog/uploader/client/UploadClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ulog/uploader/client/UploadClient;->uploadULog(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)V

    return-void
.end method
