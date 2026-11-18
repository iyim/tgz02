.class public Lcom/alipay/vi/android/phone/mrpc/core/ZHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "ZHttpRequestRetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# static fields
.field static final TAG:Ljava/lang/String; = "ZHttpRequestRetryHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
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


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 1

    .line 23
    sget-object p3, Lcom/alipay/vi/android/phone/mrpc/core/ZHttpRequestRetryHandler;->TAG:Ljava/lang/String;

    const-string v0, "retryRequest"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    return p3

    .line 28
    :cond_0
    instance-of p2, p1, Lorg/apache/http/NoHttpResponseException;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 29
    sget-object p1, Lcom/alipay/vi/android/phone/mrpc/core/ZHttpRequestRetryHandler;->TAG:Ljava/lang/String;

    const-string p2, "exception instanceof NoHttpResponseException"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 32
    :cond_1
    instance-of p2, p1, Ljava/net/SocketException;

    if-nez p2, :cond_2

    instance-of p2, p1, Ljavax/net/ssl/SSLException;

    if-eqz p2, :cond_3

    :cond_2
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Broken pipe"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 33
    sget-object p1, Lcom/alipay/vi/android/phone/mrpc/core/ZHttpRequestRetryHandler;->TAG:Ljava/lang/String;

    const-string p2, "exception instanceof SocketException:Broken pipe"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    return p3
.end method
