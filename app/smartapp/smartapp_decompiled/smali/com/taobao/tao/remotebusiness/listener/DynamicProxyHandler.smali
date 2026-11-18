.class Lcom/taobao/tao/remotebusiness/listener/DynamicProxyHandler;
.super Ljava/lang/Object;
.source "DynamicProxyHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private cacheListener:Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;

.field private finishListener:Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;

.field private listener:Lmtopsdk/mtop/common/MtopListener;

.field private mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

.field private progressListener:Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;


# direct methods
.method public constructor <init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;

    invoke-direct {v0, p1, p2}, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;-><init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)V

    iput-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/DynamicProxyHandler;->finishListener:Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;

    .line 24
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/listener/DynamicProxyHandler;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 25
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/listener/DynamicProxyHandler;->listener:Lmtopsdk/mtop/common/MtopListener;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "onFinished"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "onHeader"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "onCached"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "onDataReceived"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/listener/DynamicProxyHandler;->cacheListener:Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;

    if-nez p1, :cond_2

    .line 41
    new-instance p1, Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;

    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/DynamicProxyHandler;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/DynamicProxyHandler;->listener:Lmtopsdk/mtop/common/MtopListener;

    invoke-direct {p1, v0, v1}, Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;-><init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)V

    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/listener/DynamicProxyHandler;->cacheListener:Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;

    .line 43
    :cond_2
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/listener/DynamicProxyHandler;->cacheListener:Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 35
    :cond_3
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/listener/DynamicProxyHandler;->progressListener:Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;

    if-nez p1, :cond_4

    .line 36
    new-instance p1, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;

    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/DynamicProxyHandler;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/DynamicProxyHandler;->listener:Lmtopsdk/mtop/common/MtopListener;

    invoke-direct {p1, v0, v1}, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;-><init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)V

    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/listener/DynamicProxyHandler;->progressListener:Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;

    .line 38
    :cond_4
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/listener/DynamicProxyHandler;->progressListener:Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 32
    :cond_5
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/listener/DynamicProxyHandler;->finishListener:Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6bd580d6 -> :sswitch_3
        0x3d6a17e1 -> :sswitch_2
        0x4629b94c -> :sswitch_1
        0x7cf2e371 -> :sswitch_0
    .end sparse-switch
.end method
