.class public Lcom/alipay/mobileic/core/model/rpc/MICProdmngRequest;
.super Ljava/lang/Object;
.source "MICProdmngRequest.java"


# instance fields
.field public action:Ljava/lang/String;

.field public envData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public module:Ljava/lang/String;

.field public params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
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
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngRequest;->envData:Ljava/util/Map;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngRequest;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngRequest;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngRequest;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngRequest;->action:Ljava/lang/String;

    return-void
.end method

.method public setEnvData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngRequest;->envData:Ljava/util/Map;

    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngRequest;->module:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngRequest;->params:Ljava/util/Map;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alipay/mobileic/core/model/rpc/MICProdmngRequest;->token:Ljava/lang/String;

    return-void
.end method
