.class public Lcom/alipay/vi/mobile/framework/service/ext/BizResult;
.super Ljava/lang/Object;
.source "BizResult.java"


# instance fields
.field public appName:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public resultCode:I

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
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
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alipay/vi/mobile/framework/service/ext/BizResult;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alipay/vi/mobile/framework/service/ext/BizResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/alipay/vi/mobile/framework/service/ext/BizResult;->resultCode:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/alipay/vi/mobile/framework/service/ext/BizResult;->success:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alipay/vi/mobile/framework/service/ext/BizResult;->appName:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alipay/vi/mobile/framework/service/ext/BizResult;->message:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/alipay/vi/mobile/framework/service/ext/BizResult;->resultCode:I

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/alipay/vi/mobile/framework/service/ext/BizResult;->success:Z

    return-void
.end method
