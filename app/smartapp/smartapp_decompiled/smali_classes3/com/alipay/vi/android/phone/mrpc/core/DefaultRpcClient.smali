.class public Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient;
.super Lcom/alipay/vi/android/phone/mrpc/core/RpcClient;
.source "DefaultRpcClient.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/RpcClient;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient;->a:Landroid/content/Context;

    .line 15
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

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/vi/android/phone/mrpc/core/Config;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/RpcClient;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient;->a:Landroid/content/Context;

    .line 21
    new-instance p1, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;

    invoke-direct {p1, p2}, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;-><init>(Lcom/alipay/vi/android/phone/mrpc/core/Config;)V

    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient;->b:Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;

    .line 22
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient;->b:Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;

    iget-object p2, p0, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;)Lcom/alipay/vi/android/phone/mrpc/core/Config;
    .locals 1

    .line 35
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient$1;-><init>(Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient;Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;)V

    return-object v0
.end method

.method static synthetic access$000(Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient;)Landroid/content/Context;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient;->b:Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRpcProxy(Ljava/lang/Class;Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;",
            ")TT;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;

    invoke-direct {p0, p2}, Lcom/alipay/vi/android/phone/mrpc/core/DefaultRpcClient;->a(Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;)Lcom/alipay/vi/android/phone/mrpc/core/Config;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;-><init>(Lcom/alipay/vi/android/phone/mrpc/core/Config;)V

    invoke-virtual {v0, p1}, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
