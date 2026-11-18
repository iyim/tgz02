.class public Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;
.super Ljava/lang/Object;
.source "AVFSSQLiteCacheItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem$ByteArrayOutputStream;
    }
.end annotation


# static fields
.field private static final AVFS_SQLITE_CACHE_ITEM__TABLE:Ljava/lang/String; = "AVFS_KV_TABLE"

.field private static final CREATE_AVFS_SQLITE_CACHE_ITEM__TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS AVFS_KV_TABLE(key TEXT, key2 TEXT, value BLOB, size INTEGER, time INTEGER, PRIMARY KEY(key, key2));"

.field private static final DELETE_ALL_STATEMENT:Ljava/lang/String; = "DELETE FROM AVFS_KV_TABLE"

.field private static final DELETE_STATEMENT:Ljava/lang/String; = "DELETE FROM AVFS_KV_TABLE WHERE key = ? AND key2 = ?"

.field private static final INSERT_STATEMENT:Ljava/lang/String; = "INSERT INTO AVFS_KV_TABLE VALUES(?,?,?,?,?)"

.field private static final KEY_ID:Ljava/lang/String; = "_id"

.field private static final KEY_KEY:Ljava/lang/String; = "key"

.field private static final KEY_KEY2:Ljava/lang/String; = "key2"

.field private static final KEY_SIZE:Ljava/lang/String; = "size"

.field private static final KEY_TIME:Ljava/lang/String; = "time"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final QUERY_ALL_EXTEND_KEY_STATEMENT:Ljava/lang/String; = "SELECT key2 FROM AVFS_KV_TABLE WHERE key = ?"

.field private static final QUERY_ALL_STATEMENT:Ljava/lang/String; = "SELECT * FROM AVFS_KV_TABLE"

.field private static final QUERY_SINGLE_STATEMENT:Ljava/lang/String; = "SELECT  * FROM AVFS_KV_TABLE WHERE key = ? AND key2 = ? LIMIT 1"

.field private static final REPLACE_STATEMENT:Ljava/lang/String; = "REPLACE INTO AVFS_KV_TABLE VALUES(?,?,?,?,?)"

.field private static final TAG:Ljava/lang/String; = "AVFSSQLiteCacheItem"

.field private static final UPDATE_TIME_STATEMENT:Ljava/lang/String; = "UPDATE AVFS_KV_TABLE SET time = ? WHERE key = ? AND key2 = ?"


# instance fields
.field public key:Ljava/lang/String;

.field public key2:Ljava/lang/String;

.field public size:J

.field public time:J

.field public value:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key:Ljava/lang/String;

    .line 123
    instance-of p1, p2, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;

    if-eqz p1, :cond_0

    nop

    nop

    iget-object p1, p2, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey2:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 124
    iget-object p1, p2, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey2:Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key2:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key2:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key2:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    .line 135
    :cond_0
    iput-object p2, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key2:Ljava/lang/String;

    return-void
.end method

