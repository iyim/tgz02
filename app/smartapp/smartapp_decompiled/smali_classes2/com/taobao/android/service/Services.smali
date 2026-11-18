.class public Lcom/taobao/android/service/Services;
.super Ljava/lang/Object;
.source "Services.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/service/Services$IBindAsyncCallback;,
        Lcom/taobao/android/service/Services$InvocationOnMainThreadException;
    }
.end annotation


# static fields
.field private static final KNullCompName:Landroid/content/ComponentName;

.field private static final KServiceConnectionTimeout:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "Services"

.field private static final mResolvedServiceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final mResolvedServiceSkipCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static mSetClassLoader:Z

.field private static mSysClassLoader:Ljava/lang/ClassLoader;

.field private static final sAsyncBindingConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static final sClassLoadedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sManagedBridgeBinder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sManagedServiceConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Landroid/content/ServiceConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sPendingUnBindConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sRecyclerSetup:Z

.field private static final sRecyclerSetupLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 603
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/service/Services;->mResolvedServiceCache:Ljava/util/Map;

    .line 604
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/service/Services;->mResolvedServiceSkipCache:Ljava/util/Map;

    .line 606
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/service/Services;->sManagedServiceConnections:Ljava/util/Map;

    .line 608
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/service/Services;->sManagedBridgeBinder:Ljava/util/Map;

    .line 611
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/android/service/Services;->sRecyclerSetupLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 614
    sput-boolean v0, Lcom/taobao/android/service/Services;->mSetClassLoader:Z

    .line 618
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/android/service/Services;->KNullCompName:Landroid/content/ComponentName;

    .line 620
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/service/Services;->sAsyncBindingConnections:Ljava/util/Set;

    .line 621
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/service/Services;->sPendingUnBindConnections:Ljava/util/Set;

    .line 622
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/taobao/android/service/Services;->sClassLoadedSet:Ljava/util/Set;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .line 58
    sget-object v0, Lcom/taobao/android/service/Services;->sClassLoadedSet:Ljava/util/Set;

    return-object v0
.end method

