.class public Lcom/taobao/phenix/builder/HttpLoaderBuilder;
.super Ljava/lang/Object;
.source "HttpLoaderBuilder.java"

# interfaces
.implements Lcom/taobao/phenix/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/phenix/builder/Builder<",
        "Lcom/taobao/phenix/loader/network/HttpLoader;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CONNECT_TIMEOUT:I = 0x3a98

.field public static final DEFAULT_READ_TIMEOUT:I = 0x2710


# instance fields
.field private mConnectTimeout:Ljava/lang/Integer;

.field private mHaveBuilt:Z

.field private mHttpLoader:Lcom/taobao/phenix/loader/network/HttpLoader;

.field private mReadTimeout:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public declared-synchronized build()Lcom/taobao/phenix/loader/network/HttpLoader;
    .locals 2

    monitor-enter p0

    .line 37
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mHaveBuilt:Z

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mHttpLoader:Lcom/taobao/phenix/loader/network/HttpLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 40
    :try_start_1
    iput-boolean v0, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mHaveBuilt:Z

    .line 41
    iget-object v0, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mHttpLoader:Lcom/taobao/phenix/loader/network/HttpLoader;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Lcom/taobao/phenix/loader/network/DefaultHttpLoader;

    invoke-direct {v0}, Lcom/taobao/phenix/loader/network/DefaultHttpLoader;-><init>()V

    iput-object v0, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mHttpLoader:Lcom/taobao/phenix/loader/network/HttpLoader;

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mHttpLoader:Lcom/taobao/phenix/loader/network/HttpLoader;

    iget-object v1, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mConnectTimeout:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mConnectTimeout:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x3a98

    :goto_0
    invoke-interface {v0, v1}, Lcom/taobao/phenix/loader/network/HttpLoader;->connectTimeout(I)V

    .line 45
    iget-object v0, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mHttpLoader:Lcom/taobao/phenix/loader/network/HttpLoader;

    iget-object v1, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mReadTimeout:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mReadTimeout:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_3
    const/16 v1, 0x2710

    :goto_1
    invoke-interface {v0, v1}, Lcom/taobao/phenix/loader/network/HttpLoader;->readTimeout(I)V

    .line 46
    iget-object v0, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mHttpLoader:Lcom/taobao/phenix/loader/network/HttpLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->build()Lcom/taobao/phenix/loader/network/HttpLoader;

    move-result-object v0

    return-object v0
.end method

.method public connectTimeout(I)Lcom/taobao/phenix/builder/HttpLoaderBuilder;
    .locals 2

    .line 24
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mHaveBuilt:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "HttpLoaderBuilder has been built, not allow connectTimeout() now"

    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mConnectTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public readTimeout(I)Lcom/taobao/phenix/builder/HttpLoaderBuilder;
    .locals 2

    .line 30
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mHaveBuilt:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "HttpLoaderBuilder has been built, not allow readTimeout() now"

    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mReadTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic with(Ljava/lang/Object;)Lcom/taobao/phenix/builder/Builder;
    .locals 0

    .line 7
    check-cast p1, Lcom/taobao/phenix/loader/network/HttpLoader;

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->with(Lcom/taobao/phenix/loader/network/HttpLoader;)Lcom/taobao/phenix/builder/HttpLoaderBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/taobao/phenix/loader/network/HttpLoader;)Lcom/taobao/phenix/builder/HttpLoaderBuilder;
    .locals 2

    .line 18
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mHaveBuilt:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "HttpLoaderBuilder has been built, not allow with() now"

    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 19
    iput-object p1, p0, Lcom/taobao/phenix/builder/HttpLoaderBuilder;->mHttpLoader:Lcom/taobao/phenix/loader/network/HttpLoader;

    return-object p0
.end method
