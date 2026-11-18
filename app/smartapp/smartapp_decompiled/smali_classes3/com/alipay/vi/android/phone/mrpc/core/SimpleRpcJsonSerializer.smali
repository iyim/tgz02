.class public Lcom/alipay/vi/android/phone/mrpc/core/SimpleRpcJsonSerializer;
.super Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;
.source "SimpleRpcJsonSerializer.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 21
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
.method public getRequestDataJson()Ljava/lang/String;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/SimpleRpcJsonSerializer;->mParams:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    nop

    nop

    const/4 v1, 0x1

    .line 26
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "[]"

    :cond_0
    return-object v0
.end method
