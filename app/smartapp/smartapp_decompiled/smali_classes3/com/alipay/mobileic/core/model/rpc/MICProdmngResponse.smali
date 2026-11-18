.class public Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;
.super Ljava/lang/Object;
.source "MICProdmngResponse.java"


# instance fields
.field public code:Ljava/lang/String;

.field public data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public finish:Z

.field public finishCode:Ljava/lang/String;

.field public finishMsg:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public nextStep:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public success:Z

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->finish:Z

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
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getFinishCode()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->finishCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFinishMsg()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->finishMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNextStep()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->nextStep:Ljava/util/Map;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isFinish()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->finish:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->success:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->code:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->data:Ljava/util/Map;

    return-void
.end method

.method public setFinish(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->finish:Z

    return-void
.end method

.method public setFinishCode(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->finishCode:Ljava/lang/String;

    return-void
.end method

.method public setFinishMsg(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->finishMsg:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setNextStep(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->nextStep:Ljava/util/Map;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->success:Z

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;->token:Ljava/lang/String;

    return-void
.end method
