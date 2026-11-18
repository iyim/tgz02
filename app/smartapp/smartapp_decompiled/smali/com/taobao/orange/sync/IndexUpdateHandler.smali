.class public Lcom/taobao/orange/sync/IndexUpdateHandler;
.super Ljava/lang/Object;
.source "IndexUpdateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;
    }
.end annotation


# static fields
.field private static final CHECK_INDEX_UPD_INTERVAL:J = 0x4e20L

.field static final TAG:Ljava/lang/String; = "IndexUpdateHandler"

.field private static disableTaobaoClientIndexCheckUpd:Z = true

.field private static volatile lastIndexUpdTime:J

.field static final mCurIndexUpdInfo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/taobao/orange/sync/IndexUpdateHandler;->mCurIndexUpdInfo:Ljava/util/Set;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkIndexUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 38
    sget-object v0, Lcom/taobao/orange/GlobalOrange;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/orange/util/AndroidUtil;->isTaobaoPackage(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/taobao/orange/sync/IndexUpdateHandler;->disableTaobaoClientIndexCheckUpd:Z

    if-eqz v0, :cond_0

    .line 39
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "IndexUpdateHandler"

    const-string v0, "checkIndexUpdate skip as in com.taobao.taobao package"

    invoke-static {p1, v0, p0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 42
    :cond_0
    const-class v0, Lcom/taobao/orange/sync/IndexUpdateHandler;

    monitor-enter v0

    .line 43
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 44
    sget-wide v4, Lcom/taobao/orange/sync/IndexUpdateHandler;->lastIndexUpdTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x4e20

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    const-string p0, "IndexUpdateHandler"

    const-string p1, "checkIndexUpdate too frequently, interval should more than 20s"

    .line 45
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 48
    :cond_1
    sput-wide v2, Lcom/taobao/orange/sync/IndexUpdateHandler;->lastIndexUpdTime:J

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x4

    .line 50
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "appIndexVersion"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "versionIndexVersion"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const-string v1, "IndexUpdateHandler"

    const-string v2, "checkIndexUpdate"

    invoke-static {v1, v2, v0}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    new-instance v0, Lcom/taobao/orange/sync/IndexUpdateHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/taobao/orange/sync/IndexUpdateHandler$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/taobao/orange/OThreadFactory;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    .line 49
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static parseIndexUpdInfo(Ljava/lang/String;Z)Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;
    .locals 5

    .line 113
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    .line 118
    const-class p1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;

    goto :goto_2

    :cond_1
    const-string p1, "&"

    .line 120
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 122
    new-instance v1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;

    invoke-direct {v1}, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;-><init>()V

    .line 123
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_6

    aget-object v2, p0, v0

    if-eqz v2, :cond_5

    const-string v3, "="

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cdn"

    .line 126
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->cdn:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v4, "md5"

    .line 128
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 129
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->md5:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "resourceId"

    .line 130
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 131
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->resourceId:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v4, "protocol"

    .line 132
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 133
    iput-object v3, v1, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->protocol:Ljava/lang/String;

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-object v1
.end method

.method public static updateIndex(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 83
    :try_start_0
    invoke-static {p0, p1}, Lcom/taobao/orange/sync/IndexUpdateHandler;->parseIndexUpdInfo(Ljava/lang/String;Z)Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 84
    invoke-virtual {p0}, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->checkVaild()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 85
    sget-object p1, Lcom/taobao/orange/sync/IndexUpdateHandler;->mCurIndexUpdInfo:Ljava/util/Set;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :try_start_1
    sget-object v1, Lcom/taobao/orange/sync/IndexUpdateHandler;->mCurIndexUpdInfo:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    invoke-static {v0}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "IndexUpdateHandler"

    const-string/jumbo v1, "updateIndex is ongoing"

    .line 88
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/taobao/orange/util/OLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_0
    monitor-exit p1

    return-void

    .line 92
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p1, 0x2

    .line 93
    :try_start_2
    invoke-static {p1}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "IndexUpdateHandler"

    const-string/jumbo v1, "updateIndex"

    const/4 v2, 0x1

    .line 94
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-static {p1, v1, v2}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const-string p1, "https"

    .line 96
    iget-object v1, p0, Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;->protocol:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "https"

    goto :goto_0

    :cond_3
    const-string p1, "http"

    :goto_0
    sput-object p1, Lcom/taobao/orange/GlobalOrange;->schema:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/taobao/orange/ConfigCenter;->getInstance()Lcom/taobao/orange/ConfigCenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/taobao/orange/ConfigCenter;->updateIndex(Lcom/taobao/orange/sync/IndexUpdateHandler$IndexUpdateInfo;)V

    .line 98
    sget-object p1, Lcom/taobao/orange/sync/IndexUpdateHandler;->mCurIndexUpdInfo:Ljava/util/Set;

    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    :try_start_3
    sget-object v1, Lcom/taobao/orange/sync/IndexUpdateHandler;->mCurIndexUpdInfo:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 100
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_1
    move-exception p0

    .line 92
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    .line 103
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "IndexUpdateHandler"

    const-string/jumbo v1, "updateIndex"

    invoke-static {v0, v1, p0, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method
