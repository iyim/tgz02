.class public Lcom/taobao/aranger/core/handler/invoc/MethodInvocationHandler;
.super Lcom/taobao/aranger/core/handler/invoc/IPCInvocationHandler;
.source "MethodInvocationHandler.java"


# instance fields
.field private final mBaseRemoteChannel:Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

.field private final mRemoteProviderUri:Landroid/net/Uri;

.field private final mServiceWrapper:Lcom/taobao/aranger/core/wrapper/ServiceWrapper;


# direct methods
.method public constructor <init>(Lcom/taobao/aranger/core/wrapper/ServiceWrapper;Landroid/net/Uri;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/taobao/aranger/core/handler/invoc/IPCInvocationHandler;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/taobao/aranger/core/handler/invoc/MethodInvocationHandler;->mServiceWrapper:Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    .line 34
    iput-object p2, p0, Lcom/taobao/aranger/core/handler/invoc/MethodInvocationHandler;->mRemoteProviderUri:Landroid/net/Uri;

    .line 35
    iget-object p1, p0, Lcom/taobao/aranger/core/handler/invoc/MethodInvocationHandler;->mServiceWrapper:Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper;->setType(I)Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    .line 36
    iget-object p1, p0, Lcom/taobao/aranger/core/handler/invoc/MethodInvocationHandler;->mRemoteProviderUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/taobao/aranger/core/ipc/ChannelManager;->getRemoteChannel(Landroid/net/Uri;)Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/aranger/core/handler/invoc/MethodInvocationHandler;->mBaseRemoteChannel:Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    return-void
.end method


# virtual methods
.method public internalInvoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/taobao/aranger/core/entity/Reply;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 42
    invoke-static {p1, p2}, Lcom/taobao/aranger/utils/ParameterTransformer;->wrapperParameters(Ljava/lang/reflect/Method;[Ljava/lang/Object;)[Lcom/taobao/aranger/core/wrapper/ParameterWrapper;

    move-result-object p2

    .line 43
    const-class v0, Lcom/taobao/aranger/annotation/method/MethodName;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/taobao/aranger/annotation/method/MethodName;

    .line 45
    invoke-static {}, Lcom/taobao/aranger/core/wrapper/MethodWrapper;->obtain()Lcom/taobao/aranger/core/wrapper/MethodWrapper;

    move-result-object v1

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/taobao/aranger/annotation/method/MethodName;->value()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/taobao/aranger/core/wrapper/MethodWrapper;->setMethodName(Ljava/lang/String;)Lcom/taobao/aranger/core/wrapper/MethodWrapper;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/aranger/utils/TypeUtils;->getClassId(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/aranger/core/wrapper/MethodWrapper;->setReturnType(Ljava/lang/String;)Lcom/taobao/aranger/core/wrapper/MethodWrapper;

    move-result-object v0

    .line 49
    invoke-static {}, Lcom/taobao/aranger/core/entity/Call;->obtain()Lcom/taobao/aranger/core/entity/Call;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/aranger/core/handler/invoc/MethodInvocationHandler;->mServiceWrapper:Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    .line 50
    invoke-virtual {v1, v2}, Lcom/taobao/aranger/core/entity/Call;->setServiceWrapper(Lcom/taobao/aranger/core/wrapper/ServiceWrapper;)Lcom/taobao/aranger/core/entity/Call;

    move-result-object v1

    .line 51
    invoke-virtual {v1, p2}, Lcom/taobao/aranger/core/entity/Call;->setParameterWrappers([Lcom/taobao/aranger/core/wrapper/ParameterWrapper;)Lcom/taobao/aranger/core/entity/Call;

    move-result-object p2

    .line 52
    invoke-virtual {p2, v0}, Lcom/taobao/aranger/core/entity/Call;->setMethodWrapper(Lcom/taobao/aranger/core/wrapper/MethodWrapper;)Lcom/taobao/aranger/core/entity/Call;

    move-result-object p2

    iget-object v0, p0, Lcom/taobao/aranger/core/handler/invoc/MethodInvocationHandler;->mRemoteProviderUri:Landroid/net/Uri;

    .line 53
    invoke-virtual {p2, v0}, Lcom/taobao/aranger/core/entity/Call;->setRemoteProviderUri(Landroid/net/Uri;)Lcom/taobao/aranger/core/entity/Call;

    move-result-object p2

    .line 54
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "void"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/taobao/aranger/core/entity/Call;->setVoid(Z)Lcom/taobao/aranger/core/entity/Call;

    move-result-object p2

    const-class v0, Lcom/taobao/aranger/annotation/method/oneway;

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Lcom/taobao/aranger/core/entity/Call;->setOneWay(Z)Lcom/taobao/aranger/core/entity/Call;

    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/taobao/aranger/core/handler/invoc/MethodInvocationHandler;->mBaseRemoteChannel:Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    invoke-virtual {p2, p1}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->sendCall(Lcom/taobao/aranger/core/entity/Call;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/aranger/core/handler/invoc/IPCInvocationHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
