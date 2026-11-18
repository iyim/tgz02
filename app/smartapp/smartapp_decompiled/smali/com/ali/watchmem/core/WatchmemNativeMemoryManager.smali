.class public Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;
.super Ljava/lang/Object;
.source "WatchmemNativeMemoryManager.java"

# interfaces
.implements Lcom/ali/watchmem/core/INativeLowMemoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/watchmem/core/WatchmemNativeMemoryManager$Holder;
    }
.end annotation


# instance fields
.field private mNativeLowMemoryListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ali/watchmem/core/INativeLowMemoryListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;->mNativeLowMemoryListeners:Ljava/util/ArrayList;

    .line 15
    iget-object v0, p0, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;->mNativeLowMemoryListeners:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ali/watchmem/core/WatchmemActivityManager;->instance()Lcom/ali/watchmem/core/WatchmemActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ali/watchmem/core/WatchmemNativeMemoryManager$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;)Ljava/util/ArrayList;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;->mNativeLowMemoryListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static instance()Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;
    .locals 1

    .line 19
    sget-object v0, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager$Holder;->INSTANCE:Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;

    return-object v0
.end method


# virtual methods
.method public addNativeLowMemoryListener(Lcom/ali/watchmem/core/INativeLowMemoryListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;->mNativeLowMemoryListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/global/Global;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager$1;-><init>(Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;Lcom/ali/watchmem/core/INativeLowMemoryListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onNativeLowMemory(Lcom/ali/watchmem/core/WatchmemLevel;)V
    .locals 2

    .line 46
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/global/Global;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager$3;

    invoke-direct {v1, p0, p1}, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager$3;-><init>(Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;Lcom/ali/watchmem/core/WatchmemLevel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeNativeLowMemoryListener(Lcom/ali/watchmem/core/INativeLowMemoryListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;->mNativeLowMemoryListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/global/Global;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager$2;-><init>(Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;Lcom/ali/watchmem/core/INativeLowMemoryListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
