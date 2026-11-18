.class public Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;
.super Ljava/lang/Object;
.source "RpcFactory.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/vi/android/phone/mrpc/core/Config;

.field private c:Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/alipay/vi/android/phone/mrpc/core/RpcInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/vi/android/phone/mrpc/core/Config;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->b:Lcom/alipay/vi/android/phone/mrpc/core/Config;

    .line 31
    new-instance p1, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;

    invoke-direct {p1, p0}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;-><init>(Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;)V

    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->c:Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;

    .line 32
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->d:Ljava/util/Map;

    .line 33
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/vi/android/phone/mrpc/core/RpcInterceptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/alipay/vi/android/phone/mrpc/core/RpcInterceptor;",
            ")V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public findRpcInterceptor(Ljava/lang/Class;)Lcom/alipay/vi/android/phone/mrpc/core/RpcInterceptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/alipay/vi/android/phone/mrpc/core/RpcInterceptor;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/vi/android/phone/mrpc/core/RpcInterceptor;

    return-object p1
.end method

.method public getConfig()Lcom/alipay/vi/android/phone/mrpc/core/Config;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->b:Lcom/alipay/vi/android/phone/mrpc/core/Config;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvocationHandler;

    iget-object v3, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->b:Lcom/alipay/vi/android/phone/mrpc/core/Config;

    iget-object v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->c:Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;

    invoke-direct {v2, v3, p1, v4}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvocationHandler;-><init>(Lcom/alipay/vi/android/phone/mrpc/core/Config;Ljava/lang/Class;Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->a:Landroid/content/Context;

    return-void
.end method
