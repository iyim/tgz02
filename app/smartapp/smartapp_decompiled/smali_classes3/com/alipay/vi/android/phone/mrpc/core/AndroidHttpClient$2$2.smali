.class Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$2$2;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# instance fields
.field final synthetic this$1:Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$2;


# direct methods
.method constructor <init>(Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$2;)V
    .locals 1

    .line 223
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$2$2;->this$1:Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$2;

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


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 0

    const-wide/32 p1, 0x2bf20

    return-wide p1
.end method
