.class public Lorg/greenrobot/eventbus/EventBusBuilder;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final m:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Ljava/util/concurrent/ExecutorService;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/b/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lorg/greenrobot/eventbus/Logger;

.field public l:Lorg/greenrobot/eventbus/MainThreadSupport;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/greenrobot/eventbus/EventBusBuilder;->m:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->a:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->b:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->c:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->d:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->f:Z

    sget-object v0, Lorg/greenrobot/eventbus/EventBusBuilder;->m:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lorg/greenrobot/eventbus/Logger;
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->k:Lorg/greenrobot/eventbus/Logger;

    if-eqz v0, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-boolean v0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->b:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/greenrobot/eventbus/EventBusBuilder;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;

    const-string v1, "EventBus"

    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/Logger$AndroidLogger;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/greenrobot/eventbus/Logger$SystemOutLogger;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/Logger$SystemOutLogger;-><init>()V

    :goto_0
    return-object v0
.end method

.method public c()Lorg/greenrobot/eventbus/MainThreadSupport;
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->l:Lorg/greenrobot/eventbus/MainThreadSupport;

    if-eqz v0, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-boolean v0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lorg/greenrobot/eventbus/EventBusBuilder;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/greenrobot/eventbus/MainThreadSupport$AndroidHandlerMainThreadSupport;

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v0}, Lorg/greenrobot/eventbus/MainThreadSupport$AndroidHandlerMainThreadSupport;-><init>(Landroid/os/Looper;)V

    :cond_2
    :goto_0
    return-object v1
.end method