.method private static asInterface(Landroid/os/IBinder;Ljava/lang/Class;)Landroid/os/IInterface;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/os/IBinder;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 573
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 578
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$Stub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x1

    .line 579
    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v3, v2

    const-string v4, "asInterface"

    invoke-virtual {p1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IInterface;

    return-object p0
.end method

.method public static bind(Landroid/content/Context;Ljava/lang/Class;Landroid/content/ServiceConnection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/ServiceConnection;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 224
    invoke-static {p0, p1, v0}, Lcom/taobao/android/service/Services;->buildServiceIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No matched service for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Services"

    invoke-static {p1, p0}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 230
    :cond_0
    invoke-static {p2}, Lcom/taobao/android/service/LocalAidlServices;->checkConnectionExist(Landroid/content/ServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 236
    :try_start_0
    invoke-static {p0, v1, p2}, Lcom/taobao/android/service/LocalAidlServices;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0, v1, p2, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :catch_0
    :cond_2
    return v0

    .line 231
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Call bind() with same ServiceConnection instance"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bindAsync(Landroid/content/Context;Ljava/lang/Class;Landroid/content/ServiceConnection;Lcom/taobao/android/service/Services$IBindAsyncCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/ServiceConnection;",
            "Lcom/taobao/android/service/Services$IBindAsyncCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 249
    invoke-static {p0, p1, v0}, Lcom/taobao/android/service/Services;->buildServiceIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;

    move-result-object v9

    const-string v1, "Services"

    if-nez v9, :cond_0

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No matched service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/android/modular/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v1, Lcom/taobao/android/exception/BindException;

    const/4 v2, -0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unfind service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/taobao/android/exception/BindException;-><init>(ILjava/lang/String;)V

    invoke-static {p0, p3, v1, p2, v0}, Lcom/taobao/android/service/Services;->processBindResultCallback(Landroid/content/Context;Lcom/taobao/android/service/Services$IBindAsyncCallback;Lcom/taobao/android/exception/BindException;Landroid/content/ServiceConnection;Z)V

    return-void

    .line 257
    :cond_0
    invoke-static {p2}, Lcom/taobao/android/service/LocalAidlServices;->checkConnectionExist(Landroid/content/ServiceConnection;)Z

    move-result v2

    const/4 v10, 0x1

    if-eqz v2, :cond_1

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call bind() with same ServiceConnection instance "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/android/modular/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance p1, Lcom/taobao/android/exception/BindException;

    const/4 v0, -0x1

    const-string v1, "Call bind() with same ServiceConnection instance"

    invoke-direct {p1, v0, v1}, Lcom/taobao/android/exception/BindException;-><init>(ILjava/lang/String;)V

    invoke-static {p0, p3, p1, p2, v10}, Lcom/taobao/android/service/Services;->processBindResultCallback(Landroid/content/Context;Lcom/taobao/android/service/Services$IBindAsyncCallback;Lcom/taobao/android/exception/BindException;Landroid/content/ServiceConnection;Z)V

    return-void

    .line 264
    :cond_1
    sget-object v2, Lcom/taobao/android/service/Services;->sAsyncBindingConnections:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceConnection is connecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/android/modular/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance p1, Lcom/taobao/android/exception/BindException;

    const/4 v1, -0x3

    const-string v2, "ServiceConnection is connecting"

    invoke-direct {p1, v1, v2}, Lcom/taobao/android/exception/BindException;-><init>(ILjava/lang/String;)V

    invoke-static {p0, p3, p1, p2, v0}, Lcom/taobao/android/service/Services;->processBindResultCallback(Landroid/content/Context;Lcom/taobao/android/service/Services$IBindAsyncCallback;Lcom/taobao/android/exception/BindException;Landroid/content/ServiceConnection;Z)V

    return-void

    .line 272
    :cond_2
    sget-object v1, Lcom/taobao/android/service/Services;->sClassLoadedSet:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 275
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 276
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/android/service/LocalAidlServices;->isServiceLoaded(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 279
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 280
    new-instance v0, Lcom/taobao/android/service/Services$1;

    const-string v2, "load class"

    move-object v1, v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/taobao/android/service/Services$1;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Lcom/taobao/android/service/Services$IBindAsyncCallback;Landroid/content/ServiceConnection;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/taobao/android/service/Services$1;->start()V

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_4

    .line 316
    invoke-static {p0, v9, p2, p3}, Lcom/taobao/android/service/Services;->bindAsyncSerivceWithResult(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;Lcom/taobao/android/service/Services$IBindAsyncCallback;)V

    :cond_4
    return-void
.end method

.method static bindAsyncSerivceWithResult(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;Lcom/taobao/android/service/Services$IBindAsyncCallback;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 323
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/taobao/android/service/LocalAidlServices;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    .line 326
    new-instance p1, Lcom/taobao/android/exception/BindException;

    const/4 v2, -0x6

    const-string v3, "bind service return false"

    invoke-direct {p1, v2, v3}, Lcom/taobao/android/exception/BindException;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    move-object p1, v1

    .line 333
    :goto_2
    invoke-static {p0, p3, p1, p2, v0}, Lcom/taobao/android/service/Services;->processBindResultCallback(Landroid/content/Context;Lcom/taobao/android/service/Services$IBindAsyncCallback;Lcom/taobao/android/exception/BindException;Landroid/content/ServiceConnection;Z)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 331
    :try_start_1
    new-instance v2, Lcom/taobao/android/exception/BindException;

    const/4 v3, -0x5

    const-string v4, "bind service error"

    invoke-direct {v2, v3, v4, p1}, Lcom/taobao/android/exception/BindException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 329
    new-instance v2, Lcom/taobao/android/exception/BindException;

    const/4 v3, -0x2

    const-string v4, "class not found"

    invoke-direct {v2, v3, v4, p1}, Lcom/taobao/android/exception/BindException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    :goto_3
    invoke-static {p0, p3, v2, p2, v0}, Lcom/taobao/android/service/Services;->processBindResultCallback(Landroid/content/Context;Lcom/taobao/android/service/Services$IBindAsyncCallback;Lcom/taobao/android/exception/BindException;Landroid/content/ServiceConnection;Z)V

    :goto_4
    return-void

    :goto_5
    invoke-static {p0, p3, v1, p2, v0}, Lcom/taobao/android/service/Services;->processBindResultCallback(Landroid/content/Context;Lcom/taobao/android/service/Services$IBindAsyncCallback;Lcom/taobao/android/exception/BindException;Landroid/content/ServiceConnection;Z)V

    throw p1
.end method

.method private static buildServiceIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "Services"

    const-string p1, "Context shouldn\'t null"

    .line 427
    invoke-static {p0, p1}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 431
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 432
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-static {p0}, Lcom/taobao/android/internal/RuntimeGlobals;->isMultiPackageMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 434
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p2, :cond_2

    .line 435
    sget-object v3, Lcom/taobao/android/service/Services;->mResolvedServiceSkipCache:Ljava/util/Map;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/taobao/android/service/Services;->mResolvedServiceCache:Ljava/util/Map;

    :goto_0
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 436
    sget-object v4, Lcom/taobao/android/service/Services;->KNullCompName:Landroid/content/ComponentName;

    if-ne v3, v4, :cond_3

    return-object v0

    :cond_3
    if-nez v3, :cond_6

    .line 438
    invoke-static {p0, v1, v2, p2}, Lcom/taobao/android/service/Services;->resolveServiceIntent(Landroid/content/Context;Landroid/content/Intent;ZZ)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_4

    .line 439
    sget-object p0, Lcom/taobao/android/service/Services;->KNullCompName:Landroid/content/ComponentName;

    :cond_4
    move-object v3, p0

    if-eqz p2, :cond_5

    .line 441
    sget-object p0, Lcom/taobao/android/service/Services;->mResolvedServiceSkipCache:Ljava/util/Map;

    invoke-interface {p0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 443
    :cond_5
    sget-object p0, Lcom/taobao/android/service/Services;->mResolvedServiceCache:Ljava/util/Map;

    invoke-interface {p0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_6
    :goto_1
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1
.end method

.method static cleanupBridgeBinderOnActivityDestroyed(Landroid/app/Activity;)V
    .locals 6

    const-string v0, "Services"

    .line 552
    sget-object v1, Lcom/taobao/android/service/Services;->sManagedBridgeBinder:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 553
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 554
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 555
    invoke-static {p0}, Lcom/taobao/android/service/AidlBridgeService;->peekMe(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 558
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cleanupBridgeBinderOnActivityDestroyed :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {v3}, Lcom/taobao/android/modular/IAidlServiceBridge$Stub;->asInterface(Landroid/os/IBinder;)Lcom/taobao/android/modular/IAidlServiceBridge;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/taobao/android/modular/IAidlServiceBridge;->unbindService(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unbind bridge binder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method static cleanupOnActivityDestroyed(Landroid/app/Activity;)V
    .locals 5

    .line 541
    sget-object v0, Lcom/taobao/android/service/Services;->sManagedServiceConnections:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 542
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 543
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    .line 545
    :try_start_0
    invoke-static {p0, v1}, Lcom/taobao/android/service/Services;->unbind(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unbind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Services"

    invoke-static {v3, v1, v2}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static ensureRecyclerSetup(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 381
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-gt v0, v1, :cond_0

    return-void

    .line 382
    :cond_0
    sget-boolean v0, Lcom/taobao/android/service/Services;->sRecyclerSetup:Z

    if-eqz v0, :cond_1

    return-void

    .line 383
    :cond_1
    sget-object v0, Lcom/taobao/android/service/Services;->sRecyclerSetupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    sget-boolean v1, Lcom/taobao/android/service/Services;->sRecyclerSetup:Z

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    .line 386
    :cond_2
    invoke-static {p0}, Lcom/taobao/android/service/Services;->findApplication(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p0

    .line 387
    new-instance v1, Lcom/taobao/android/service/Services$2;

    invoke-direct {v1}, Lcom/taobao/android/service/Services$2;-><init>()V

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p0, 0x1

    .line 401
    sput-boolean p0, Lcom/taobao/android/service/Services;->sRecyclerSetup:Z

    .line 402
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static equal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 518
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static findActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 406
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    nop

    nop

    return-object p0

    .line 407
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    nop

    nop

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/android/service/Services;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findApplication(Landroid/content/Context;)Landroid/app/Application;
    .locals 3

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 413
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 414
    nop

    nop

    return-object v0

    .line 415
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 416
    nop

    nop

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    return-object p0

    .line 417
    :cond_1
    instance-of v0, p0, Landroid/app/Service;

    if-eqz v0, :cond_2

    .line 418
    nop

    nop

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p0

    return-object p0

    .line 419
    :cond_2
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_3

    .line 420
    nop

    nop

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/android/service/Services;->findApplication(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p0

    return-object p0

    .line 421
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find application from context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Landroid/app/Activity;Ljava/lang/Class;)Landroid/os/IInterface;
    .locals 0
    .annotation build Lcom/taobao/android/annotation/NonMainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 72
    invoke-static {p0, p1}, Lcom/taobao/android/service/Services;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/Class;)Landroid/os/IInterface;
    .locals 6
    .annotation build Lcom/taobao/android/annotation/NonMainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_d

    if-eqz p1, :cond_c

    .line 85
    const-class v0, Lcom/taobao/android/modular/IAidlServiceBridge;

    const-string v1, "Services"

    if-ne p1, v0, :cond_1

    .line 86
    invoke-static {p0}, Lcom/taobao/android/service/AidlBridgeService;->peekMe(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {v0}, Lcom/taobao/android/modular/IAidlServiceBridge$Stub;->asInterface(Landroid/os/IBinder;)Lcom/taobao/android/modular/IAidlServiceBridge;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "AIDL Service Bridge is not ready"

    invoke-static {v1, v2, v0}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    .line 92
    invoke-static {p0, p1, v0}, Lcom/taobao/android/service/Services;->buildServiceIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No matched service for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 98
    :cond_2
    invoke-static {p0}, Lcom/taobao/android/service/Services;->ensureRecyclerSetup(Landroid/content/Context;)V

    .line 99
    new-instance v3, Lcom/taobao/android/service/ManagedServiceConnection;

    invoke-direct {v3}, Lcom/taobao/android/service/ManagedServiceConnection;-><init>()V

    .line 102
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/taobao/android/service/AidlBridgeService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    .line 103
    invoke-static {p0}, Lcom/taobao/android/service/AidlBridgeService;->peekMe(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p1, "Find AidlBridgeService null in other process"

    .line 106
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p0, v3}, Lcom/taobao/android/service/AidlBridgeService;->init(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    return-object v2

    .line 112
    :cond_3
    :try_start_0
    invoke-static {v0}, Lcom/taobao/android/modular/IAidlServiceBridge$Stub;->asInterface(Landroid/os/IBinder;)Lcom/taobao/android/modular/IAidlServiceBridge;

    move-result-object v0

    invoke-static {p0, p1, v5}, Lcom/taobao/android/service/Services;->buildServiceIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/taobao/android/modular/IAidlServiceBridge;->bindService(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 114
    invoke-static {p0}, Lcom/taobao/android/service/Services;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 116
    sget-object v2, Lcom/taobao/android/service/Services;->sManagedBridgeBinder:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_4

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    sget-object v3, Lcom/taobao/android/service/Services;->sManagedBridgeBinder:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_5
    invoke-static {v0, p1}, Lcom/taobao/android/service/Services;->asInterface(Landroid/os/IBinder;Ljava/lang/Class;)Landroid/os/IInterface;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to binder to real interface in bridge mode with name is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 134
    :cond_6
    :try_start_1
    invoke-static {p0, v0, v3}, Lcom/taobao/android/service/LocalAidlServices;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    if-nez v4, :cond_8

    .line 141
    invoke-static {}, Lcom/taobao/android/internal/RuntimeGlobals;->isMainThread()Z

    move-result v4

    if-nez v4, :cond_7

    .line 142
    invoke-virtual {p0, v0, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind service: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :try_start_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unnecessary unbinding due to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    .line 141
    :cond_7
    new-instance p0, Lcom/taobao/android/service/Services$InvocationOnMainThreadException;

    invoke-direct {p0}, Lcom/taobao/android/service/Services$InvocationOnMainThreadException;-><init>()V

    throw p0

    .line 153
    :cond_8
    invoke-static {p0}, Lcom/taobao/android/service/Services;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 155
    sget-object v0, Lcom/taobao/android/service/Services;->sManagedServiceConnections:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_9

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    sget-object v4, Lcom/taobao/android/service/Services;->sManagedServiceConnections:Ljava/util/Map;

    invoke-interface {v4, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const-wide/16 v4, 0x2710

    .line 165
    :try_start_3
    invoke-virtual {v3, v4, v5}, Lcom/taobao/android/service/ManagedServiceConnection;->waitUntilConnected(J)Landroid/os/IBinder;

    move-result-object p0
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_6

    .line 176
    :try_start_4
    invoke-static {p0, p1}, Lcom/taobao/android/service/Services;->asInterface(Landroid/os/IBinder;Ljava/lang/Class;)Landroid/os/IInterface;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    .line 188
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_b

    nop

    nop

    throw p1

    .line 189
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to cast binder to interface, NoSuchMethodException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to cast binder to interface, IllegalAccessException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to cast binder to interface, ClassNotFoundException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_6
    const-string p0, "Service connection interrupted."

    .line 170
    invoke-static {v1, p0}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 167
    :catch_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Service connection timeout: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :catch_8
    return-object v2

    .line 83
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Service interface is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSystemClassloader()Ljava/lang/ClassLoader;
    .locals 1

    .line 596
    sget-object v0, Lcom/taobao/android/service/Services;->mSysClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static processBindResultCallback(Landroid/content/Context;Lcom/taobao/android/service/Services$IBindAsyncCallback;Lcom/taobao/android/exception/BindException;Landroid/content/ServiceConnection;Z)V
    .locals 1

    if-eqz p4, :cond_0

    .line 340
    sget-object v0, Lcom/taobao/android/service/Services;->sAsyncBindingConnections:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 344
    invoke-interface {p1, p2}, Lcom/taobao/android/service/Services$IBindAsyncCallback;->onBindResult(Lcom/taobao/android/exception/BindException;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "Services"

    const-string v0, "bind exception"

    .line 347
    invoke-static {p1, v0, p2}, Lcom/taobao/android/modular/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 352
    sget-object p1, Lcom/taobao/android/service/Services;->sPendingUnBindConnections:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 353
    invoke-static {p0, p3}, Lcom/taobao/android/service/Services;->unbind(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_3
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static procname(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 522
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    :try_start_0
    const-string v1, "activity"

    .line 525
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 527
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 529
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    .line 530
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static resolveServiceIntent(Landroid/content/Context;Landroid/content/Intent;ZZ)Landroid/content/ComponentName;
    .locals 10

    .line 450
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 452
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 453
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 456
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 457
    const-class v5, Lcom/taobao/android/service/AidlBridgeService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v3, v3, -0x1

    .line 459
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {p0}, Lcom/taobao/android/service/Services;->procname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/android/service/Services;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p3, :cond_3

    .line 460
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    const/4 v4, 0x1

    const-string v5, ">> "

    const-string v6, "/"

    const-string v7, "Services"

    if-le v3, v4, :cond_a

    .line 465
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 466
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p2, :cond_4

    .line 469
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Find one more, use >> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance p0, Landroid/content/ComponentName;

    iget-object p1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 475
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolve more than one service for "

    .line 476
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_6

    const-string p1, " -s "

    .line 479
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz p2, :cond_7

    const-string p1, " -d "

    .line 480
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string p1, " [p:"

    .line 482
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 485
    iget-object p2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p2, :cond_8

    .line 486
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 488
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-nez p2, :cond_b

    .line 492
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 493
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 498
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 499
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-le v3, v4, :cond_d

    .line 501
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_d
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v8, p2, :cond_c

    .line 503
    new-instance p0, Landroid/content/ComponentName;

    iget-object p1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 506
    :cond_e
    invoke-static {p0}, Lcom/taobao/android/service/Services;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 507
    new-instance p3, Lcom/taobao/android/service/Services$3;

    invoke-direct {p3, p0, p1}, Lcom/taobao/android/service/Services$3;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 511
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Potential mismatched service for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 513
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_10
    return-object v2
.end method

.method public static setSystemClassloader(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 589
    sget-boolean v0, Lcom/taobao/android/service/Services;->mSetClassLoader:Z

    if-eqz v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 591
    :cond_0
    sput-object p0, Lcom/taobao/android/service/Services;->mSysClassLoader:Ljava/lang/ClassLoader;

    const/4 p0, 0x1

    .line 592
    sput-boolean p0, Lcom/taobao/android/service/Services;->mSetClassLoader:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static unBindAsync(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 1

    .line 361
    sget-object v0, Lcom/taobao/android/service/Services;->sAsyncBindingConnections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    sget-object p0, Lcom/taobao/android/service/Services;->sPendingUnBindConnections:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    :cond_0
    sget-object v0, Lcom/taobao/android/service/Services;->sPendingUnBindConnections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 365
    invoke-static {p0, p1}, Lcom/taobao/android/service/Services;->unbind(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static unbind(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 1

    .line 371
    invoke-static {p0, p1}, Lcom/taobao/android/service/LocalAidlServices;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already unbound: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Services"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static unget(Landroid/content/Context;Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0xb

    if-lt p0, p1, :cond_0

    const-string p0, "deprecation"

    invoke-static {p0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
