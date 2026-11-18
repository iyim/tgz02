.class public Lcom/taobao/aranger/core/handler/reply/impl/NewInstanceReplyHandler;
.super Lcom/taobao/aranger/core/handler/reply/BaseReplyHandler;
.source "NewInstanceReplyHandler.java"


# instance fields
.field private mConstructorId:Ljava/lang/String;

.field private mDefaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
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


# direct methods
.method public constructor <init>(Lcom/taobao/aranger/core/entity/Call;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/taobao/aranger/core/handler/reply/BaseReplyHandler;-><init>(Lcom/taobao/aranger/core/entity/Call;)V

    .line 32
    invoke-static {}, Lcom/taobao/aranger/utils/TypeCenter;->getInstance()Lcom/taobao/aranger/utils/TypeCenter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getServiceWrapper()Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/aranger/utils/TypeCenter;->getClassType(Lcom/taobao/aranger/core/wrapper/BaseWrapper;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    :try_start_0
    invoke-static {}, Lcom/taobao/aranger/utils/TypeCenter;->getInstance()Lcom/taobao/aranger/utils/TypeCenter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$$IPCProxy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/aranger/utils/TypeCenter;->getClassType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getParameterWrappers()[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/aranger/utils/TypeUtils;->getMethodId(Ljava/lang/String;[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/handler/reply/impl/NewInstanceReplyHandler;->mConstructorId:Ljava/lang/String;

    .line 45
    new-array p1, v1, [Ljava/lang/Class;

    invoke-static {v2, p1}, Lcom/taobao/aranger/utils/TypeUtils;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/handler/reply/impl/NewInstanceReplyHandler;->mServiceProxyConstructor:Ljava/lang/reflect/Constructor;

    goto :goto_1

    .line 47
    :cond_0
    invoke-static {}, Lcom/taobao/aranger/utils/TypeCenter;->getInstance()Lcom/taobao/aranger/utils/TypeCenter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getParameterWrappers()[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/taobao/aranger/utils/TypeCenter;->getClassTypes([Lcom/taobao/aranger/core/wrapper/ParameterWrapper;)[Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/aranger/utils/TypeUtils;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/handler/reply/impl/NewInstanceReplyHandler;->mDefaultConstructor:Ljava/lang/reflect/Constructor;

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

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/NewInstanceReplyHandler;->mServiceProxyConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/NewInstanceReplyHandler;->mServiceProxyConstructor:Ljava/lang/reflect/Constructor;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    move-object v1, v0

    check-cast v1, Lcom/taobao/aranger/intf/IServiceProxy;

    iget-object v2, p0, Lcom/taobao/aranger/core/handler/reply/impl/NewInstanceReplyHandler;->mConstructorId:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/taobao/aranger/intf/IServiceProxy;->create(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 62
    iget-object p1, p0, Lcom/taobao/aranger/core/handler/reply/impl/NewInstanceReplyHandler;->mDefaultConstructor:Ljava/lang/reflect/Constructor;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/NewInstanceReplyHandler;->mDefaultConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    :goto_0
    invoke-static {}, Lcom/taobao/aranger/utils/ServiceCenter;->getInstance()Lcom/taobao/aranger/utils/ServiceCenter;

    move-result-object p1

    iget-object v1, p0, Lcom/taobao/aranger/core/handler/reply/impl/NewInstanceReplyHandler;->mCall:Lcom/taobao/aranger/core/entity/Call;

    invoke-virtual {v1}, Lcom/taobao/aranger/core/entity/Call;->getServiceWrapper()Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/taobao/aranger/utils/ServiceCenter;->putService(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 70
    instance-of v0, p1, Lcom/taobao/aranger/exception/IPCException;

    if-eqz v0, :cond_2

    .line 71
    nop

    nop

    throw p1

    .line 73
    :cond_2
    new-instance v0, Lcom/taobao/aranger/exception/IPCException;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p1}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method
