.class public Lcom/alipay/vi/android/phone/mrpc/core/RpcThreadParamsHelper;
.super Ljava/lang/Object;
.source "RpcThreadParamsHelper.java"


# static fields
.field public static final KEY_RESPONSE_HEADER:Ljava/lang/String; = "key_rpc_response_headers"

.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcThreadParamsHelper$1;

    invoke-direct {v0}, Lcom/alipay/vi/android/phone/mrpc/core/RpcThreadParamsHelper$1;-><init>()V

    sput-object v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcThreadParamsHelper;->a:Ljava/lang/ThreadLocal;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
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

.method public static final clearThreadLocalValues()V
    .locals 3

    .line 51
    :try_start_0
    sget-object v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcThreadParamsHelper;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RpcThreadParamsHelper"

    const-string v2, "[clearThreadLocalValues] exception"

    .line 53
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static final getResponseHeaders()Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;
    .locals 4

    .line 31
    sget-object v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcThreadParamsHelper;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "key_rpc_response_headers"

    .line 32
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "RpcThreadParamsHelper"

    if-eqz v0, :cond_1

    .line 34
    instance-of v2, v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;

    if-eqz v2, :cond_0

    .line 35
    nop

    nop

    return-object v0

    .line 37
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getResponseHeaders] Illega value type \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "[getResponseHeaders] Value is null."

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getThreadLocal()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcThreadParamsHelper;->a:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static final setResponseHeaders(Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;)V
    .locals 2

    .line 26
    sget-object v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcThreadParamsHelper;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "key_rpc_response_headers"

    .line 27
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
