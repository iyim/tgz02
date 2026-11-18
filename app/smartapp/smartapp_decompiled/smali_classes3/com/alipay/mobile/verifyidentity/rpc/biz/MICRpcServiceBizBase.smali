.class public Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;
.super Ljava/lang/Object;
.source "MICRpcServiceBizBase.java"


# static fields
.field private static final a:Ljava/lang/String; = "MICRpcServiceBizBase"


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->b:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->b:Ljava/lang/String;

    .line 30
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

.method private a()Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;
    .locals 1

    .line 97
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->getInstance()Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->getRpcService()Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;-><init>()V

    :goto_0
    return-object v0
.end method

.method private a(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;
    .locals 0

    return-object p1
.end method

.method private a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 1

    .line 118
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->pbData:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->data:Ljava/lang/String;

    const/4 v0, 0x0

    .line 120
    iput-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->pbData:Ljava/lang/String;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public dispatch(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 2

    .line 35
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->a()Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;->setGW(Ljava/lang/String;)V

    .line 37
    const-class v1, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;

    .line 38
    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;

    .line 39
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;->dispatch(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object p1
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 41
    throw p1
.end method

.method public initVerifyTask(Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 2

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->a()Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;->setGW(Ljava/lang/String;)V

    .line 57
    const-class v1, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;

    .line 58
    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;

    .line 59
    invoke-interface {v0, p1}, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;->initVerifyTask(Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object p1
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 61
    throw p1
.end method

.method public prodmng(Lcom/alipay/mobileic/core/model/rpc/MICProdmngRequest;)Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;
    .locals 2

    .line 81
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;->setGW(Ljava/lang/String;)V

    .line 83
    const-class v1, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;

    .line 84
    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;

    .line 85
    invoke-interface {v0, p1}, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;->prodmng(Lcom/alipay/mobileic/core/model/rpc/MICProdmngRequest;)Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;

    move-result-object p1
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 88
    throw p1
.end method

.method public report(Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;)Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;
    .locals 2

    .line 68
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;-><init>()V

    .line 69
    const-class v1, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;

    .line 70
    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;

    .line 71
    invoke-interface {v0, p1}, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;->report(Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;)Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;

    move-result-object p1
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 74
    throw p1
.end method
