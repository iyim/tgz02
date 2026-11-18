.class Lcom/taobao/zcache/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# static fields
.field private static final packUpdateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/taobao/zcache/PackUpdateFinishedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/zcache/UpdateManager;->packUpdateListeners:Ljava/util/HashMap;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static onPackUpdated(Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/taobao/zcache/UpdateManager;->packUpdateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/taobao/zcache/UpdateManager;->packUpdateListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/taobao/zcache/PackUpdateFinishedCallback;

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 43
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    const/4 v4, 0x0

    .line 44
    invoke-interface {v3, p0, v4}, Lcom/taobao/zcache/PackUpdateFinishedCallback;->finish(Ljava/lang/String;Lcom/taobao/zcache/Error;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static registerUpdateListener(Ljava/lang/String;Lcom/taobao/zcache/PackUpdateFinishedCallback;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/taobao/zcache/PackUpdateFinishedCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    sget-object v0, Lcom/taobao/zcache/UpdateManager;->packUpdateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/taobao/zcache/UpdateManager;->packUpdateListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/taobao/zcache/PackUpdateFinishedCallback;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 22
    sget-object v1, Lcom/taobao/zcache/UpdateManager;->packUpdateListeners:Ljava/util/HashMap;

    new-array v2, v2, [Lcom/taobao/zcache/PackUpdateFinishedCallback;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 24
    array-length v3, v1

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/taobao/zcache/PackUpdateFinishedCallback;

    .line 25
    array-length v1, v1

    aput-object p1, v2, v1

    .line 26
    sget-object p1, Lcom/taobao/zcache/UpdateManager;->packUpdateListeners:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-void
.end method
