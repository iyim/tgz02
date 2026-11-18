.class public Lcom/taobao/alivfssdk/cache/NoOpAVFSCache;
.super Lcom/taobao/alivfssdk/cache/AVFSBaseCache;
.source "NoOpAVFSCache.java"


# static fields
.field private static sInstance:Lcom/taobao/alivfssdk/cache/NoOpAVFSCache;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getInstance()Lcom/taobao/alivfssdk/cache/NoOpAVFSCache;
    .locals 2

    const-class v0, Lcom/taobao/alivfssdk/cache/NoOpAVFSCache;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/taobao/alivfssdk/cache/NoOpAVFSCache;->sInstance:Lcom/taobao/alivfssdk/cache/NoOpAVFSCache;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/taobao/alivfssdk/cache/NoOpAVFSCache;

    invoke-direct {v1}, Lcom/taobao/alivfssdk/cache/NoOpAVFSCache;-><init>()V

    sput-object v1, Lcom/taobao/alivfssdk/cache/NoOpAVFSCache;->sInstance:Lcom/taobao/alivfssdk/cache/NoOpAVFSCache;

    .line 24
    :cond_0
    sget-object v1, Lcom/taobao/alivfssdk/cache/NoOpAVFSCache;->sInstance:Lcom/taobao/alivfssdk/cache/NoOpAVFSCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clearMemCache()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public containObjectForKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public extendsKeysForKey(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1
.end method

.method public inputStreamForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return-object p1
.end method

.method public lengthForKey(Ljava/lang/String;Ljava/lang/String;)J
    .locals 0

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public objectForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public objectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public removeAllObject()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeObjectForKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public setObjectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public setStreamForKey(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;I)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method
