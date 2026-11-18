.class Lcom/ali/watchmem/core/WatchmemJavaMemoryManager$3;
.super Ljava/lang/Object;
.source "WatchmemJavaMemoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;->onJavaLowMemory(Lcom/ali/watchmem/core/WatchmemLevel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;

.field final synthetic val$level:Lcom/ali/watchmem/core/WatchmemLevel;


# direct methods
.method constructor <init>(Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;Lcom/ali/watchmem/core/WatchmemLevel;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ali/watchmem/core/WatchmemJavaMemoryManager$3;->this$0:Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;

    iput-object p2, p0, Lcom/ali/watchmem/core/WatchmemJavaMemoryManager$3;->val$level:Lcom/ali/watchmem/core/WatchmemLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/ali/watchmem/core/WatchmemJavaMemoryManager$3;->this$0:Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;

    invoke-static {v0}, Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;->access$000(Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ali/watchmem/core/IJavaLowMemoryListener;

    if-eqz v1, :cond_0

    .line 51
    iget-object v2, p0, Lcom/ali/watchmem/core/WatchmemJavaMemoryManager$3;->val$level:Lcom/ali/watchmem/core/WatchmemLevel;

    invoke-interface {v1, v2}, Lcom/ali/watchmem/core/IJavaLowMemoryListener;->onJavaLowMemory(Lcom/ali/watchmem/core/WatchmemLevel;)V

    goto :goto_0

    :cond_1
    return-void
.end method
