.class public Lcom/alibaba/ailabs/geniesdk/database/MediaTable;
.super Lcom/alibaba/ailabs/geniesdk/database/AbstractSqlService;
.source "MediaTable.java"


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field public static final PACKAGE:Ljava/lang/String; = "pkg"

.field public static final PACKAGE_ALIAS:Ljava/lang/String; = "pkgAlias"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TABLE_MEDIA_NAME:Ljava/lang/String; = "media"

.field public static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/geniesdk/database/AbstractManager;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/database/AbstractSqlService;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/geniesdk/database/AbstractManager;)V

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/database/MediaTable;->mContext:Landroid/content/Context;

    return-void
.end method

.method private notifyMediaStatusChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "com.alibaba.ailabs.genie.webapps"

    .line 120
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com.alibaba.ailabs.genie.assistant.provider"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GenieApi"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mediaStatus"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "type"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&"

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "status"

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "pkg"

    .line 142
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "info"

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 153
    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/database/MediaTable;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string p2, "MediaTable"

    .line 154
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "notifyChange:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getSqlCommand(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (_id INTEGER PRIMARY KEY AUTOINCREMENT, "

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "pkg TEXT,"

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "type INTEGER,"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "status INTEGER,"

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "data TEXT)"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public insert(Landroid/content/ContentValues;)I
    .locals 7

    const-string v0, "pkg"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pkgAlias"

    .line 68
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    .line 69
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    .line 70
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "status"

    .line 71
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 72
    new-instance v4, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;

    invoke-direct {v4}, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;-><init>()V

    .line 73
    iput-object v0, v4, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;->pkg:Ljava/lang/String;

    .line 74
    iput-object v1, v4, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;->pkgAlias:Ljava/lang/String;

    .line 75
    iput p1, v4, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;->status:I

    .line 76
    iput v3, v4, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;->type:I

    .line 77
    iget v1, v4, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;->type:I

    const/4 v5, 0x1

    if-nez v1, :cond_0

    const-string v1, "inside_audio_player"

    .line 78
    iput-object v1, v4, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;->source:Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_0
    iget v1, v4, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;->type:I

    if-ne v1, v5, :cond_1

    const-string v1, "inside_video_player"

    .line 80
    iput-object v1, v4, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;->source:Ljava/lang/String;

    .line 82
    :cond_1
    :goto_0
    invoke-virtual {v4, v2}, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;->paserJson(Ljava/lang/String;)V

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "media = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "MediaTable"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0, v3, p1, v0, v2}, Lcom/alibaba/ailabs/geniesdk/database/MediaTable;->notifyMediaStatusChanged(IILjava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object p1

    const/16 v0, 0xc8

    invoke-virtual {p1, v0, v4, v5}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    const/4 p1, 0x0

    return p1
.end method

.method public insert(Ljava/lang/String;IILjava/lang/String;)I
    .locals 5

    .line 94
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/geniesdk/database/MediaTable;->remove(Ljava/lang/String;)Z

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/database/MediaTable;->mDb:Lcom/alibaba/ailabs/geniesdk/database/AbstractManager;

    monitor-enter v0

    const/4 v1, -0x1

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/database/MediaTable;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 102
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "pkg"

    .line 104
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "type"

    .line 105
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "status"

    .line 106
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "data"

    .line 107
    invoke-virtual {v3, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/database/MediaTable;->getTableName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v2, p1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p2, p1

    move v1, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 112
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    :cond_0
    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected onUpgrade(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 8

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/database/MediaTable;->mDb:Lcom/alibaba/ailabs/geniesdk/database/AbstractManager;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/database/MediaTable;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/database/MediaTable;->getTableName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pkg=?"

    new-array v7, v2, [Ljava/lang/String;

    aput-object p1, v7, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 59
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    :cond_0
    :goto_0
    monitor-exit v0

    if-lez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
