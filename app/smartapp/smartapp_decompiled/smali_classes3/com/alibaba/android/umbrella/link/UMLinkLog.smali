.class public final Lcom/alibaba/android/umbrella/link/UMLinkLog;
.super Ljava/lang/Object;
.source "UMLinkLog.java"


# static fields
.field private static volatile linkLogManager:Lcom/alibaba/android/umbrella/link/LinkLogManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 299
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->getLinkLogSwitcher()Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    move-result-object v0

    move-object v2, p0

    move-object v5, p3

    invoke-virtual {v0, p3, p0}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isSkipAllPoint(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->triggerCommitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 290
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->getLinkLogSwitcher()Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isSkipAllPoint(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->triggerCommitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static fillTagToDimMap(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p0    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMDimKey;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMTagKey;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 140
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 143
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    invoke-virtual {v1}, Lcom/alibaba/android/umbrella/link/export/UMTagKey;->getDimKey()Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;
    .locals 2

    .line 33
    sget-object v0, Lcom/alibaba/android/umbrella/link/UMLinkLog;->linkLogManager:Lcom/alibaba/android/umbrella/link/LinkLogManager;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/alibaba/android/umbrella/link/UMLinkLog;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/alibaba/android/umbrella/link/UMLinkLog;->linkLogManager:Lcom/alibaba/android/umbrella/link/LinkLogManager;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/alibaba/android/umbrella/link/LinkLogManager;

    invoke-direct {v1}, Lcom/alibaba/android/umbrella/link/LinkLogManager;-><init>()V

    sput-object v1, Lcom/alibaba/android/umbrella/link/UMLinkLog;->linkLogManager:Lcom/alibaba/android/umbrella/link/LinkLogManager;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/android/umbrella/link/UMLinkLog;->linkLogManager:Lcom/alibaba/android/umbrella/link/LinkLogManager;

    return-object v0
.end method

.method public static logBegin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMDimKey;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;"
        }
    .end annotation

    .line 105
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->getLinkLogSwitcher()Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isSkipAllPoint(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 109
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 111
    invoke-static {p5}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->fromUserData(Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    .line 109
    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->createAndLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/LinkLogExtData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    move-result-object p0

    return-object p0
.end method

.method public static logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMDimKey;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;"
        }
    .end annotation

    .line 123
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->getLinkLogSwitcher()Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    move-result-object v0

    move-object v2, p0

    move-object v4, p2

    invoke-virtual {v0, p0, p2}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isSkipAllPoint(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v1

    const/4 v6, 0x2

    .line 129
    invoke-static/range {p7 .. p7}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->fromUserData(Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    move-result-object v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 127
    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->createAndLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/LinkLogExtData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    move-result-object v0

    return-object v0
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMDimKey;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;"
        }
    .end annotation

    .line 89
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->getLinkLogSwitcher()Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    move-result-object v0

    move-object v2, p0

    move-object v4, p2

    invoke-virtual {v0, p0, p2}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isSkipAllPoint(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v1

    const/4 v6, 0x0

    .line 95
    invoke-static/range {p7 .. p7}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->fromUserData(Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    move-result-object v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 93
    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->createAndLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/LinkLogExtData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    move-result-object v0

    return-object v0
.end method

.method public static logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMDimKey;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->getLinkLogSwitcher()Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isSkipAllPoint(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 77
    invoke-static {p5}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->fromUserData(Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    .line 75
    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->createAndLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/LinkLogExtData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    move-result-object p0

    return-object p0
.end method

.method public static logMtopReq(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;
    .locals 12
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMTagKey;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;"
        }
    .end annotation

    .line 225
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->getLinkLogSwitcher()Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    move-result-object v0

    const-string v1, "Mtop"

    move-object v3, p0

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isSkipAllPoint(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 230
    sget-object v0, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_1:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    move-object v1, p3

    invoke-interface {v10, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_2:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    move-object/from16 v1, p4

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p6

    .line 232
    invoke-static {v10, v0}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->fillTagToDimMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 234
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 237
    invoke-static/range {p7 .. p7}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->fromUserData(Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    move-result-object v0

    const-string v1, "requestParams"

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->putKV(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    move-result-object v11

    const-string v5, "Mtop"

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    .line 234
    invoke-virtual/range {v2 .. v11}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->createAndLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/LinkLogExtData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    move-result-object v0

    return-object v0
.end method

.method public static logMtopResponse(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;
    .locals 12
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lmtopsdk/mtop/domain/MtopResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMTagKey;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;"
        }
    .end annotation

    .line 250
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->getLinkLogSwitcher()Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    move-result-object v0

    const-string v1, "Mtop"

    move-object v3, p0

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isSkipAllPoint(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p3, :cond_1

    return-object v1

    .line 261
    :cond_1
    invoke-static {p3}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->getTraceIds(Lmtopsdk/mtop/domain/MtopResponse;)Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 264
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_1:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_2:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getV()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_3:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-static {v0}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->ensureText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_4:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_5:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p5

    .line 269
    invoke-static {v10, v0}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->fillTagToDimMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 273
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    .line 275
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v1

    move-object v8, v0

    move-object v9, v1

    goto :goto_0

    :cond_2
    move-object v8, v1

    move-object v9, v8

    .line 279
    :goto_0
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v2

    const/4 v7, 0x2

    .line 282
    invoke-static/range {p6 .. p6}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->fromUserData(Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    move-result-object v0

    .line 283
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "responseString"

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->putKV(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    move-result-object v0

    .line 284
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    const-string v4, "responseHeaders"

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->putKV(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    move-result-object v0

    const-string v1, "requestParams"

    move-object/from16 v4, p4

    .line 285
    invoke-virtual {v0, v1, v4}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->putKV(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    move-result-object v11

    const-string v5, "Mtop"

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    .line 279
    invoke-virtual/range {v2 .. v11}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->createAndLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/LinkLogExtData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    move-result-object v0

    return-object v0
.end method

.method public static logPageLifecycle(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;
    .locals 12
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMTagKey;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;"
        }
    .end annotation

    .line 158
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->getLinkLogSwitcher()Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    move-result-object v0

    const-string v1, "Page"

    move-object v3, p0

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isSkipAllPoint(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 163
    sget-object v0, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_1:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    move-object v1, p3

    invoke-interface {v10, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_2:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    move-object/from16 v1, p4

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p7

    .line 165
    invoke-static {v10, v0}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->fillTagToDimMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 167
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v2

    const/4 v7, 0x0

    .line 169
    invoke-static/range {p8 .. p8}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->fromUserData(Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    move-result-object v11

    const-string v5, "Page"

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 167
    invoke-virtual/range {v2 .. v11}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->createAndLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/LinkLogExtData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    move-result-object v0

    return-object v0
.end method

.method public static logSimpleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/UMRefContext;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->getLinkLogSwitcher()Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isSkipAllPoint(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 61
    invoke-static {p3}, Lcom/alibaba/android/umbrella/link/export/UMUserData;->fromMsg(Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/export/UMUserData;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->fromUserData(Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 59
    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->createAndLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/LinkLogExtData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    move-result-object p0

    return-object p0
.end method

.method public static logUIAction(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMTagKey;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 183
    invoke-static/range {v0 .. v9}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->logUIAction2(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    move-result-object v0

    return-object v0
.end method

.method public static logUIAction2(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/UMRefContext;
    .locals 12
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMTagKey;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;",
            ")",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;"
        }
    .end annotation

    .line 197
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->getLinkLogSwitcher()Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    move-result-object v0

    const-string v1, "UIEvent"

    move-object v3, p0

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isSkipAllPoint(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 202
    sget-object v0, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_1:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    move-object v1, p3

    invoke-interface {v10, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_2:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    move-object/from16 v1, p4

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_3:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    move-object/from16 v1, p5

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->DIM_4:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    move-object/from16 v1, p6

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p8

    .line 206
    invoke-static {v10, v0}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->fillTagToDimMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 208
    invoke-static {}, Lcom/alibaba/android/umbrella/link/UMLinkLog;->getLinkLogManager()Lcom/alibaba/android/umbrella/link/LinkLogManager;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 211
    invoke-static/range {p9 .. p9}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->fromUserData(Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    move-result-object v0

    const-string v1, "args"

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->putKV(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    move-result-object v11

    const-string v5, "UIEvent"

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    .line 208
    invoke-virtual/range {v2 .. v11}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->createAndLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/LinkLogExtData;)Lcom/alibaba/android/umbrella/link/UMRefContext;

    move-result-object v0

    return-object v0
.end method
