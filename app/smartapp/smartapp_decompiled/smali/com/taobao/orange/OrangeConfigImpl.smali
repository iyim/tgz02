.class public Lcom/taobao/orange/OrangeConfigImpl;
.super Lcom/taobao/orange/OrangeConfig;
.source "OrangeConfigImpl.java"


# static fields
.field static final TAG:Ljava/lang/String; = "OrangeConfigImpl"

.field static mInstance:Lcom/taobao/orange/OrangeConfigImpl;


# instance fields
.field volatile mBindServiceLock:Ljava/util/concurrent/CountDownLatch;

.field private mConnection:Landroid/content/ServiceConnection;

.field volatile mContext:Landroid/content/Context;

.field final mFailCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/orange/OCandidate;",
            ">;"
        }
    .end annotation
.end field

.field final mFailListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/taobao/orange/aidl/OrangeConfigListenerStub;",
            ">;>;"
        }
    .end annotation
.end field

.field final mFailNamespaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field volatile mFailUserId:Ljava/lang/String;

.field mIsBindingService:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mIsMainProcess:Z

.field volatile mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/taobao/orange/OrangeConfigImpl;

    invoke-direct {v0}, Lcom/taobao/orange/OrangeConfigImpl;-><init>()V

    sput-object v0, Lcom/taobao/orange/OrangeConfigImpl;->mInstance:Lcom/taobao/orange/OrangeConfigImpl;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/taobao/orange/OrangeConfig;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mIsBindingService:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mIsMainProcess:Z

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailUserId:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailNamespaces:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailListeners:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailCandidates:Ljava/util/List;

    .line 490
    new-instance v0, Lcom/taobao/orange/OrangeConfigImpl$5;

    invoke-direct {v0, p0}, Lcom/taobao/orange/OrangeConfigImpl$5;-><init>(Lcom/taobao/orange/OrangeConfigImpl;)V

    iput-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private bindRemoteService(Landroid/content/Context;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 472
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mIsBindingService:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "OrangeConfigImpl"

    const-string v4, "bindRemoteService start"

    invoke-static {v3, v4, v0}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/taobao/orange/service/OrangeApiService;

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    const-class v4, Lcom/taobao/orange/service/OrangeApiService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.category.DEFAULT"

    .line 478
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    iget-object v4, p0, Lcom/taobao/orange/OrangeConfigImpl;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "bindRemoteService fail"

    .line 481
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 484
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "bindRemoteService"

    invoke-static {v3, v1, p1, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private getFailListenerStubByKey(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/taobao/orange/aidl/OrangeConfigListenerStub;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 299
    iget-object v1, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private regCommonListener([Ljava/lang/String;Lcom/taobao/orange/OBaseListener;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/taobao/orange/OBaseListener;",
            ">([",
            "Ljava/lang/String;",
            "TT;Z)V"
        }
    .end annotation

    const-string v0, "OrangeConfigImpl"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 263
    array-length v2, p1

    if-eqz v2, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 267
    :cond_0
    new-instance v2, Lcom/taobao/orange/aidl/OrangeConfigListenerStub;

    invoke-direct {v2, p2, p3}, Lcom/taobao/orange/aidl/OrangeConfigListenerStub;-><init>(Lcom/taobao/orange/OBaseListener;Z)V

    .line 268
    iget-object p2, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    if-nez p2, :cond_1

    const/4 p2, 0x2

    .line 269
    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "namespaces"

    aput-object p3, p2, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    const/4 v3, 0x1

    aput-object p3, p2, v3

    const-string/jumbo p3, "registerListener wait"

    invoke-static {v0, p3, p2}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    array-length p2, p1

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object p3, p1, v1

    .line 271
    invoke-direct {p0, p3}, Lcom/taobao/orange/OrangeConfigImpl;->getFailListenerStubByKey(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_1
    new-instance p2, Lcom/taobao/orange/OrangeConfigImpl$4;

    invoke-direct {p2, p0, p1, v2}, Lcom/taobao/orange/OrangeConfigImpl$4;-><init>(Lcom/taobao/orange/OrangeConfigImpl;[Ljava/lang/String;Lcom/taobao/orange/aidl/OrangeConfigListenerStub;)V

    invoke-static {p2}, Lcom/taobao/orange/OThreadFactory;->execute(Ljava/lang/Runnable;)V

    :cond_2
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 264
    :cond_3
    :goto_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo p2, "registerListener error as param null"

    invoke-static {v0, p2, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public addCandidate(Lcom/taobao/orange/OCandidate;)V
    .locals 6
    .param p1    # Lcom/taobao/orange/OCandidate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "OrangeConfigImpl"

    if-nez p1, :cond_0

    .line 398
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "addCandidate error as candidate is null"

    invoke-static {v1, v0, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 401
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/orange/OCandidate;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_ver"

    .line 403
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-nez v3, :cond_4

    const-string v3, "os_ver"

    .line 404
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "m_fac"

    .line 405
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "m_brand"

    .line 406
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "m_model"

    .line 407
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "did_hash"

    .line 408
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 412
    :cond_1
    iget-object v2, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    if-nez v2, :cond_2

    .line 413
    iget-object v2, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailCandidates:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 414
    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "candidate"

    aput-object v3, v2, v0

    aput-object p1, v2, v4

    const-string p1, "addCandidate wait"

    invoke-static {v1, p1, v2}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 418
    :cond_2
    :try_start_0
    iget-boolean v2, p0, Lcom/taobao/orange/OrangeConfigImpl;->mIsMainProcess:Z

    if-eqz v2, :cond_3

    .line 419
    iget-object v2, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    invoke-virtual {p1}, Lcom/taobao/orange/OCandidate;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/orange/OCandidate;->getClientVal()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/orange/OCandidate;->getCompare()Lcom/taobao/orange/aidl/ParcelableCandidateCompare;

    move-result-object p1

    invoke-interface {v2, v3, v4, p1}, Lcom/taobao/orange/aidl/IOrangeApiService;->addCandidate(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/orange/aidl/ParcelableCandidateCompare;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 422
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "addCandidate"

    invoke-static {v1, v2, p1, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    .line 409
    :cond_4
    :goto_1
    new-array p1, v5, [Ljava/lang/Object;

    const-string v3, "key"

    aput-object v3, p1, v0

    aput-object v2, p1, v4

    const-string v0, "addCandidate fail as not allow override build-in candidate"

    invoke-static {v1, v0, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method asyncGetRemoteService(Landroid/content/Context;Z)V
    .locals 7

    const-string/jumbo v0, "syncGetBindService"

    const-string v1, "OrangeConfigImpl"

    .line 448
    iget-object v2, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    if-eqz v2, :cond_0

    return-void

    .line 451
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/orange/OrangeConfigImpl;->bindRemoteService(Landroid/content/Context;)V

    if-eqz p2, :cond_3

    .line 453
    iget-object p2, p0, Lcom/taobao/orange/OrangeConfigImpl;->mBindServiceLock:Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    if-nez p2, :cond_1

    .line 454
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p2, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p2, p0, Lcom/taobao/orange/OrangeConfigImpl;->mBindServiceLock:Ljava/util/concurrent/CountDownLatch;

    .line 456
    :cond_1
    iget-object p2, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    if-eqz p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x0

    .line 460
    :try_start_0
    iget-object v3, p0, Lcom/taobao/orange/OrangeConfigImpl;->mBindServiceLock:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x14

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 462
    new-array v4, p2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 464
    :goto_0
    iget-object v3, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    iget-boolean v3, p0, Lcom/taobao/orange/OrangeConfigImpl;->mIsMainProcess:Z

    if-eqz v3, :cond_3

    .line 465
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "bind service timeout local stub in main process"

    aput-object v3, v2, p2

    invoke-static {v1, v0, v2}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    new-instance p2, Lcom/taobao/orange/aidl/OrangeApiServiceStub;

    invoke-direct {p2, p1}, Lcom/taobao/orange/aidl/OrangeApiServiceStub;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    :cond_3
    return-void
.end method

.method public enterBackground()V
    .locals 3

    const/4 v0, 0x0

    .line 429
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OrangeConfigImpl"

    const-string v2, "enterBackground api is @Deprecated"

    invoke-static {v1, v2, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public enterForeground()V
    .locals 0

    .line 376
    invoke-virtual {p0}, Lcom/taobao/orange/OrangeConfigImpl;->forceCheckUpdate()V

    return-void
.end method

.method public forceCheckUpdate()V
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    const/4 v1, 0x0

    const-string v2, "OrangeConfigImpl"

    if-eqz v0, :cond_0

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    invoke-interface {v0}, Lcom/taobao/orange/aidl/IOrangeApiService;->forceCheckUpdate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 367
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "forceCheckUpdate"

    invoke-static {v2, v3, v0, v1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 370
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "forceCheckUpdate fail"

    invoke-static {v2, v1, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/orange/OrangeConfigImpl;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 173
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    return-object p3

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 169
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "OrangeConfigImpl"

    const-string v0, "getConfig error as param is empty"

    invoke-static {p2, v0, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3
.end method

.method public getConfigs(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OrangeConfigImpl"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 182
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "getConfig error as param is empty"

    invoke-static {v2, v0, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v3}, Lcom/taobao/orange/OrangeConfigImpl;->asyncGetRemoteService(Landroid/content/Context;Z)V

    .line 187
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailNamespaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 189
    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "namespace"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    aput-object p1, v0, v3

    const-string p1, "getConfigs wait"

    invoke-static {v2, p1, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    invoke-interface {v0, p1}, Lcom/taobao/orange/aidl/IOrangeApiService;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "getConfigs"

    invoke-static {v2, v3, p1, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getCustomConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "OrangeConfigImpl"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 229
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "getCustomConfig error as param is empty"

    invoke-static {v1, p2, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/taobao/orange/OrangeConfigImpl;->asyncGetRemoteService(Landroid/content/Context;Z)V

    .line 233
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailNamespaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 235
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "namespace"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string p1, "getCustomConfig wait"

    invoke-static {v1, p1, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 239
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    invoke-interface {v0, p1, p2}, Lcom/taobao/orange/aidl/IOrangeApiService;->getCustomConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 241
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "getCustomConfig"

    invoke-static {v1, v2, p1, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object p2
.end method

.method public getSyncConfigs(Ljava/lang/String;J)Ljava/util/Map;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p1}, Lcom/taobao/orange/OrangeConfigImpl;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_3

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const-string v3, "getSyncConfigs"

    const/4 v4, 0x3

    const-string/jumbo v5, "timeout"

    const/4 v6, 0x2

    const-string v7, "namespace"

    const/4 v8, 0x4

    const-string v9, "OrangeConfigImpl"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v1, v2, :cond_0

    .line 138
    invoke-static {v11}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    new-array v1, v8, [Ljava/lang/Object;

    aput-object v7, v1, v11

    aput-object p1, v1, v10

    aput-object v5, v1, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v9, v3, v1}, Lcom/taobao/orange/util/OLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 142
    :cond_0
    new-array v1, v8, [Ljava/lang/Object;

    aput-object v7, v1, v11

    aput-object p1, v1, v10

    aput-object v5, v1, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "getSyncConfigs in main thread"

    invoke-static {v9, v2, v1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 145
    new-array v2, v10, [Ljava/lang/String;

    aput-object p1, v2, v11

    new-instance p1, Lcom/taobao/orange/OrangeConfigImpl$2;

    invoke-direct {p1, p0, v1, v0}, Lcom/taobao/orange/OrangeConfigImpl$2;-><init>(Lcom/taobao/orange/OrangeConfigImpl;Ljava/util/concurrent/CountDownLatch;Ljava/util/Map;)V

    invoke-virtual {p0, v2, p1, v11}, Lcom/taobao/orange/OrangeConfigImpl;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OConfigListener;Z)V

    const-wide/16 v4, 0x0

    cmp-long p1, p2, v4

    if-lez p1, :cond_2

    .line 154
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2, p3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 159
    new-array p2, v11, [Ljava/lang/Object;

    invoke-static {v9, v3, p1, p2}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getSyncCustomConfig(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/taobao/orange/OrangeConfigImpl;->getCustomConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 206
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance p1, Lcom/taobao/orange/OrangeConfigImpl$3;

    invoke-direct {p1, p0, v1, v0, p2}, Lcom/taobao/orange/OrangeConfigImpl$3;-><init>(Lcom/taobao/orange/OrangeConfigImpl;Ljava/util/concurrent/CountDownLatch;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1, v3}, Lcom/taobao/orange/OrangeConfigImpl;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OConfigListener;Z)V

    const-wide/16 p1, 0x0

    cmp-long v2, p3, p1

    if-lez v2, :cond_0

    .line 216
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p3, p4, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 221
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "OrangeConfigImpl"

    const-string p4, "getSyncCustomConfig"

    invoke-static {p3, p4, p1, p2}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 223
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;Lcom/taobao/orange/OConfig;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/orange/OConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "OrangeConfigImpl"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 60
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "init error as ctx is null"

    invoke-static {v0, p2, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 63
    :cond_0
    invoke-static {p1}, Lcom/taobao/orange/util/AndroidUtil;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/taobao/orange/OrangeConfigImpl;->mIsMainProcess:Z

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 67
    sput-boolean v1, Lcom/taobao/orange/util/OLog;->isUseTlog:Z

    goto :goto_1

    .line 69
    :cond_2
    sput-boolean v4, Lcom/taobao/orange/util/OLog;->isUseTlog:Z

    :goto_1
    const/4 v5, 0x4

    .line 71
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "isDebug"

    aput-object v6, v5, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v4

    const-string v2, "isMainProcess"

    aput-object v2, v5, v3

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/taobao/orange/OrangeConfigImpl;->mIsMainProcess:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    const-string v2, "init"

    invoke-static {v0, v2, v5}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v2, p2, Lcom/taobao/orange/OConfig;->appKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p2, Lcom/taobao/orange/OConfig;->appVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_4

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mContext:Landroid/content/Context;

    .line 80
    :cond_4
    new-instance v0, Lcom/taobao/orange/OrangeConfigImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/orange/OrangeConfigImpl$1;-><init>(Lcom/taobao/orange/OrangeConfigImpl;Landroid/content/Context;Lcom/taobao/orange/OConfig;)V

    invoke-static {v0}, Lcom/taobao/orange/OThreadFactory;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 73
    :cond_5
    :goto_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "init error as appKey or appVersion is empty"

    invoke-static {v0, p2, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public registerListener([Ljava/lang/String;Lcom/taobao/orange/OConfigListener;Z)V
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/orange/OConfigListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/orange/OrangeConfigImpl;->regCommonListener([Ljava/lang/String;Lcom/taobao/orange/OBaseListener;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListener;)V
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/orange/OrangeConfigListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 249
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/orange/OrangeConfigImpl;->regCommonListener([Ljava/lang/String;Lcom/taobao/orange/OBaseListener;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/orange/OrangeConfigListenerV1;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 254
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/orange/OrangeConfigImpl;->regCommonListener([Ljava/lang/String;Lcom/taobao/orange/OBaseListener;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method registerListener([Ljava/lang/String;Lcom/taobao/orange/aidl/OrangeConfigListenerStub;)V
    .locals 7

    .line 284
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 285
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 287
    :try_start_0
    iget-object v4, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    invoke-virtual {p2}, Lcom/taobao/orange/aidl/OrangeConfigListenerStub;->isAppend()Z

    move-result v5

    invoke-interface {v4, v3, p2, v5}, Lcom/taobao/orange/aidl/IOrangeApiService;->registerListener(Ljava/lang/String;Lcom/taobao/orange/aidl/ParcelableConfigListener;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 289
    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "OrangeConfigImpl"

    const-string/jumbo v6, "registerListener"

    invoke-static {v5, v6, v3, v4}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method sendFailItems()V
    .locals 11

    const-string v0, "OrangeConfigImpl"

    .line 97
    iget-object v1, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "sendFailItems start"

    .line 99
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 102
    iget-object v4, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailUserId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 103
    iget-object v4, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    iget-object v5, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailUserId:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/taobao/orange/aidl/IOrangeApiService;->setUserId(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 104
    iput-object v4, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailUserId:Ljava/lang/String;

    .line 107
    :cond_0
    iget-object v4, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailNamespaces:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 108
    iget-object v4, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    iget-object v5, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailNamespaces:Ljava/util/Set;

    iget-object v6, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailNamespaces:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/taobao/orange/aidl/IOrangeApiService;->addFails([Ljava/lang/String;)V

    .line 110
    :cond_1
    iget-object v4, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailNamespaces:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 112
    iget-object v4, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailListeners:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/orange/aidl/OrangeConfigListenerStub;

    .line 114
    iget-object v8, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/taobao/orange/aidl/OrangeConfigListenerStub;->isAppend()Z

    move-result v10

    invoke-interface {v8, v9, v7, v10}, Lcom/taobao/orange/aidl/IOrangeApiService;->registerListener(Ljava/lang/String;Lcom/taobao/orange/aidl/ParcelableConfigListener;Z)V

    goto :goto_0

    .line 117
    :cond_3
    iget-object v4, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailListeners:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 119
    iget-boolean v4, p0, Lcom/taobao/orange/OrangeConfigImpl;->mIsMainProcess:Z

    if-eqz v4, :cond_4

    .line 120
    iget-object v4, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailCandidates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/orange/OCandidate;

    .line 121
    iget-object v6, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    invoke-virtual {v5}, Lcom/taobao/orange/OCandidate;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/taobao/orange/OCandidate;->getClientVal()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/taobao/orange/OCandidate;->getCompare()Lcom/taobao/orange/aidl/ParcelableCandidateCompare;

    move-result-object v5

    invoke-interface {v6, v7, v8, v5}, Lcom/taobao/orange/aidl/IOrangeApiService;->addCandidate(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/orange/aidl/ParcelableCandidateCompare;)V

    goto :goto_1

    .line 124
    :cond_4
    iget-object v4, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailCandidates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const-string/jumbo v4, "sendFailItems end"

    const/4 v5, 0x2

    .line 125
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "cost"

    aput-object v6, v5, v1

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v0, v4, v5}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 127
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "sendFailItems"

    invoke-static {v0, v3, v2, v1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    .line 434
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "OrangeConfigImpl"

    const-string/jumbo v1, "setAppSecret api is @Deprecated, please set appSecret in init(OConfig config) api"

    invoke-static {v0, v1, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setHosts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 444
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "OrangeConfigImpl"

    const-string/jumbo v1, "setHosts api is @Deprecated, please set probeHosts in init(OConfig config) api"

    invoke-static {v0, v1, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setIndexUpdateMode(I)V
    .locals 2

    const/4 p1, 0x0

    .line 439
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "OrangeConfigImpl"

    const-string/jumbo v1, "setIndexUpdateMode api is @Deprecated, please set indexUpdateMode in init(OConfig config) api"

    invoke-static {v0, v1, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    if-nez v0, :cond_1

    .line 385
    iput-object p1, p0, Lcom/taobao/orange/OrangeConfigImpl;->mFailUserId:Ljava/lang/String;

    goto :goto_0

    .line 388
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    invoke-interface {v0, p1}, Lcom/taobao/orange/aidl/IOrangeApiService;->setUserId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 390
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OrangeConfigImpl"

    const-string/jumbo v2, "setUserId"

    invoke-static {v1, v2, p1, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public unregisterListener([Ljava/lang/String;)V
    .locals 6
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "OrangeConfigImpl"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 344
    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_2

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    if-eqz v2, :cond_1

    .line 350
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 351
    iget-object v5, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    invoke-interface {v5, v4}, Lcom/taobao/orange/aidl/IOrangeApiService;->unregisterListeners(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 354
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "unregisterListeners"

    invoke-static {v0, v2, p1, v1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 357
    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "unregisterListeners fail"

    invoke-static {v0, v1, p1}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 345
    :cond_3
    :goto_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "unregisterListeners error as namespaces is null"

    invoke-static {v0, v1, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public unregisterListener([Ljava/lang/String;Lcom/taobao/orange/OConfigListener;)V
    .locals 7
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "OrangeConfigImpl"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 325
    array-length v2, p1

    if-eqz v2, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    if-eqz v2, :cond_1

    .line 331
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 332
    iget-object v5, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    new-instance v6, Lcom/taobao/orange/aidl/OrangeConfigListenerStub;

    invoke-direct {v6, p2}, Lcom/taobao/orange/aidl/OrangeConfigListenerStub;-><init>(Lcom/taobao/orange/OBaseListener;)V

    invoke-interface {v5, v4, v6}, Lcom/taobao/orange/aidl/IOrangeApiService;->unregisterListener(Ljava/lang/String;Lcom/taobao/orange/aidl/ParcelableConfigListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 335
    new-array p2, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "unregisterListener"

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 338
    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo p2, "unregisterListener fail"

    invoke-static {v0, p2, p1}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 326
    :cond_3
    :goto_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo p2, "unregisterListener error as param null"

    invoke-static {v0, p2, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public unregisterListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
    .locals 7
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "OrangeConfigImpl"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 306
    array-length v2, p1

    if-eqz v2, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 310
    :cond_0
    iget-object v2, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    if-eqz v2, :cond_1

    .line 312
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 313
    iget-object v5, p0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    new-instance v6, Lcom/taobao/orange/aidl/OrangeConfigListenerStub;

    invoke-direct {v6, p2}, Lcom/taobao/orange/aidl/OrangeConfigListenerStub;-><init>(Lcom/taobao/orange/OBaseListener;)V

    invoke-interface {v5, v4, v6}, Lcom/taobao/orange/aidl/IOrangeApiService;->unregisterListener(Ljava/lang/String;Lcom/taobao/orange/aidl/ParcelableConfigListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 316
    new-array p2, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "unregisterListenerV1"

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 319
    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo p2, "unregisterListenerV1 fail"

    invoke-static {v0, p2, p1}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 307
    :cond_3
    :goto_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo p2, "unregisterListenerV1 error as param null"

    invoke-static {v0, p2, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
