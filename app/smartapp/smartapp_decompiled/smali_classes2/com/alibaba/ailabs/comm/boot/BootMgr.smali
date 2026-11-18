.class public Lcom/alibaba/ailabs/comm/boot/BootMgr;
.super Ljava/lang/Object;
.source "BootMgr.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BootMgr"

.field private static sInstance:Lcom/alibaba/ailabs/comm/boot/BootMgr;


# instance fields
.field private mBootInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/boot/BootInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCpuTime:J

.field private mHasSaved:Z

.field private mInited:Z

.field private mLocalTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mInited:Z

    .line 162
    new-instance v0, Lcom/alibaba/ailabs/comm/boot/BootMgr$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/comm/boot/BootMgr$1;-><init>(Lcom/alibaba/ailabs/comm/boot/BootMgr;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mCheckRunnable:Ljava/lang/Runnable;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/comm/boot/BootMgr;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alibaba/ailabs/comm/boot/BootMgr;->init()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/comm/boot/BootMgr;J)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/comm/boot/BootMgr;->process(J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/boot/BootMgr;
    .locals 2

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->sInstance:Lcom/alibaba/ailabs/comm/boot/BootMgr;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/alibaba/ailabs/comm/boot/BootMgr;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/comm/boot/BootMgr;->sInstance:Lcom/alibaba/ailabs/comm/boot/BootMgr;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/alibaba/ailabs/comm/boot/BootMgr;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/comm/boot/BootMgr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/comm/boot/BootMgr;->sInstance:Lcom/alibaba/ailabs/comm/boot/BootMgr;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 39
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->sInstance:Lcom/alibaba/ailabs/comm/boot/BootMgr;

    return-object p0
.end method

.method private hasProcess()Z
    .locals 6

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long/2addr v4, v2

    .line 113
    iget-wide v2, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mCpuTime:J

    sub-long/2addr v4, v2

    iget-wide v2, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mLocalTime:J

    add-long/2addr v4, v2

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private init()V
    .locals 3

    .line 143
    iget-boolean v0, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mInited:Z

    if-nez v0, :cond_2

    .line 144
    invoke-direct {p0}, Lcom/alibaba/ailabs/comm/boot/BootMgr;->readCacheInfo()V

    .line 145
    invoke-direct {p0}, Lcom/alibaba/ailabs/comm/boot/BootMgr;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "boot.cfg"

    .line 148
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/comm/utils/Utils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v1}, Lcom/alibaba/ailabs/comm/utils/Utils;->existFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-static {v1}, Lcom/alibaba/ailabs/comm/utils/Utils;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/comm/utils/Utils;->getFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/comm/boot/BootMgr;->parser(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mBootInfo:Ljava/util/List;

    :cond_1
    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mInited:Z

    :cond_2
    return-void
.end method

.method private parser(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/boot/BootInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 181
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "boot_service"

    .line 182
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 187
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    move-object v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    .line 190
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_3

    .line 194
    :cond_1
    new-instance v6, Lcom/alibaba/ailabs/comm/boot/BootInfo;

    invoke-direct {v6}, Lcom/alibaba/ailabs/comm/boot/BootInfo;-><init>()V

    const-string v7, "delay"

    .line 195
    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/alibaba/ailabs/comm/boot/BootInfo;->delay:I

    const-string v7, "action"

    .line 196
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/ailabs/comm/boot/BootInfo;->action:Ljava/lang/String;

    .line 197
    iget-object v7, v6, Lcom/alibaba/ailabs/comm/boot/BootInfo;->action:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "parser boot error = "

    const-string v9, "BootMgr"

    if-nez v7, :cond_6

    :try_start_1
    iget v7, v6, Lcom/alibaba/ailabs/comm/boot/BootInfo;->delay:I

    if-gtz v7, :cond_2

    goto :goto_2

    :cond_2
    const-string v7, "pkg"

    .line 201
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/ailabs/comm/boot/BootInfo;->packageName:Ljava/lang/String;

    const-string v7, "data"

    .line 202
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/ailabs/comm/boot/BootInfo;->data:Lorg/json/JSONObject;

    const-string v7, "launchMode"

    .line 203
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "broadcast"

    .line 205
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 206
    iput v2, v6, Lcom/alibaba/ailabs/comm/boot/BootInfo;->type:I

    goto :goto_1

    :cond_3
    const-string v7, "service"

    .line 207
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    .line 208
    iput v5, v6, Lcom/alibaba/ailabs/comm/boot/BootInfo;->type:I

    :goto_1
    if-nez v4, :cond_4

    .line 214
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parser boot info = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/alibaba/ailabs/comm/boot/BootInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 210
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/alibaba/ailabs/comm/boot/BootInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 198
    :cond_6
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/alibaba/ailabs/comm/boot/BootInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v4

    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    return-object v0
.end method

.method private process(J)V
    .locals 13

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mBootInfo:Ljava/util/List;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    const-string v4, "BootMgr"

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_3

    .line 55
    div-long/2addr p1, v2

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    move-wide v7, v5

    :goto_0
    if-ltz v0, :cond_4

    .line 62
    iget-object v9, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mBootInfo:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/ailabs/comm/boot/BootInfo;

    .line 63
    iget v10, v9, Lcom/alibaba/ailabs/comm/boot/BootInfo;->delay:I

    int-to-long v10, v10

    sub-long/2addr v10, p1

    cmp-long v12, v10, v5

    if-gtz v12, :cond_0

    .line 66
    iget-object v10, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/alibaba/ailabs/comm/boot/BootInfo;->execute(Landroid/content/Context;)Z

    move-result v10

    .line 67
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ret= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ",info"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v9}, Lcom/alibaba/ailabs/comm/boot/BootInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 67
    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    cmp-long v9, v7, v5

    if-lez v9, :cond_1

    cmp-long v9, v10, v7

    if-gez v9, :cond_2

    :cond_1
    move-wide v7, v10

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move-wide v7, v5

    :cond_4
    cmp-long p1, v7, v5

    if-gtz p1, :cond_8

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mBootInfo:Ljava/util/List;

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    div-long/2addr p1, v2

    iput-wide p1, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mCpuTime:J

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    div-long/2addr p1, v2

    iput-wide p1, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mLocalTime:J

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "has boot process, cpuTime = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mCpuTime:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",localTime="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mLocalTime:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-wide p1, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mLocalTime:J

    const-string v0, ",localTime = "

    const-wide/32 v2, 0x5e61b91f

    cmp-long v9, p1, v2

    if-lez v9, :cond_5

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " boot process finish, cpuTime = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mCpuTime:J

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mLocalTime:J

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-wide/16 p1, 0x7530

    move-wide v7, p1

    .line 91
    :goto_2
    iget-boolean p1, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mHasSaved:Z

    if-eqz p1, :cond_6

    iget-wide p1, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mLocalTime:J

    cmp-long v9, p1, v2

    if-lez v9, :cond_7

    .line 92
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/ailabs/comm/boot/BootMgr;->saveCacheInfo()V

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " boot process save, cpuTime = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mCpuTime:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mLocalTime:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_7
    iput-boolean v1, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mHasSaved:Z

    :cond_8
    cmp-long p1, v7, v5

    if-lez p1, :cond_9

    .line 101
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 103
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " boot process, timeout = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readCacheInfo()V
    .locals 6

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mContext:Landroid/content/Context;

    const-string v1, "boot"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cpuTime"

    const-wide/16 v2, 0x0

    .line 121
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mCpuTime:J

    const-string v1, "localTime"

    .line 122
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mLocalTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private saveCacheInfo()V
    .locals 4

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mContext:Landroid/content/Context;

    const-string v1, "boot"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cpuTime"

    .line 134
    iget-wide v2, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mCpuTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "localTime"

    .line 135
    iget-wide v2, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr;->mLocalTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
