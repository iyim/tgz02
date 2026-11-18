.class public Lcom/alipay/vi/android/phone/mrpc/core/RpcInvocationHandler;
.super Ljava/lang/Object;
.source "RpcInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field protected mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected mConfig:Lcom/alipay/vi/android/phone/mrpc/core/Config;

.field protected mRpcInvoker:Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;


# direct methods
.method public constructor <init>(Lcom/alipay/vi/android/phone/mrpc/core/Config;Ljava/lang/Class;Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/vi/android/phone/mrpc/core/Config;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvocationHandler;->mConfig:Lcom/alipay/vi/android/phone/mrpc/core/Config;

    .line 35
    iput-object p2, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvocationHandler;->mClazz:Ljava/lang/Class;

    .line 36
    iput-object p3, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvocationHandler;->mRpcInvoker:Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;

    .line 37
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvocationHandler;->mRpcInvoker:Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;

    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvocationHandler;->mClazz:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
