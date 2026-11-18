.class public abstract Lcom/alipay/mobile/verifyidentity/module/BaseProdManager;
.super Ljava/lang/Object;
.source "BaseProdManager.java"


# instance fields
.field private final a:Ljava/lang/String;

.field public mAction:Ljava/lang/String;

.field mListener:Lcom/alipay/mobile/verifyidentity/prod/manager/callback/ProdManagerListener;

.field public mName:Ljava/lang/String;

.field public mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/BaseProdManager;->a:Ljava/lang/String;

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
.method protected callback(Lcom/alipay/mobile/verifyidentity/prod/manager/callback/result/ProdManagerResult;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/verifyidentity/prod/manager/callback/result/ProdManagerResult;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/BaseProdManager;->mListener:Lcom/alipay/mobile/verifyidentity/prod/manager/callback/ProdManagerListener;

    if-nez v0, :cond_0

    .line 59
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/BaseProdManager;->a:Ljava/lang/String;

    const-string p2, "\u8c03\u7528\u65b9\u6ca1\u6709\u4f20\u5165\u56de\u8c03\uff0c\u653e\u5f03\u56de\u8c03"

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 63
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/prod/manager/callback/result/ProdManagerResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/prod/manager/callback/result/ProdManagerResult;->setExtInfo(Ljava/util/HashMap;)V

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/prod/manager/callback/result/ProdManagerResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 68
    :cond_2
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/BaseProdManager;->mListener:Lcom/alipay/mobile/verifyidentity/prod/manager/callback/ProdManagerListener;

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/BaseProdManager;->mToken:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/alipay/mobile/verifyidentity/prod/manager/callback/ProdManagerListener;->a(Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/prod/manager/callback/result/ProdManagerResult;)V

    return-void
.end method

.method public final create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/prod/manager/callback/ProdManagerListener;)V
    .locals 7

    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/BaseProdManager;->mToken:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/alipay/mobile/verifyidentity/module/BaseProdManager;->mListener:Lcom/alipay/mobile/verifyidentity/prod/manager/callback/ProdManagerListener;

    .line 36
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/BaseProdManager;->mAction:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/BaseProdManager;->mToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/BaseProdManager;->mAction:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/module/BaseProdManager;->onCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/prod/manager/callback/ProdManagerListener;)V

    return-void
.end method

.method protected onCommonError(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/alipay/mobile/verifyidentity/prod/manager/callback/result/ProdManagerResult;

    const-string v1, "2002"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/prod/manager/callback/result/ProdManagerResult;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/verifyidentity/module/BaseProdManager;->callback(Lcom/alipay/mobile/verifyidentity/prod/manager/callback/result/ProdManagerResult;Ljava/util/HashMap;)V

    return-void
.end method

.method protected onCommonSuccess(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/alipay/mobile/verifyidentity/prod/manager/callback/result/ProdManagerResult;

    const-string v1, "1000"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/prod/manager/callback/result/ProdManagerResult;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/verifyidentity/module/BaseProdManager;->callback(Lcom/alipay/mobile/verifyidentity/prod/manager/callback/result/ProdManagerResult;Ljava/util/HashMap;)V

    return-void
.end method

.method protected abstract onCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/prod/manager/callback/ProdManagerListener;)V
.end method

.method protected abstract onDestroy()V
.end method

.method protected onRpcError(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/alipay/mobile/verifyidentity/prod/manager/callback/result/ProdManagerResult;

    const-string v1, "2003"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/prod/manager/callback/result/ProdManagerResult;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/verifyidentity/module/BaseProdManager;->callback(Lcom/alipay/mobile/verifyidentity/prod/manager/callback/result/ProdManagerResult;Ljava/util/HashMap;)V

    return-void
.end method

.method protected abstract onStart()V
.end method
