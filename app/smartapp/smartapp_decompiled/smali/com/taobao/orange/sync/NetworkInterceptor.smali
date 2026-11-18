.class public Lcom/taobao/orange/sync/NetworkInterceptor;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Lanetwork/channel/interceptor/Interceptor;


# static fields
.field static final ORANGE_REQ_HEADER:Ljava/lang/String; = "a-orange-q"

.field static final ORANGE_RES_HEADER:Ljava/lang/String; = "a-orange-p"

.field static final TAG:Ljava/lang/String; = "NetworkInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static getOrangeFromKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 90
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    const-string p1, "getOrangeFromKey fail"

    const/4 v0, 0x0

    const/4 v2, 0x1

    const-string v3, "NetworkInterceptor"

    if-eqz p0, :cond_6

    .line 96
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 101
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string/jumbo v5, "resourceId"

    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 103
    invoke-static {v2}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result p0

    const-string p1, "getOrangeFromKey"

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    .line 104
    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo v5, "value"

    aput-object v5, p0, v0

    aput-object v4, p0, v2

    invoke-static {v3, p1, p0}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :try_start_0
    const-string/jumbo p0, "utf-8"

    .line 108
    invoke-static {v4, p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 110
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p1, p0, v0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-object v1

    .line 115
    :cond_5
    new-array p0, v2, [Ljava/lang/Object;

    const-string v2, "parseValue no resourceId"

    aput-object v2, p0, v0

    invoke-static {v3, p1, p0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 97
    :cond_6
    :goto_2
    new-array p0, v2, [Ljava/lang/Object;

    const-string v2, "not exist a-orange-p"

    aput-object v2, p0, v0

    invoke-static {v3, p1, p0}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public intercept(Lanetwork/channel/interceptor/Interceptor$Chain;)Ljava/util/concurrent/Future;
    .locals 5

    .line 34
    invoke-interface {p1}, Lanetwork/channel/interceptor/Interceptor$Chain;->request()Lanet/channel/request/Request;

    move-result-object v0

    .line 35
    invoke-interface {p1}, Lanetwork/channel/interceptor/Interceptor$Chain;->callback()Lanetwork/channel/interceptor/Callback;

    move-result-object v1

    .line 39
    sget-object v2, Lcom/taobao/orange/GlobalOrange;->indexUpdMode:Lcom/taobao/orange/OConstant$UPDMODE;

    sget-object v3, Lcom/taobao/orange/OConstant$UPDMODE;->O_EVENT:Lcom/taobao/orange/OConstant$UPDMODE;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/taobao/orange/GlobalOrange;->probeHosts:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 40
    sget-object v2, Lcom/taobao/orange/GlobalOrange;->probeHosts:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 49
    sget-object v1, Lcom/taobao/orange/GlobalOrange;->reqOrangeHeader:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    invoke-interface {p1}, Lanetwork/channel/interceptor/Interceptor$Chain;->request()Lanet/channel/request/Request;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/request/Request;->newBuilder()Lanet/channel/request/Request$Builder;

    move-result-object v0

    sget-object v1, Lcom/taobao/orange/GlobalOrange;->reqOrangeHeader:Ljava/lang/String;

    const-string v2, "a-orange-q"

    invoke-virtual {v0, v2, v1}, Lanet/channel/request/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object v0

    .line 53
    :cond_2
    new-instance v1, Lcom/taobao/orange/sync/NetworkInterceptor$1;

    invoke-direct {v1, p0, p1}, Lcom/taobao/orange/sync/NetworkInterceptor$1;-><init>(Lcom/taobao/orange/sync/NetworkInterceptor;Lanetwork/channel/interceptor/Interceptor$Chain;)V

    .line 85
    :cond_3
    invoke-interface {p1, v0, v1}, Lanetwork/channel/interceptor/Interceptor$Chain;->proceed(Lanet/channel/request/Request;Lanetwork/channel/interceptor/Callback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
