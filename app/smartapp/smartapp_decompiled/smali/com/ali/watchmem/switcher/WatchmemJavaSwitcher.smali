.class Lcom/ali/watchmem/switcher/WatchmemJavaSwitcher;
.super Ljava/lang/Object;
.source "WatchmemJavaSwitcher.java"

# interfaces
.implements Lcom/ali/watchmem/switcher/IWatchmemSwitcher;
.implements Lcom/ali/watchmem/core/IJavaLowMemoryListener;


# instance fields
.field private volatile mOpen:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/ali/watchmem/switcher/WatchmemJavaSwitcher;->mOpen:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private createGCDetector()V
    .locals 1

    .line 41
    new-instance v0, Lcom/ali/watchmem/gcdetector/GCDetector;

    invoke-direct {v0}, Lcom/ali/watchmem/gcdetector/GCDetector;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;->instance()Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;->removeJavaLowMemoryListener(Lcom/ali/watchmem/core/IJavaLowMemoryListener;)V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/ali/watchmem/switcher/WatchmemJavaSwitcher;->mOpen:Z

    return-void
.end method

.method public onJavaLowMemory(Lcom/ali/watchmem/core/WatchmemLevel;)V
    .locals 0

    .line 35
    iget-boolean p1, p0, Lcom/ali/watchmem/switcher/WatchmemJavaSwitcher;->mOpen:Z

    if-eqz p1, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/ali/watchmem/switcher/WatchmemJavaSwitcher;->createGCDetector()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public open()V
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/ali/watchmem/switcher/WatchmemJavaSwitcher;->mOpen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/ali/watchmem/switcher/WatchmemJavaSwitcher;->mOpen:Z

    .line 22
    invoke-static {}, Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;->instance()Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ali/watchmem/core/WatchmemJavaMemoryManager;->addJavaLowMemoryListener(Lcom/ali/watchmem/core/IJavaLowMemoryListener;)V

    .line 23
    invoke-direct {p0}, Lcom/ali/watchmem/switcher/WatchmemJavaSwitcher;->createGCDetector()V

    :cond_0
    return-void
.end method
