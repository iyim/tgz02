.class Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$2;
.super Ljava/lang/Object;
.source "RpcInvoker.java"

# interfaces
.implements Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$Handle;


# instance fields
.field final synthetic this$0:Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$exception:Lcom/alipay/vi/mobile/common/rpc/RpcException;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$proxy:Ljava/lang/Object;

.field final synthetic val$rawResult:[B


# direct methods
.method constructor <init>(Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/vi/mobile/common/rpc/RpcException;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$2;->this$0:Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;

    iput-object p2, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$2;->val$proxy:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$2;->val$rawResult:[B

    iput-object p4, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$2;->val$clazz:Ljava/lang/Class;

    iput-object p5, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$2;->val$method:Ljava/lang/reflect/Method;

    iput-object p6, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$2;->val$args:[Ljava/lang/Object;

    iput-object p7, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$2;->val$exception:Lcom/alipay/vi/mobile/common/rpc/RpcException;

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

    .line 171
    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$2;->val$proxy:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$2;->val$rawResult:[B

    iget-object v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$2;->val$clazz:Ljava/lang/Class;

    iget-object v5, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$2;->val$method:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$2;->val$args:[Ljava/lang/Object;

    iget-object v7, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$2;->val$exception:Lcom/alipay/vi/mobile/common/rpc/RpcException;

    move-object v0, p1

    move-object v8, p2

    invoke-interface/range {v0 .. v8}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInterceptor;->exceptionHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/vi/mobile/common/rpc/RpcException;Ljava/lang/annotation/Annotation;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
