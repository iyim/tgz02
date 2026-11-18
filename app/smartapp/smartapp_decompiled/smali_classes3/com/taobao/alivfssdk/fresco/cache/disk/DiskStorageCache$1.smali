.class Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$1;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;-><init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;Lcom/taobao/alivfssdk/fresco/cache/disk/EntryEvictionComparatorSupplier;Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$Params;Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;Lcom/taobao/alivfssdk/fresco/common/disk/DiskTrimmableRegistry;Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;Landroid/content/Context;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$1;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;

    iput-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$1;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;

    invoke-static {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->access$000(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$1;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;

    invoke-static {v1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->access$100(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;)Z

    .line 199
    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$1;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;

    invoke-static {v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->access$200(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;)Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    move-result-object v2

    invoke-interface {v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->getStorageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->access$300(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$1;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;

    invoke-static {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->access$400(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v1

    .line 200
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
