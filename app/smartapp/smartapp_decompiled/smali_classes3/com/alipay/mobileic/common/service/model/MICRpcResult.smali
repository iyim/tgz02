.class public Lcom/alipay/mobileic/common/service/model/MICRpcResult;
.super Lcom/alipay/mobileic/common/service/model/ToString;
.source "MICRpcResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public success:Z

.field public sysErrCode:Ljava/lang/String;

.field public sysErrMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/alipay/mobileic/common/service/model/ToString;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/alipay/mobileic/common/service/model/MICRpcResult;->success:Z

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/alipay/mobileic/common/service/model/MICRpcResult;->sysErrCode:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/alipay/mobileic/common/service/model/MICRpcResult;->sysErrMsg:Ljava/lang/String;

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
