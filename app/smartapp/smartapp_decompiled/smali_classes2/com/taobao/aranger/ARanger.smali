.class public Lcom/taobao/aranger/ARanger;
.super Ljava/lang/Object;
.source "ARanger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ARanger"

.field private static volatile sApplication:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static connect(Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 213
    invoke-static {p0}, Lcom/taobao/aranger/utils/TypeUtils;->validateComponentName(Landroid/content/ComponentName;)V

    .line 214
    invoke-static {p0}, Lcom/taobao/aranger/utils/IPCUtils;->queryContentAuthorityFromProvider(Landroid/content/ComponentName;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/aranger/core/ipc/ChannelManager;->getRemoteChannel(Landroid/net/Uri;)Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->connect()V

    return-void
.end method

.method public static varargs create(Landroid/content/ComponentName;Ljava/lang/Class;[Landroid/util/Pair;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Landroid/util/Pair;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 115
    invoke-static {p0, v0, p1, p2}, Lcom/taobao/aranger/ARanger;->create(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;[Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs create(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;[Landroid/util/Pair;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Landroid/util/Pair;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 129
    invoke-static {p0, p1, p2}, Lcom/taobao/aranger/ARanger;->validate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 130
    invoke-static {p0, p1, p2, v0, p3}, Lcom/taobao/aranger/ARanger;->createProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static varargs createProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Landroid/util/Pair;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 296
    invoke-static {p0}, Lcom/taobao/aranger/utils/IPCUtils;->queryContentAuthorityFromProvider(Landroid/content/ComponentName;)Landroid/net/Uri;

    move-result-object p0

    .line 298
    invoke-static {}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper;->obtain()Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    move-result-object v0

    .line 299
    invoke-static {}, Lcom/taobao/aranger/utils/TimeStampGenerator;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper;->setTimeStamp(Ljava/lang/String;)Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    move-result-object v0

    .line 300
    invoke-virtual {v0, p2}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper;->setServiceInterfaceClass(Ljava/lang/Class;)Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    move-result-object v0

    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class p1, Lcom/taobao/aranger/annotation/type/ServiceName;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/taobao/aranger/annotation/type/ServiceName;

    invoke-interface {p1}, Lcom/taobao/aranger/annotation/type/ServiceName;->value()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper;->setServiceName(Ljava/lang/String;)Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 302
    :goto_0
    invoke-virtual {p1, v0}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper;->setType(I)Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    move-result-object p1

    .line 304
    invoke-static {p4}, Lcom/taobao/aranger/utils/ParameterTransformer;->wrapperParameters([Landroid/util/Pair;)[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    move-result-object p4

    if-nez p3, :cond_2

    .line 306
    invoke-static {}, Lcom/taobao/aranger/core/wrapper/MethodWrapper;->obtain()Lcom/taobao/aranger/core/wrapper/MethodWrapper;

    move-result-object p3

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/taobao/aranger/core/wrapper/MethodWrapper;->obtain()Lcom/taobao/aranger/core/wrapper/MethodWrapper;

    move-result-object v0

    .line 307
    invoke-virtual {v0, p3}, Lcom/taobao/aranger/core/wrapper/MethodWrapper;->setMethodName(Ljava/lang/String;)Lcom/taobao/aranger/core/wrapper/MethodWrapper;

    move-result-object p3

    .line 310
    :goto_1
    invoke-static {}, Lcom/taobao/aranger/core/entity/Call;->obtain()Lcom/taobao/aranger/core/entity/Call;

    move-result-object v0

    .line 311
    invoke-virtual {v0, p2}, Lcom/taobao/aranger/core/entity/Call;->setVoid(Z)Lcom/taobao/aranger/core/entity/Call;

    move-result-object p2

    .line 312
    invoke-virtual {p2, p1}, Lcom/taobao/aranger/core/entity/Call;->setServiceWrapper(Lcom/taobao/aranger/core/wrapper/ServiceWrapper;)Lcom/taobao/aranger/core/entity/Call;

    move-result-object p1

    .line 313
    invoke-virtual {p1, p3}, Lcom/taobao/aranger/core/entity/Call;->setMethodWrapper(Lcom/taobao/aranger/core/wrapper/MethodWrapper;)Lcom/taobao/aranger/core/entity/Call;

    move-result-object p1

    .line 314
    invoke-virtual {p1, p4}, Lcom/taobao/aranger/core/entity/Call;->setParameterWrappers([Lcom/taobao/aranger/core/wrapper/ParameterWrapper;)Lcom/taobao/aranger/core/entity/Call;

    move-result-object p1

    .line 315
    invoke-virtual {p1, p0}, Lcom/taobao/aranger/core/entity/Call;->setRemoteProviderUri(Landroid/net/Uri;)Lcom/taobao/aranger/core/entity/Call;

    move-result-object p1

    .line 317
    invoke-static {p0}, Lcom/taobao/aranger/core/ipc/ChannelManager;->getRemoteChannel(Landroid/net/Uri;)Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->sendCall(Lcom/taobao/aranger/core/entity/Call;)Lcom/taobao/aranger/core/entity/Reply;

    .line 319
    invoke-static {p1}, Lcom/taobao/aranger/ARanger;->getProxy(Lcom/taobao/aranger/core/entity/Call;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static varargs createProxyByMethodName(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Landroid/util/Pair;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 278
    invoke-static {p0, p1, p2}, Lcom/taobao/aranger/ARanger;->validate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;)V

    .line 279
    invoke-static {p0, p1, p2, p3, p4}, Lcom/taobao/aranger/ARanger;->createProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createSingleton(Landroid/content/ComponentName;Ljava/lang/Class;Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Landroid/util/Pair;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    invoke-static {p0, v0, p1, p2, p3}, Lcom/taobao/aranger/ARanger;->createProxyByMethodName(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createSingleton(Landroid/content/ComponentName;Ljava/lang/Class;[Landroid/util/Pair;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Landroid/util/Pair;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "getInstance"

    .line 146
    invoke-static {p0, v0, p1, v1, p2}, Lcom/taobao/aranger/ARanger;->createProxyByMethodName(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createSingleton(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 189
    invoke-static {p0, p1, p2, p3, p4}, Lcom/taobao/aranger/ARanger;->createProxyByMethodName(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createSingleton(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;[Landroid/util/Pair;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Landroid/util/Pair;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    const-string v0, "getInstance"

    .line 160
    invoke-static {p0, p1, p2, v0, p3}, Lcom/taobao/aranger/ARanger;->createProxyByMethodName(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static debug(Z)V
    .locals 0

    xor-int/lit8 p0, p0, 0x1

    .line 200
    invoke-static {p0}, Lcom/taobao/aranger/logs/IPCLog;->setUseTlog(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getContext()Landroid/content/Context;
    .locals 6

    .line 51
    sget-object v0, Lcom/taobao/aranger/ARanger;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_4

    .line 52
    const-class v0, Lcom/taobao/aranger/ARanger;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/taobao/aranger/ARanger;->sApplication:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 56
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    sput-object v2, Lcom/taobao/aranger/ARanger;->sApplication:Landroid/app/Application;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 61
    :try_start_2
    sget-object v3, Lcom/taobao/aranger/ARanger;->TAG:Ljava/lang/String;

    const-string v4, "[getContext][currentActivityThread]"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/aranger/logs/IPCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 65
    :cond_0
    :goto_0
    sget-object v2, Lcom/taobao/aranger/ARanger;->sApplication:Landroid/app/Application;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1

    .line 67
    :try_start_3
    const-class v2, Landroid/app/ActivityThread;

    const-string v3, "currentActivityThread"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/taobao/aranger/utils/ReflectUtils;->getHideMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 69
    const-class v3, Landroid/app/ActivityThread;

    const-string v4, "getApplication"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/taobao/aranger/utils/ReflectUtils;->getHideMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 71
    const-class v4, Landroid/app/ActivityThread;

    new-array v5, v1, [Ljava/lang/Object;

    .line 72
    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    .line 71
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    sput-object v2, Lcom/taobao/aranger/ARanger;->sApplication:Landroid/app/Application;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    .line 74
    :try_start_4
    sget-object v3, Lcom/taobao/aranger/ARanger;->TAG:Ljava/lang/String;

    const-string v4, "[getContext][invoke]"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/aranger/logs/IPCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 79
    :cond_1
    :goto_1
    sget-object v2, Lcom/taobao/aranger/ARanger;->sApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcom/taobao/aranger/ARanger;->debug(Z)V

    .line 81
    :cond_3
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 84
    :cond_4
    :goto_2
    sget-object v0, Lcom/taobao/aranger/ARanger;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method private static getProxy(Lcom/taobao/aranger/core/entity/Call;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/taobao/aranger/core/entity/Call;",
            ")TT;"
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Lcom/taobao/aranger/core/entity/Call;->getServiceWrapper()Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    move-result-object v0

    .line 331
    invoke-virtual {p0}, Lcom/taobao/aranger/core/entity/Call;->getRemoteProviderUri()Landroid/net/Uri;

    move-result-object p0

    .line 333
    invoke-virtual {v0}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper;->getServiceInterfaceClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper;->getServiceInterfaceClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/taobao/aranger/core/handler/invoc/MethodInvocationHandler;

    invoke-direct {v3, v0, p0}, Lcom/taobao/aranger/core/handler/invoc/MethodInvocationHandler;-><init>(Lcom/taobao/aranger/core/wrapper/ServiceWrapper;Landroid/net/Uri;)V

    .line 332
    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 336
    invoke-static {}, Lcom/taobao/aranger/utils/IPCRecycle;->getInstance()Lcom/taobao/aranger/utils/IPCRecycle;

    move-result-object v2

    invoke-virtual {v0}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v1, v0}, Lcom/taobao/aranger/utils/IPCRecycle;->register(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1
    .param p0    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 94
    sget-object v0, Lcom/taobao/aranger/ARanger;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    sput-object p0, Lcom/taobao/aranger/ARanger;->sApplication:Landroid/app/Application;

    .line 100
    sget-object p0, Lcom/taobao/aranger/ARanger;->sApplication:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/taobao/aranger/ARanger;->debug(Z)V

    return-void
.end method

.method public static isConnect(Landroid/content/ComponentName;)Z
    .locals 0

    .line 225
    :try_start_0
    invoke-static {p0}, Lcom/taobao/aranger/utils/TypeUtils;->validateComponentName(Landroid/content/ComponentName;)V

    .line 226
    invoke-static {p0}, Lcom/taobao/aranger/utils/IPCUtils;->isProcessAlive(Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static registerProcessStateListener(Lcom/taobao/aranger/intf/ProcessStateListener;)V
    .locals 1
    .param p0    # Lcom/taobao/aranger/intf/ProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 240
    invoke-static {}, Lcom/taobao/aranger/utils/CallbackManager;->getInstance()Lcom/taobao/aranger/utils/CallbackManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/aranger/utils/CallbackManager;->registerProcessStateListener(Lcom/taobao/aranger/intf/ProcessStateListener;)V

    return-void
.end method

.method public static unRegisterProcessStateListener(Lcom/taobao/aranger/intf/ProcessStateListener;)V
    .locals 1
    .param p0    # Lcom/taobao/aranger/intf/ProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 248
    invoke-static {}, Lcom/taobao/aranger/utils/CallbackManager;->getInstance()Lcom/taobao/aranger/utils/CallbackManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/aranger/utils/CallbackManager;->unRegisterProcessStateListener(Lcom/taobao/aranger/intf/ProcessStateListener;)V

    return-void
.end method

.method private static validate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 262
    invoke-static {p1, p2}, Lcom/taobao/aranger/utils/TypeUtils;->validateServiceInterface(Ljava/lang/String;Ljava/lang/Class;)V

    .line 263
    invoke-static {p0}, Lcom/taobao/aranger/utils/TypeUtils;->validateComponentName(Landroid/content/ComponentName;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
