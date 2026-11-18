.class public Lcom/alipay/vi/android/phone/mrpc/core/util/RpcInvokerUtil;
.super Ljava/lang/Object;
.source "RpcInvokerUtil.java"


# static fields
.field public static final SIMPLE_RPC_OPERATION_TYPE:Ljava/lang/String; = "alipay.client.executerpc"

.field public static final SIMPLE_RPC_OPERATION_TYPE_BYTES:Ljava/lang/String; = "alipay.client.executerpc.bytes"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getHeadersValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    const-class v0, Lcom/alipay/vi/mobile/framework/service/annotation/OperationType;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/alipay/vi/mobile/framework/service/annotation/OperationType;

    if-eqz p0, :cond_2

    .line 56
    invoke-interface {p0}, Lcom/alipay/vi/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-static {p0}, Lcom/alipay/vi/android/phone/mrpc/core/util/RpcInvokerUtil;->isSimpleRpcAnnotation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/alipay/vi/android/phone/mrpc/core/util/RpcInvokerUtil;->isSimpleRpcBytesAnnotation(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    .line 60
    aget-object p0, p1, p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 52
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "OperationType must be set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 32
    const-class v0, Lcom/alipay/vi/mobile/framework/service/annotation/OperationType;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/alipay/vi/mobile/framework/service/annotation/OperationType;

    if-eqz p0, :cond_2

    .line 38
    invoke-interface {p0}, Lcom/alipay/vi/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/alipay/vi/android/phone/mrpc/core/util/RpcInvokerUtil;->isSimpleRpcAnnotation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/alipay/vi/android/phone/mrpc/core/util/RpcInvokerUtil;->isSimpleRpcBytesAnnotation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 42
    aget-object p0, p1, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 34
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "OperationType must be set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final isSimpleRpcAnnotation(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "alipay.client.executerpc"

    .line 22
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static final isSimpleRpcBytesAnnotation(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "alipay.client.executerpc.bytes"

    .line 26
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
