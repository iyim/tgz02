.class public Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;
.super Ljava/lang/Object;
.source "TaskRecordPool.java"


# static fields
.field private static final POOL:Ljava/lang/String; = "Pool"

.field private static final SP_POOL:Ljava/lang/String; = "TaskRecordPool"

.field private static final aWeek:J = 0x240c8400L

.field private static volatile instance:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;


# instance fields
.field private pool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private sp:Landroid/content/SharedPreferences;

.field private taskRecord:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TaskRecordPool"

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->sp:Landroid/content/SharedPreferences;

    .line 39
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->sp:Landroid/content/SharedPreferences;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Pool"

    const-string v1, ""

    .line 43
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->initTaskRecord(Ljava/lang/String;)V

    return-void
.end method

.method private formatTimeSafely(J)I
    .locals 2

    .line 77
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    sget-object v0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->instance:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;

    if-eqz v0, :cond_0

    .line 48
    sget-object p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->instance:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;

    return-object p0

    .line 51
    :cond_0
    const-class v0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->instance:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;

    if-nez v1, :cond_1

    .line 53
    new-instance v1, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->instance:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;

    .line 55
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    sget-object p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->instance:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;

    return-object p0

    :catchall_0
    move-exception p0

    .line 55
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private initTaskPool(J)V
    .locals 12

    .line 173
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->pool:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 176
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->pool:Ljava/util/Map;

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->taskRecord:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;->getPkgList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 182
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;

    .line 183
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->pool:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->getPkg()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_3

    .line 185
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 188
    :cond_3
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->setOldestDay(J)V

    .line 189
    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->getRecord()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 190
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 194
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;

    .line 196
    invoke-virtual {v6}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;->getDayTime()J

    move-result-wide v7

    sub-long v7, p1, v7

    const-wide/32 v9, 0x240c8400

    cmp-long v11, v7, v9

    if-lez v11, :cond_6

    goto :goto_2

    .line 199
    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->getOldestDay()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;->getDayTime()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_7

    .line 200
    invoke-virtual {v6}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;->getDayTime()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->setOldestDay(J)V

    .line 201
    invoke-virtual {v1, v6}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->setOldestRecord(Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;)V

    .line 203
    :cond_7
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {v6}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;->getHours()Ljava/util/Set;

    move-result-object v6

    .line 205
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 206
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 210
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x7

    if-ge v5, v6, :cond_9

    const/4 v5, 0x0

    .line 211
    invoke-virtual {v1, v5}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->setOldestRecord(Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;)V

    .line 213
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 214
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    iget-object v3, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->pool:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->getPkg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_a
    :goto_4
    return-void
.end method

.method private initTaskRecord(Ljava/lang/String;)V
    .locals 2

    .line 151
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->justNewTask()V

    return-void

    .line 157
    :cond_0
    :try_start_0
    const-class v0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->taskRecord:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->initTaskPool(J)V

    return-void

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private justNewTask()V
    .locals 2

    .line 167
    new-instance v0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;

    invoke-direct {v0}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->taskRecord:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;

    .line 168
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->taskRecord:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;->setPkgList(Ljava/util/List;)V

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->pool:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method getPool()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->pool:Ljava/util/Map;

    return-object v0
.end method

.method getTaskRecord()Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->taskRecord:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;

    return-object v0
.end method

.method public isTouch(Ljava/lang/String;J)Z
    .locals 4

    .line 67
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->pool:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->formatTimeSafely(J)I

    move-result p2

    .line 72
    iget-object p3, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->pool:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->pool:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public synthetic lambda$update$1$TaskRecordPool()V
    .locals 3

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Pool"

    iget-object v2, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->taskRecord:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public update(Ljava/lang/String;J)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->taskRecord:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;->getPkgList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->taskRecord:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;->getPkgList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;

    .line 97
    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->getPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    :cond_2
    if-nez v0, :cond_3

    .line 104
    new-instance v0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;

    invoke-direct {v0}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;-><init>()V

    .line 105
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->setPkg(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p2, p3}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->setOldestDay(J)V

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->setRecord(Ljava/util/List;)V

    .line 108
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->taskRecord:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;->getPkgList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->getOldestRecord()Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;

    move-result-object v1

    .line 112
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->formatTimeSafely(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v1, :cond_4

    .line 114
    new-instance v1, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;

    invoke-direct {v1}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;-><init>()V

    .line 115
    invoke-virtual {v1, p2, p3}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;->setDayTime(J)V

    .line 116
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 117
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;->setHours(Ljava/util/Set;)V

    .line 120
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->setOldestRecord(Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;)V

    .line 121
    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->getRecord()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {v1, p2, p3}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;->setDayTime(J)V

    .line 124
    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;->getHours()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->getOldestDay()J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/32 v3, 0x240c8400

    cmp-long v5, v0, v3

    if-lez v5, :cond_5

    .line 128
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->initTaskPool(J)V

    return-void

    .line 133
    :cond_5
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->pool:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-nez p2, :cond_6

    .line 135
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 136
    iget-object p3, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->pool:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_6
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance p1, Lcom/alibaba/ailabs/comm/task/recordpool/-$$Lambda$TaskRecordPool$WaTNyLC75Dlvkzl44SbJuEjezhY;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/comm/task/recordpool/-$$Lambda$TaskRecordPool$WaTNyLC75Dlvkzl44SbJuEjezhY;-><init>(Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_7
    :goto_1
    return-void
.end method
