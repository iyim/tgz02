.class public Lcom/taobao/phenix/builder/BytesPoolBuilder;
.super Ljava/lang/Object;
.source "BytesPoolBuilder.java"

# interfaces
.implements Lcom/taobao/phenix/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/phenix/builder/Builder<",
        "Lcom/taobao/tcommon/core/BytesPool;",
        ">;"
    }
.end annotation


# instance fields
.field private mBytesPool:Lcom/taobao/tcommon/core/BytesPool;

.field private mComponentCallbacks:Landroid/content/ComponentCallbacks2;

.field private mHaveBuilt:Z

.field private mMaxSize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private registerComponentCallbacks(Lcom/taobao/tcommon/core/BytesPool;)Lcom/taobao/tcommon/core/BytesPool;
    .locals 3

    .line 51
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->applicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 52
    new-instance v1, Lcom/taobao/phenix/builder/BytesPoolBuilder$1;

    invoke-direct {v1, p0, p1}, Lcom/taobao/phenix/builder/BytesPoolBuilder$1;-><init>(Lcom/taobao/phenix/builder/BytesPoolBuilder;Lcom/taobao/tcommon/core/BytesPool;)V

    iput-object v1, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    .line 68
    iget-object v1, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public declared-synchronized build()Lcom/taobao/tcommon/core/BytesPool;
    .locals 2

    monitor-enter p0

    .line 36
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mHaveBuilt:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mBytesPool:Lcom/taobao/tcommon/core/BytesPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 39
    :try_start_1
    iput-boolean v0, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mHaveBuilt:Z

    .line 40
    iget-object v0, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mBytesPool:Lcom/taobao/tcommon/core/BytesPool;

    if-nez v0, :cond_2

    .line 41
    new-instance v0, Lcom/taobao/phenix/bytes/LinkedBytesPool;

    iget-object v1, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mMaxSize:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mMaxSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x100000

    :goto_0
    invoke-direct {v0, v1}, Lcom/taobao/phenix/bytes/LinkedBytesPool;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mBytesPool:Lcom/taobao/tcommon/core/BytesPool;

    goto :goto_1

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mMaxSize:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 43
    iget-object v0, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mBytesPool:Lcom/taobao/tcommon/core/BytesPool;

    iget-object v1, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mMaxSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/taobao/tcommon/core/BytesPool;->resize(I)V

    .line 45
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mBytesPool:Lcom/taobao/tcommon/core/BytesPool;

    invoke-direct {p0, v0}, Lcom/taobao/phenix/builder/BytesPoolBuilder;->registerComponentCallbacks(Lcom/taobao/tcommon/core/BytesPool;)Lcom/taobao/tcommon/core/BytesPool;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/taobao/phenix/builder/BytesPoolBuilder;->build()Lcom/taobao/tcommon/core/BytesPool;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 3

    .line 76
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->applicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    if-eqz v1, :cond_1

    .line 82
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 81
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/phenix/intf/Phenix;->applicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 84
    :cond_0
    throw v0

    .line 81
    :catch_0
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->applicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public maxSize(Ljava/lang/Integer;)Lcom/taobao/phenix/builder/BytesPoolBuilder;
    .locals 2

    .line 29
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mHaveBuilt:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "BytesPoolBuilder has been built, not allow maxSize() now"

    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 30
    iput-object p1, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mMaxSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic with(Ljava/lang/Object;)Lcom/taobao/phenix/builder/Builder;
    .locals 0

    .line 15
    check-cast p1, Lcom/taobao/tcommon/core/BytesPool;

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/builder/BytesPoolBuilder;->with(Lcom/taobao/tcommon/core/BytesPool;)Lcom/taobao/phenix/builder/BytesPoolBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/taobao/tcommon/core/BytesPool;)Lcom/taobao/phenix/builder/BytesPoolBuilder;
    .locals 2

    .line 23
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mHaveBuilt:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "BytesPoolBuilder has been built, not allow with() now"

    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 24
    iput-object p1, p0, Lcom/taobao/phenix/builder/BytesPoolBuilder;->mBytesPool:Lcom/taobao/tcommon/core/BytesPool;

    return-object p0
.end method
