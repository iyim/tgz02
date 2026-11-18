.class public abstract Lcom/taobao/orange/sync/BaseCdnRequest;
.super Lcom/taobao/orange/sync/BaseRequest;
.source "BaseCdnRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/taobao/orange/sync/BaseRequest<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CdnRequest"


# instance fields
.field private mMD5:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/taobao/orange/sync/BaseRequest;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->mUrl:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->mMD5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract parseResContent(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public syncRequest()Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 33
    invoke-static {v0}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "CdnRequest"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 34
    new-array v1, v2, [Ljava/lang/Object;

    const-string v5, "cdn url"

    aput-object v5, v1, v4

    iget-object v5, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->mUrl:Ljava/lang/String;

    aput-object v5, v1, v0

    const-string/jumbo v5, "syncRequest start"

    invoke-static {v3, v5, v1}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    .line 39
    :try_start_0
    sget-object v5, Lcom/taobao/orange/GlobalOrange;->netConnection:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/orange/inner/INetConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 46
    instance-of v6, v5, Lcom/taobao/orange/impl/HurlNetConnection;

    if-eqz v6, :cond_1

    .line 47
    sget v6, Lcom/taobao/orange/GlobalOrange;->reqRetryNum:I

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    :goto_0
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x3

    const-string/jumbo v9, "syncRequest fail"

    if-ge v7, v6, :cond_5

    .line 51
    :try_start_1
    iget-object v10, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->mUrl:Ljava/lang/String;

    invoke-interface {v5, v10}, Lcom/taobao/orange/inner/INetConnection;->openConnection(Ljava/lang/String;)V

    const-string v10, "GET"

    .line 52
    invoke-interface {v5, v10}, Lcom/taobao/orange/inner/INetConnection;->setMethod(Ljava/lang/String;)V

    .line 53
    invoke-interface {v5}, Lcom/taobao/orange/inner/INetConnection;->connect()V

    .line 54
    instance-of v10, v5, Lcom/taobao/orange/impl/TBNetConnection;

    if-eqz v10, :cond_2

    const-string v10, "f-refer"

    const-string v11, "orange"

    .line 55
    invoke-interface {v5, v10, v11}, Lcom/taobao/orange/inner/INetConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_2
    invoke-interface {v5}, Lcom/taobao/orange/inner/INetConnection;->getResponseCode()I

    move-result v10

    iput v10, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->code:I

    .line 59
    iget v10, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->code:I

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_4

    .line 60
    invoke-interface {v5}, Lcom/taobao/orange/inner/INetConnection;->getResponse()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    invoke-interface {v5}, Lcom/taobao/orange/inner/INetConnection;->disconnect()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v10

    .line 64
    :try_start_2
    invoke-static {v8}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 65
    new-array v8, v2, [Ljava/lang/Object;

    const-string/jumbo v11, "retryNo"

    aput-object v11, v8, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v0

    invoke-static {v3, v9, v10, v8}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 67
    :cond_3
    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->message:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :cond_4
    invoke-interface {v5}, Lcom/taobao/orange/inner/INetConnection;->disconnect()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :goto_2
    invoke-interface {v5}, Lcom/taobao/orange/inner/INetConnection;->disconnect()V

    throw v0

    :cond_5
    move-object v6, v1

    .line 73
    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v7, "msg"

    const-string v10, "code"

    const/4 v11, 0x4

    if-eqz v5, :cond_6

    const/4 v5, -0x2

    .line 74
    iput v5, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->code:I

    const-string v5, "content is empty"

    .line 75
    iput-object v5, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->message:Ljava/lang/String;

    .line 76
    new-array v5, v11, [Ljava/lang/Object;

    aput-object v10, v5, v4

    iget v4, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v0

    aput-object v7, v5, v2

    iget-object v0, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->message:Ljava/lang/String;

    aput-object v0, v5, v8

    invoke-static {v3, v9, v5}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 79
    :cond_6
    iget-object v5, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->mMD5:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->mMD5:Ljava/lang/String;

    invoke-static {v6}, Lcom/taobao/orange/util/MD5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, -0x3

    .line 80
    iput v5, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->code:I

    const-string v5, "content is broken"

    .line 81
    iput-object v5, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->message:Ljava/lang/String;

    .line 82
    new-array v5, v11, [Ljava/lang/Object;

    aput-object v10, v5, v4

    iget v4, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v0

    aput-object v7, v5, v2

    iget-object v0, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->message:Ljava/lang/String;

    aput-object v0, v5, v8

    invoke-static {v3, v9, v5}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 88
    :cond_7
    :try_start_3
    invoke-virtual {p0, v6}, Lcom/taobao/orange/sync/BaseCdnRequest;->parseResContent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v2, -0x4

    .line 90
    iput v2, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->code:I

    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->message:Ljava/lang/String;

    .line 92
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3, v9, v0, v2}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_4
    return-object v1

    :catch_2
    move-exception v0

    .line 41
    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v4, "syncRequest"

    invoke-static {v3, v4, v0, v2}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/orange/sync/BaseCdnRequest;->message:Ljava/lang/String;

    return-object v1
.end method