.method public static createTable(Lcom/taobao/alivfsadapter/AVFSDataBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS AVFS_KV_TABLE(key TEXT, key2 TEXT, value BLOB, size INTEGER, time INTEGER, PRIMARY KEY(key, key2));"

    .line 140
    invoke-virtual {p0, v0}, Lcom/taobao/alivfsadapter/AVFSDataBase;->execUpdate(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catch_0
    move-exception p0

    .line 142
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static delete(Lcom/taobao/alivfsadapter/AVFSDataBase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AVFSSQLiteCacheItem"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 293
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "DELETE FROM AVFS_KV_TABLE WHERE key = ? AND key2 = ?"

    const/4 v6, 0x2

    .line 294
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v1

    aput-object p2, v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/taobao/alivfsadapter/AVFSDataBase;->execUpdate(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 299
    new-array p2, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error encountered on selecting the key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {v0, p0, p2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 300
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static deleteAll(Lcom/taobao/alivfsadapter/AVFSDataBase;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AVFSSQLiteCacheItem"

    .line 306
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "DELETE FROM AVFS_KV_TABLE"

    .line 307
    invoke-virtual {p0, v3}, Lcom/taobao/alivfsadapter/AVFSDataBase;->execUpdate(Ljava/lang/String;)Z

    move-result p0

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 v1, 0x1

    .line 312
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Error encountered on deleteAll the TABLE=AVFS_KV_TABLE"

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 316
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static extendsKeysForKey(Lcom/taobao/alivfsadapter/AVFSDataBase;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/alivfsadapter/AVFSDataBase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "SELECT key2 FROM AVFS_KV_TABLE WHERE key = ?"

    .line 255
    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/taobao/alivfsadapter/AVFSDataBase;->execQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/alivfsadapter/AVFSDBCursor;

    move-result-object v3

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz v3, :cond_2

    .line 267
    invoke-virtual {v3}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->next()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 269
    :cond_0
    invoke-virtual {v3, v2}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 271
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_1
    invoke-virtual {v3}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->next()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    :cond_2
    if-eqz v3, :cond_3

    .line 281
    invoke-virtual {v3}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "AVFSSQLiteCacheItem"

    .line 277
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error encountered on extendsKeysForKey the key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 278
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v3, :cond_4

    .line 281
    invoke-virtual {v3}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->close()V

    :cond_4
    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static get(Lcom/taobao/alivfsadapter/AVFSDataBase;Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    instance-of v0, p2, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;

    if-eqz v0, :cond_0

    nop

    nop

    iget-object v0, p2, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object p2, p2, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey2:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 213
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->get(Lcom/taobao/alivfsadapter/AVFSDataBase;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lcom/taobao/alivfsadapter/AVFSDataBase;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AVFSSQLiteCacheItem"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 219
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "SELECT  * FROM AVFS_KV_TABLE WHERE key = ? AND key2 = ? LIMIT 1"

    const/4 v7, 0x2

    .line 220
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v2

    aput-object p2, v7, v3

    invoke-virtual {p0, v6, v7}, Lcom/taobao/alivfsadapter/AVFSDataBase;->execQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/alivfsadapter/AVFSDBCursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 221
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 222
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->next()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 227
    invoke-static {p0}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->loadFromCursor(Lcom/taobao/alivfsadapter/AVFSDBCursor;)Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->close()V

    :cond_0
    return-object p1

    .line 230
    :cond_1
    :try_start_2
    new-array p2, v3, [Ljava/lang/Object;

    const-string v4, "No item found to select."

    aput-object v4, p2, v2

    invoke-static {v0, p2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->w(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_2

    .line 237
    invoke-virtual {p0}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v1, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 233
    :goto_0
    :try_start_3
    new-array p0, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error encountered on selecting the key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {v0, p2, p0}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 234
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v1, :cond_3

    .line 237
    invoke-virtual {v1}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->close()V

    :cond_3
    throw p1
.end method

.method public static getItems(Lcom/taobao/alivfsadapter/AVFSDataBase;)[Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "SELECT * FROM AVFS_KV_TABLE"

    .line 185
    invoke-virtual {p0, v4}, Lcom/taobao/alivfsadapter/AVFSDataBase;->execQuery(Ljava/lang/String;)Lcom/taobao/alivfsadapter/AVFSDBCursor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 186
    invoke-virtual {v3}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->next()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 188
    :cond_0
    invoke-static {v3}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->loadFromCursor(Lcom/taobao/alivfsadapter/AVFSDBCursor;)Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v3}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->next()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    :cond_1
    if-eqz v3, :cond_2

    .line 195
    invoke-virtual {v3}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->close()V

    .line 198
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    .line 199
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getItems: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVFSSQLiteCacheItem"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 192
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v3, :cond_3

    .line 195
    invoke-virtual {v3}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->close()V

    :cond_3
    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private getObjects()[Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x5

    .line 347
    new-array v0, v0, [Ljava/lang/Object;

    .line 348
    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 349
    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key2:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 350
    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->value:[B

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 351
    iget-wide v1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 352
    iget-wide v1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static loadFromCursor(Lcom/taobao/alivfsadapter/AVFSDBCursor;)Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;
    .locals 3

    .line 336
    new-instance v0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    invoke-direct {v0}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;-><init>()V

    const/4 v1, 0x0

    .line 337
    invoke-virtual {p0, v1}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key:Ljava/lang/String;

    const/4 v1, 0x1

    .line 338
    invoke-virtual {p0, v1}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key2:Ljava/lang/String;

    const/4 v1, 0x2

    .line 339
    invoke-virtual {p0, v1}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->getBytes(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->value:[B

    const/4 v1, 0x3

    .line 340
    invoke-virtual {p0, v1}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->size:J

    const/4 v1, 0x4

    .line 341
    invoke-virtual {p0, v1}, Lcom/taobao/alivfsadapter/AVFSDBCursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->time:J

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/taobao/alivfsadapter/AVFSDataBase;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AVFSSQLiteCacheItem"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 322
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "DELETE FROM AVFS_KV_TABLE WHERE key = ? AND key2 = ?"

    const/4 v6, 0x2

    .line 323
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key:Ljava/lang/String;

    aput-object v7, v6, v1

    iget-object v7, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key2:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {p1, v5, v6}, Lcom/taobao/alivfsadapter/AVFSDataBase;->execUpdate(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 330
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error encountered on selecting the key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, p1, v2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 331
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 360
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 363
    :cond_1
    check-cast p1, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    .line 365
    iget-wide v1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->size:J

    iget-wide v3, p1, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->size:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    return v0

    .line 367
    :cond_2
    iget-wide v1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->time:J

    iget-wide v3, p1, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->time:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    return v0

    .line 369
    :cond_3
    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v2, p1, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_0
    return v0

    .line 371
    :cond_5
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->value:[B

    iget-object p1, p1, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->value:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_6
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 376
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 377
    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->value:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 378
    iget-wide v1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->size:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 379
    iget-wide v1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->time:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public save(Lcom/taobao/alivfsadapter/AVFSDataBase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->value:[B

    if-eqz v0, :cond_0

    .line 154
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "REPLACE INTO AVFS_KV_TABLE VALUES(?,?,?,?,?)"

    .line 155
    invoke-direct {p0}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->getObjects()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/taobao/alivfsadapter/AVFSDataBase;->execUpdate(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string p1, "AVFSSQLiteCacheItem"

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 159
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "value cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateReadTime(Lcom/taobao/alivfsadapter/AVFSDataBase;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "UPDATE AVFS_KV_TABLE SET time = ? WHERE key = ? AND key2 = ?"

    const/4 v3, 0x3

    .line 166
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key2:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/taobao/alivfsadapter/AVFSDataBase;->execUpdate(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    iput-wide p2, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->time:J

    .line 171
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    const-string v0, "AVFSSQLiteCacheItem"

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateReadTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 176
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
