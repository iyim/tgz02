.class Lcom/ali/watchmem/core/WatchmemNativeMemoryManager$1;
.super Ljava/lang/Object;
.source "WatchmemNativeMemoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;->addNativeLowMemoryListener(Lcom/ali/watchmem/core/INativeLowMemoryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;

.field final synthetic val$nativeLowMemoryListener:Lcom/ali/watchmem/core/INativeLowMemoryListener;


# direct methods
.method constructor <init>(Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;Lcom/ali/watchmem/core/INativeLowMemoryListener;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager$1;->this$0:Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;

    iput-object p2, p0, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager$1;->val$nativeLowMemoryListener:Lcom/ali/watchmem/core/INativeLowMemoryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager$1;->this$0:Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;

    invoke-static {v0}, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;->access$000(Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager$1;->val$nativeLowMemoryListener:Lcom/ali/watchmem/core/INativeLowMemoryListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
