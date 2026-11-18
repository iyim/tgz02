.class public abstract Lcom/alipay/vi/android/phone/mrpc/core/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private a:Z

.field protected mCallback:Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Request;->a:Z

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
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Request;->a:Z

    return-void
.end method

.method public getCallback()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Request;->mCallback:Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Request;->a:Z

    return v0
.end method

.method public setTransportCallback(Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Request;->mCallback:Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    return-void
.end method
