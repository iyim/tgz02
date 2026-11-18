.class public Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;
.super Ljava/lang/Object;
.source "DXTemplateDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/template/DXTemplateDBManager$DXTemplateDBManagerHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_BIZ_TYPE:Ljava/lang/String; = "DinamicX_db"


# instance fields
.field private volatile dXDataBaseHelper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/taobao/android/dinamicx/template/DXTemplateDBManager$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;
    .locals 1

    .line 36
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager$DXTemplateDBManagerHolder;->access$000()Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;

    move-result-object v0

    return-object v0
.end method

.method private reinitialization()Z
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->dXDataBaseHelper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0, v0}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->dXDataBaseHelper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;

    if-nez v0, :cond_1

    const v0, 0xea70

    const-string v1, "DB_Open"

    const-string v2, "dXDataBaseHelper == null"

    .line 60
    invoke-direct {p0, v1, v0, v2}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->trackError(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private trackError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 186
    new-instance v0, Lcom/taobao/android/dinamicx/DXError;

    const-string v1, "DinamicX_db"

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const-string v2, "DB"

    invoke-direct {v1, v2, p1, p2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    iput-object p3, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 189
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    .line 190
    iget-object p1, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    return-void
.end method

.method private trackerPerform(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;J)V
    .locals 9

    long-to-double v6, p4

    const/4 v0, 0x2

    const-string v2, "DB"

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v1, p2

    move-object v3, p1

    move-object v4, p3

    .line 181
    invoke-static/range {v0 .. v8}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerPerform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;DZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public closeDatabase()V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->reinitialization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->dXDataBaseHelper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;->closeDatabase()V

    :cond_0
    return-void
.end method

.method public deleteAll()V
    .locals 9

    .line 149
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 150
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->reinitialization()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->dXDataBaseHelper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;->deleteAll()V

    :cond_0
    const/4 v6, 0x0

    .line 153
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v7, v2, v0

    const-string v4, "DB_Delete_All"

    const-string v5, "DinamicX_db"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->trackerPerform(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;J)V

    return-void
.end method

.method public deleteTemplateItem(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V
    .locals 10

    .line 138
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 139
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->reinitialization()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->dXDataBaseHelper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;

    invoke-virtual {v2, p1, p2}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;->delete(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V

    .line 142
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v8, v2, v0

    const-string v5, "DB_Delete"

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->trackerPerform(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;J)V

    return-void
.end method

.method public dropTable()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->reinitialization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->dXDataBaseHelper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;->dropTable()V

    :cond_0
    return-void
.end method

.method public getDbSize()I
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->reinitialization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->dXDataBaseHelper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;->getDbSize()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 43
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->dXDataBaseHelper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;

    invoke-direct {v0, p1, p2}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->dXDataBaseHelper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 44
    :cond_2
    :goto_0
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public insertTemplateItem(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V
    .locals 10

    .line 94
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 95
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->reinitialization()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->dXDataBaseHelper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;

    invoke-virtual {v2, p1, p2}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;->store(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V

    .line 98
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v8, v2, v0

    const-string v5, "DB_Store"

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->trackerPerform(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;J)V

    return-void
.end method

.method public insertTemplateItems(Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 109
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->reinitialization()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->dXDataBaseHelper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;

    invoke-virtual {v2, p1, p2}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;->store(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    const/4 v6, 0x0

    .line 112
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v7, v2, v0

    const-string v4, "DB_Store"

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->trackerPerform(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;J)V

    return-void
.end method

.method public queryTemplates(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Ljava/util/LinkedList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 165
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->reinitialization()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->dXDataBaseHelper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;->query(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Ljava/util/LinkedList;

    move-result-object p1

    return-object p1

    .line 169
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v8, v2, v0

    const-string v5, "DB_Query"

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->trackerPerform(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->dXDataBaseHelper:Lcom/taobao/android/dinamicx/template/db/DXDataBaseHelper;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
