.class Lcom/ali/watchmem/core/WatchmemJavaMemoryManager$1;
.super Ljava/lang/Object;
.source "WatchmemJavaMemoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;->addJavaLowMemoryListener(Lcom/ali/watchmem/core/IJavaLowMemoryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;

.field final synthetic val$javaLowMemoryListener:Lcom/ali/watchmem/core/IJavaLowMemoryListener;


# direct methods
.method constructor <init>(Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;Lcom/ali/watchmem/core/IJavaLowMemoryListener;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/ali/watchmem/core/WatchmemJavaMemoryManager$1;->this$0:Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;

    iput-object p2, p0, Lcom/ali/watchmem/core/WatchmemJavaMemoryManager$1;->val$javaLowMemoryListener:Lcom/ali/watchmem/core/IJavaLowMemoryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/ali/watchmem/core/WatchmemJavaMemoryManager$1;->this$0:Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;

    invoke-static {v0}, Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;->access$000(Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/watchmem/core/WatchmemJavaMemoryManager$1;->val$javaLowMemoryListener:Lcom/ali/watchmem/core/IJavaLowMemoryListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
