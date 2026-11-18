.class Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer$1;
.super Ljava/lang/Object;
.source "SignJsonSerializer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/http/message/BasicNameValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;


# direct methods
.method constructor <init>(Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;)V
    .locals 1

    .line 81
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer$1;->this$0:Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;

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
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 81
    check-cast p1, Lorg/apache/http/message/BasicNameValuePair;

    check-cast p2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer$1;->compare(Lorg/apache/http/message/BasicNameValuePair;Lorg/apache/http/message/BasicNameValuePair;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/http/message/BasicNameValuePair;Lorg/apache/http/message/BasicNameValuePair;)I
    .locals 0

    .line 85
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
