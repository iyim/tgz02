.class Lcom/ali/watchmem/core/WatchmemActivityManager$2;
.super Ljava/lang/Object;
.source "WatchmemActivityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/watchmem/core/WatchmemActivityManager;->onJavaLowMemory(Lcom/ali/watchmem/core/WatchmemLevel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

.field final synthetic val$level:Lcom/ali/watchmem/core/WatchmemLevel;


# direct methods
.method constructor <init>(Lcom/ali/watchmem/core/WatchmemActivityManager;Lcom/ali/watchmem/core/WatchmemLevel;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$2;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

    iput-object p2, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$2;->val$level:Lcom/ali/watchmem/core/WatchmemLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$2;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

    invoke-static {v0}, Lcom/ali/watchmem/core/WatchmemActivityManager;->access$000(Lcom/ali/watchmem/core/WatchmemActivityManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ali/watchmem/data/WatchmemActivityWrapper;

    .line 62
    invoke-virtual {v1}, Lcom/ali/watchmem/data/WatchmemActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 63
    instance-of v2, v1, Lcom/ali/watchmem/core/IJavaLowMemoryListener;

    if-eqz v2, :cond_0

    .line 64
    check-cast v1, Lcom/ali/watchmem/core/IJavaLowMemoryListener;

    iget-object v2, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$2;->val$level:Lcom/ali/watchmem/core/WatchmemLevel;

    invoke-interface {v1, v2}, Lcom/ali/watchmem/core/IJavaLowMemoryListener;->onJavaLowMemory(Lcom/ali/watchmem/core/WatchmemLevel;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$2;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

    iget-object v1, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$2;->val$level:Lcom/ali/watchmem/core/WatchmemLevel;

    invoke-static {v0, v1}, Lcom/ali/watchmem/core/WatchmemActivityManager;->access$100(Lcom/ali/watchmem/core/WatchmemActivityManager;Lcom/ali/watchmem/core/WatchmemLevel;)V

    return-void
.end method
