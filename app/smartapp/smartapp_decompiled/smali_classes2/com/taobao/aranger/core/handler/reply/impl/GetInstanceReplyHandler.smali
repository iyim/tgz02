.class public Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;
.super Lcom/taobao/aranger/core/handler/reply/BaseReplyHandler;
.source "GetInstanceReplyHandler.java"


# static fields
.field private static final sProxyMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGetInstanceMethod:Ljava/lang/reflect/Method;

.field private mService:Ljava/lang/Object;

.field private final mServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mServiceProxyConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private mSingleId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->sProxyMap:Ljava/util/concurrent/ConcurrentHashMap;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/taobao/aranger/core/entity/Call;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/taobao/aranger/core/handler/reply/BaseReplyHandler;-><init>(Lcom/taobao/aranger/core/entity/Call;)V

    .line 40
    invoke-static {}, Lcom/taobao/aranger/utils/TypeCenter;->getInstance()Lcom/taobao/aranger/utils/TypeCenter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getServiceWrapper()Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/aranger/utils/TypeCenter;->getClassType(Lcom/taobao/aranger/core/wrapper/BaseWrapper;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mServiceClass:Ljava/lang/Class;

    .line 41
    sget-object v0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->sProxyMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mService:Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mService:Ljava/lang/Object;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 48
    :try_start_0
    invoke-static {}, Lcom/taobao/aranger/utils/TypeCenter;->getInstance()Lcom/taobao/aranger/utils/TypeCenter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "$$IPCProxy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/taobao/aranger/utils/TypeCenter;->getClassType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getMethodWrapper()Lcom/taobao/aranger/core/wrapper/MethodWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/aranger/core/wrapper/MethodWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getParameterWrappers()[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/aranger/utils/TypeUtils;->getMethodId(Ljava/lang/String;[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mSingleId:Ljava/lang/String;

    .line 56
    new-array p1, v2, [Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/taobao/aranger/utils/TypeUtils;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mServiceProxyConstructor:Ljava/lang/reflect/Constructor;

    goto :goto_1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getMethodWrapper()Lcom/taobao/aranger/core/wrapper/MethodWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/aranger/core/wrapper/MethodWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/taobao/aranger/utils/TypeCenter;->getInstance()Lcom/taobao/aranger/utils/TypeCenter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getParameterWrappers()[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/taobao/aranger/utils/TypeCenter;->getClassTypes([Lcom/taobao/aranger/core/wrapper/ParameterWrapper;)[Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/taobao/aranger/utils/TypeUtils;->getMethodForGettingInstance(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mGetInstanceMethod:Ljava/lang/reflect/Method;

    .line 59
    iget-object p1, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mGetInstanceMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 60
    :cond_1
    new-instance p1, Lcom/taobao/aranger/exception/IPCException;

    const/16 v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mGetInstanceMethod:Ljava/lang/reflect/Method;

    .line 61
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not static. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Only the static method can be invoked to get an instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mService:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mServiceProxyConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mServiceProxyConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mService:Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mService:Ljava/lang/Object;

    check-cast v0, Lcom/taobao/aranger/intf/IServiceProxy;

    iget-object v2, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mSingleId:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/taobao/aranger/intf/IServiceProxy;->create(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mGetInstanceMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mService:Ljava/lang/Object;

    .line 78
    :goto_0
    sget-object p1, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->sProxyMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mService:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_1
    invoke-static {}, Lcom/taobao/aranger/utils/ServiceCenter;->getInstance()Lcom/taobao/aranger/utils/ServiceCenter;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mCall:Lcom/taobao/aranger/core/entity/Call;

    invoke-virtual {v0}, Lcom/taobao/aranger/core/entity/Call;->getServiceWrapper()Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/aranger/core/handler/reply/impl/GetInstanceReplyHandler;->mService:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lcom/taobao/aranger/utils/ServiceCenter;->putService(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 83
    instance-of v0, p1, Lcom/taobao/aranger/exception/IPCException;

    if-eqz v0, :cond_2

    .line 84
    nop

    nop

    throw p1

    .line 86
    :cond_2
    new-instance v0, Lcom/taobao/aranger/exception/IPCException;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p1}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method
