.class public Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;
.super Ljava/lang/Object;
.source "BaseResponseModel.java"


# instance fields
.field public resultCode:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;->success:Z

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;->resultCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResultCode()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;->success:Z

    return v0
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;->resultCode:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;->success:Z

    return-void
.end method
