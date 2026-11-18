.class Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$3;
.super Ljava/lang/Object;
.source "RpcInvoker.java"

# interfaces
.implements Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$Handle;


# instance fields
.field final synthetic this$0:Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$proxy:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$3;->this$0:Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;

    iput-object p2, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$3;->val$proxy:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$3;->val$clazz:Ljava/lang/Class;

    iput-object p4, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$3;->val$method:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$3;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public handle(Lcom/alipay/vi/android/phone/mrpc/core/RpcInterceptor;Ljava/lang/annotation/Annotation;)Z
    .locals 9

    .line 204
    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$3;->val$proxy:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v2

    const/4 v0, 0x0

    new-array v3, v0, [B

    iget-object v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$3;->val$clazz:Ljava/lang/Class;

    iget-object v5, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$3;->val$method:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$3;->val$args:[Ljava/lang/Object;

    .line 205
    invoke-static {}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v8

    move-object v0, p1

    move-object v7, p2

    .line 204
    invoke-interface/range {v0 .. v8}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInterceptor;->preHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;Ljava/lang/ThreadLocal;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 206
    :cond_0
    new-instance p2, Lcom/alipay/vi/mobile/common/rpc/RpcException;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "preHandle stop this call."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/alipay/vi/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw p2
.end method
