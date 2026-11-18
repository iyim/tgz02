.class public Lcom/ali/watchmem/core/WatchmemActivityManager;
.super Ljava/lang/Object;
.source "WatchmemActivityManager.java"

# interfaces
.implements Lcom/ali/watchmem/core/INativeLowMemoryListener;
.implements Lcom/ali/watchmem/core/IJavaLowMemoryListener;
.implements Lcom/ali/watchmem/core/IWatchmemActivityManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/watchmem/core/WatchmemActivityManager$ForceFinishActivityCallback;,
        Lcom/ali/watchmem/core/WatchmemActivityManager$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WatchmemActivityManager"


# instance fields
.field private callback:Lcom/ali/watchmem/core/WatchmemActivityManager$ForceFinishActivityCallback;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ali/watchmem/data/WatchmemActivityWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchmemActivityWrapperFetcher:Lcom/ali/watchmem/core/lowmem/IWatchmemActivityWrapperFetcher;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/watchmem/core/WatchmemActivityManager;->list:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ali/watchmem/core/WatchmemActivityManager$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/ali/watchmem/core/WatchmemActivityManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ali/watchmem/core/WatchmemActivityManager;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ali/watchmem/core/WatchmemActivityManager;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ali/watchmem/core/WatchmemActivityManager;Lcom/ali/watchmem/core/WatchmemLevel;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/ali/watchmem/core/WatchmemActivityManager;->onLowMemoryAction(Lcom/ali/watchmem/core/WatchmemLevel;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/ali/watchmem/core/WatchmemActivityManager;)Lcom/ali/watchmem/core/lowmem/IWatchmemActivityWrapperFetcher;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ali/watchmem/core/WatchmemActivityManager;->mWatchmemActivityWrapperFetcher:Lcom/ali/watchmem/core/lowmem/IWatchmemActivityWrapperFetcher;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ali/watchmem/core/WatchmemActivityManager;Lcom/ali/watchmem/core/lowmem/IWatchmemActivityWrapperFetcher;)Lcom/ali/watchmem/core/lowmem/IWatchmemActivityWrapperFetcher;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/ali/watchmem/core/WatchmemActivityManager;->mWatchmemActivityWrapperFetcher:Lcom/ali/watchmem/core/lowmem/IWatchmemActivityWrapperFetcher;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ali/watchmem/core/WatchmemActivityManager;)Lcom/ali/watchmem/core/WatchmemActivityManager$ForceFinishActivityCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ali/watchmem/core/WatchmemActivityManager;->callback:Lcom/ali/watchmem/core/WatchmemActivityManager$ForceFinishActivityCallback;

    return-object p0
.end method

.method private finishActivity()V
    .locals 2

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 121
    new-instance v1, Lcom/ali/watchmem/core/WatchmemActivityManager$5;

    invoke-direct {v1, p0}, Lcom/ali/watchmem/core/WatchmemActivityManager$5;-><init>(Lcom/ali/watchmem/core/WatchmemActivityManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static instance()Lcom/ali/watchmem/core/WatchmemActivityManager;
    .locals 1

    .line 36
    sget-object v0, Lcom/ali/watchmem/core/WatchmemActivityManager$Holder;->INSTANCE:Lcom/ali/watchmem/core/WatchmemActivityManager;

    return-object v0
.end method

.method private onLowMemoryAction(Lcom/ali/watchmem/core/WatchmemLevel;)V
    .locals 1

    .line 113
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->CRITICAL:Lcom/ali/watchmem/core/WatchmemLevel;

    if-ne p1, v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/ali/watchmem/core/WatchmemActivityManager;->finishActivity()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .locals 2

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 76
    instance-of v0, v0, Landroid/app/TabActivity;

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/global/Global;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ali/watchmem/core/WatchmemActivityManager$3;

    invoke-direct {v1, p0, p1}, Lcom/ali/watchmem/core/WatchmemActivityManager$3;-><init>(Lcom/ali/watchmem/core/WatchmemActivityManager;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onJavaLowMemory(Lcom/ali/watchmem/core/WatchmemLevel;)V
    .locals 2

    .line 58
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/global/Global;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ali/watchmem/core/WatchmemActivityManager$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/watchmem/core/WatchmemActivityManager$2;-><init>(Lcom/ali/watchmem/core/WatchmemActivityManager;Lcom/ali/watchmem/core/WatchmemLevel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNativeLowMemory(Lcom/ali/watchmem/core/WatchmemLevel;)V
    .locals 2

    .line 41
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/global/Global;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ali/watchmem/core/WatchmemActivityManager$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/watchmem/core/WatchmemActivityManager$1;-><init>(Lcom/ali/watchmem/core/WatchmemActivityManager;Lcom/ali/watchmem/core/WatchmemLevel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerCallback(Lcom/ali/watchmem/core/WatchmemActivityManager$ForceFinishActivityCallback;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/ali/watchmem/core/WatchmemActivityManager;->callback:Lcom/ali/watchmem/core/WatchmemActivityManager$ForceFinishActivityCallback;

    return-void
.end method

.method public remove(Landroid/app/Activity;)V
    .locals 2

    .line 93
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/global/Global;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ali/watchmem/core/WatchmemActivityManager$4;

    invoke-direct {v1, p0, p1}, Lcom/ali/watchmem/core/WatchmemActivityManager$4;-><init>(Lcom/ali/watchmem/core/WatchmemActivityManager;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setWatchmemActivityWrapperFetcher(Lcom/ali/watchmem/core/lowmem/IWatchmemActivityWrapperFetcher;)Lcom/ali/watchmem/core/WatchmemActivityManager;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/ali/watchmem/core/WatchmemActivityManager;->mWatchmemActivityWrapperFetcher:Lcom/ali/watchmem/core/lowmem/IWatchmemActivityWrapperFetcher;

    return-object p0
.end method
