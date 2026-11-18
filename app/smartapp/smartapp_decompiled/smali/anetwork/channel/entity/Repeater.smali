.class public Lanetwork/channel/entity/Repeater;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Lanetwork/channel/interceptor/Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "anet.Repeater"


# instance fields
.field private bInputStreamListener:Z

.field private config:Lanetwork/channel/entity/RequestConfig;

.field private inputStream:Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

.field private mListenerWrapper:Lanetwork/channel/aidl/ParcelableNetworkListener;

.field private seqNo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lanetwork/channel/aidl/ParcelableNetworkListener;Lanetwork/channel/entity/RequestConfig;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lanetwork/channel/entity/Repeater;->inputStream:Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lanetwork/channel/entity/Repeater;->bInputStreamListener:Z

    .line 38
    iput-object v0, p0, Lanetwork/channel/entity/Repeater;->config:Lanetwork/channel/entity/RequestConfig;

    .line 41
    iput-object p1, p0, Lanetwork/channel/entity/Repeater;->mListenerWrapper:Lanetwork/channel/aidl/ParcelableNetworkListener;

    .line 42
    iput-object p2, p0, Lanetwork/channel/entity/Repeater;->config:Lanetwork/channel/entity/RequestConfig;

    if-eqz p1, :cond_0

    .line 44
    :try_start_0
    invoke-interface {p1}, Lanetwork/channel/aidl/ParcelableNetworkListener;->getListenerState()B

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lanetwork/channel/entity/Repeater;->bInputStreamListener:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lanetwork/channel/entity/Repeater;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lanetwork/channel/entity/Repeater;->bInputStreamListener:Z

    return p0
.end method

.method static synthetic access$100(Lanetwork/channel/entity/Repeater;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;
    .locals 0

    .line 32
    iget-object p0, p0, Lanetwork/channel/entity/Repeater;->inputStream:Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    return-object p0
.end method

.method static synthetic access$102(Lanetwork/channel/entity/Repeater;Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;
    .locals 0

    .line 32
    iput-object p1, p0, Lanetwork/channel/entity/Repeater;->inputStream:Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    return-object p1
.end method

.method static synthetic access$200(Lanetwork/channel/entity/Repeater;)Lanetwork/channel/entity/RequestConfig;
    .locals 0

    .line 32
    iget-object p0, p0, Lanetwork/channel/entity/Repeater;->config:Lanetwork/channel/entity/RequestConfig;

    return-object p0
.end method

.method static synthetic access$300(Lanetwork/channel/entity/Repeater;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lanetwork/channel/entity/Repeater;->seqNo:Ljava/lang/String;

    return-object p0
.end method

.method private dispatchCallBack(Ljava/lang/Runnable;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lanetwork/channel/entity/Repeater;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->isSyncRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 210
    :cond_0
    iget-object v0, p0, Lanetwork/channel/entity/Repeater;->seqNo:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 211
    :goto_0
    invoke-static {v0, p1}, Lanetwork/channel/entity/RepeatProcessor;->submitTask(ILjava/lang/Runnable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V
    .locals 7

    .line 71
    iget-object v5, p0, Lanetwork/channel/entity/Repeater;->mListenerWrapper:Lanetwork/channel/aidl/ParcelableNetworkListener;

    if-eqz v5, :cond_0

    .line 73
    new-instance v6, Lanetwork/channel/entity/Repeater$2;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lanetwork/channel/entity/Repeater$2;-><init>(Lanetwork/channel/entity/Repeater;ILanet/channel/bytes/ByteArray;ILanetwork/channel/aidl/ParcelableNetworkListener;)V

    .line 100
    invoke-direct {p0, v6}, Lanetwork/channel/entity/Repeater;->dispatchCallBack(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V
    .locals 4

    const/4 v0, 0x2

    .line 105
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lanetwork/channel/entity/Repeater;->seqNo:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "anet.Repeater"

    const-string v3, "[onFinish] "

    invoke-static {v2, v3, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lanetwork/channel/entity/Repeater;->mListenerWrapper:Lanetwork/channel/aidl/ParcelableNetworkListener;

    if-eqz v0, :cond_2

    .line 110
    new-instance v1, Lanetwork/channel/entity/Repeater$3;

    invoke-direct {v1, p0, p1, v0}, Lanetwork/channel/entity/Repeater$3;-><init>(Lanetwork/channel/entity/Repeater;Lanetwork/channel/aidl/DefaultFinishEvent;Lanetwork/channel/aidl/ParcelableNetworkListener;)V

    .line 195
    iget-object p1, p1, Lanetwork/channel/aidl/DefaultFinishEvent;->rs:Lanet/channel/statist/RequestStatistic;

    if-eqz p1, :cond_1

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lanet/channel/statist/RequestStatistic;->rspCbDispatch:J

    .line 199
    :cond_1
    invoke-direct {p0, v1}, Lanetwork/channel/entity/Repeater;->dispatchCallBack(Ljava/lang/Runnable;)V

    :cond_2
    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Lanetwork/channel/entity/Repeater;->mListenerWrapper:Lanetwork/channel/aidl/ParcelableNetworkListener;

    return-void
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 52
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lanetwork/channel/entity/Repeater;->seqNo:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "anet.Repeater"

    const-string v3, "[onResponseCode]"

    invoke-static {v2, v3, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lanetwork/channel/entity/Repeater;->mListenerWrapper:Lanetwork/channel/aidl/ParcelableNetworkListener;

    if-eqz v0, :cond_1

    .line 57
    new-instance v1, Lanetwork/channel/entity/Repeater$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lanetwork/channel/entity/Repeater$1;-><init>(Lanetwork/channel/entity/Repeater;Lanetwork/channel/aidl/ParcelableNetworkListener;ILjava/util/Map;)V

    .line 66
    invoke-direct {p0, v1}, Lanetwork/channel/entity/Repeater;->dispatchCallBack(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setSeqNo(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lanetwork/channel/entity/Repeater;->seqNo:Ljava/lang/String;

    return-void
.end method
