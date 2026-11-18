.class Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;


# direct methods
.method private constructor <init>(Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;)V
    .locals 1

    .line 454
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;->this$0:Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method synthetic constructor <init>(Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$1;)V
    .locals 0

    .line 454
    invoke-direct {p0, p1}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;-><init>(Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 1

    .line 456
    iget-object p2, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;->this$0:Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;

    invoke-static {p2}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->access$300(Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;)Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 457
    invoke-static {p2}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->access$400(Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 461
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->access$600(Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
