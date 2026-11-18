.class public Lcom/taobao/android/tbsku/network/SkuRequestClient;
.super Ljava/lang/Object;
.source "SkuRequestClient.java"


# instance fields
.field private mMtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/taobao/android/tbsku/network/ISkuRequestParams;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "INNER"

    .line 19
    invoke-static {v0, p1}, Lmtopsdk/mtop/intf/Mtop;->instance(Ljava/lang/String;Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object p1

    .line 20
    invoke-interface {p2}, Lcom/taobao/android/tbsku/network/ISkuRequestParams;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->build(Lmtopsdk/mtop/intf/Mtop;Lmtopsdk/mtop/domain/MtopRequest;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/android/tbsku/network/SkuRequestClient;->mMtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 21
    iget-object p1, p0, Lcom/taobao/android/tbsku/network/SkuRequestClient;->mMtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-interface {p2}, Lcom/taobao/android/tbsku/network/ISkuRequestParams;->getUnitStrategy()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setUnitStrategy(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/taobao/android/tbsku/network/SkuRequestClient;->mMtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->startRequest()V

    const/4 v0, 0x1

    return v0
.end method

.method public setResponseListener(Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/taobao/android/tbsku/network/SkuRequestClient;->mMtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->registerListener(Lcom/taobao/tao/remotebusiness/IRemoteListener;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    :cond_0
    return-void
.end method
