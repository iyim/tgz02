.class public Lcom/taobao/aranger/core/handler/reply/impl/MethodInvokeReplyHandler;
.super Lcom/taobao/aranger/core/handler/reply/BaseReplyHandler;
.source "MethodInvokeReplyHandler.java"


# instance fields
.field private invokeMethod:Ljava/lang/reflect/Method;

.field private mMethodId:Ljava/lang/String;

.field private final mService:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/taobao/aranger/core/entity/Call;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/taobao/aranger/core/handler/reply/BaseReplyHandler;-><init>(Lcom/taobao/aranger/core/entity/Call;)V

    .line 31
    invoke-static {}, Lcom/taobao/aranger/utils/ServiceCenter;->getInstance()Lcom/taobao/aranger/utils/ServiceCenter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getServiceWrapper()Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/aranger/utils/ServiceCenter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/MethodInvokeReplyHandler;->mService:Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/MethodInvokeReplyHandler;->mService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/taobao/aranger/intf/IServiceProxy;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getMethodWrapper()Lcom/taobao/aranger/core/wrapper/MethodWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/aranger/core/wrapper/MethodWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getParameterWrappers()[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/aranger/utils/TypeUtils;->getMethodId(Ljava/lang/String;[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/handler/reply/impl/MethodInvokeReplyHandler;->mMethodId:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lcom/taobao/aranger/utils/TypeCenter;->getInstance()Lcom/taobao/aranger/utils/TypeCenter;

    move-result-object v0

    invoke-static {}, Lcom/taobao/aranger/utils/TypeCenter;->getInstance()Lcom/taobao/aranger/utils/TypeCenter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getServiceWrapper()Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/aranger/utils/TypeCenter;->getClassType(Lcom/taobao/aranger/core/wrapper/BaseWrapper;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getMethodWrapper()Lcom/taobao/aranger/core/wrapper/MethodWrapper;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/aranger/core/entity/Call;->getParameterWrappers()[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/aranger/utils/TypeCenter;->getMethod(Ljava/lang/Class;Lcom/taobao/aranger/core/wrapper/MethodWrapper;[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/handler/reply/impl/MethodInvokeReplyHandler;->invokeMethod:Ljava/lang/reflect/Method;

    :goto_0
    return-void
.end method


# virtual methods
.method public invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/taobao/aranger/core/handler/reply/impl/MethodInvokeReplyHandler;->mService:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 47
    :try_start_0
    instance-of v1, v0, Lcom/taobao/aranger/intf/IServiceProxy;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/taobao/aranger/intf/IServiceProxy;

    iget-object v1, p0, Lcom/taobao/aranger/core/handler/reply/impl/MethodInvokeReplyHandler;->mMethodId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/taobao/aranger/intf/IServiceProxy;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/taobao/aranger/core/handler/reply/impl/MethodInvokeReplyHandler;->invokeMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 49
    instance-of v0, p1, Lcom/taobao/aranger/exception/IPCException;

    if-eqz v0, :cond_1

    .line 50
    nop

    nop

    throw p1

    .line 52
    :cond_1
    new-instance v0, Lcom/taobao/aranger/exception/IPCException;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 44
    :cond_2
    new-instance p1, Lcom/taobao/aranger/exception/IPCException;

    const/16 v0, 0x16

    const-string v1, "can\'t find ipc object proxy"

    invoke-direct {p1, v0, v1}, Lcom/taobao/aranger/exception/IPCException;-><init>(ILjava/lang/String;)V

    throw p1
.end method
