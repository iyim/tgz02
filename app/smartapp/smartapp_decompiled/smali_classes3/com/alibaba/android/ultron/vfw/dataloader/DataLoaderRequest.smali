.class public Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;
.super Ljava/lang/Object;
.source "DataLoaderRequest.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/dataloader/IDataRequest;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataLoaderRequest"


# instance fields
.field private callbackOnCurrThread:Z

.field mCallback:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;

.field mDataLoader:Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoader;

.field mHandler:Landroid/os/Handler;

.field mLoaderContext:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

.field mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->callbackOnCurrThread:Z

    return p0
.end method

.method public static create(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoader;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;
    .locals 1

    .line 25
    new-instance v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;-><init>()V

    .line 26
    iput-object p0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->mLoaderContext:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    .line 27
    iput-object p1, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->mDataLoader:Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoader;

    .line 28
    iput-object p2, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->mCallback:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;

    .line 29
    iput-object p3, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    return-object v0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DataLoaderRequest params error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public execute(Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->mDataLoader:Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoader;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->mLoaderContext:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    new-instance v2, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;-><init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoader;->doRequest(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;)V

    return-void
.end method

.method public setCallbackOnCurrThread(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->callbackOnCurrThread:Z

    return-void
.end method
