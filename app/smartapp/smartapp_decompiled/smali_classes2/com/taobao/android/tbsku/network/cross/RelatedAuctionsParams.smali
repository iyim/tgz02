.class public Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;
.super Ljava/lang/Object;
.source "RelatedAuctionsParams.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/taobao/android/tbsku/network/ISkuRequestParams;


# instance fields
.field private itemIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApiName:Ljava/lang/String;

.field private mApiVersion:Ljava/lang/String;

.field private mUnitStrategy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.detail.open.sku"

    .line 14
    iput-object v0, p0, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;->mApiName:Ljava/lang/String;

    const-string v0, "1.0"

    .line 15
    iput-object v0, p0, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;->mApiVersion:Ljava/lang/String;

    const-string v0, "UNIT_TRADE"

    .line 17
    iput-object v0, p0, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;->mUnitStrategy:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;->itemIds:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;)Ljava/util/List;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;->itemIds:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;->mApiName:Ljava/lang/String;

    return-object v0
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;->mApiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;->itemIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;->itemIds:Ljava/util/List;

    .line 48
    :cond_0
    new-instance v0, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams$1;

    invoke-direct {v0, p0}, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams$1;-><init>(Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;)V

    .line 50
    invoke-virtual {v0}, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams$1;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;
    .locals 2

    .line 27
    new-instance v0, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v0}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;->getApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method public getUnitStrategy()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/taobao/android/tbsku/network/cross/RelatedAuctionsParams;->mUnitStrategy:Ljava/lang/String;

    return-object v0
.end method
