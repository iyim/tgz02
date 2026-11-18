.class final Lcom/taobao/android/tbsku/utils/SkuChecker$1;
.super Ljava/util/ArrayList;
.source "SkuChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/tbsku/utils/SkuChecker;->checkNewSkuWithData(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "skuBase.propAddedInfo"

    .line 46
    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/utils/SkuChecker$1;->add(Ljava/lang/Object;)Z

    const-string v0, "feature.isDonateItem"

    .line 54
    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/utils/SkuChecker$1;->add(Ljava/lang/Object;)Z

    const-string v0, "skuBase.components"

    .line 57
    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/utils/SkuChecker$1;->add(Ljava/lang/Object;)Z

    const-string v0, "skuVertical.installment.contractData"

    .line 58
    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/utils/SkuChecker$1;->add(Ljava/lang/Object;)Z

    const-string v0, "vertical.jhs.needJoin"

    .line 60
    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/utils/SkuChecker$1;->add(Ljava/lang/Object;)Z

    const-string v0, "vertical.isvCustom.tradeBefor.pluginId"

    .line 61
    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/utils/SkuChecker$1;->add(Ljava/lang/Object;)Z

    const-string v0, "vertical.presale"

    .line 63
    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/utils/SkuChecker$1;->add(Ljava/lang/Object;)Z

    const-string v0, "vertical.pintuan"

    .line 64
    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/utils/SkuChecker$1;->add(Ljava/lang/Object;)Z

    const-string v0, "feature.secKill"

    .line 68
    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/utils/SkuChecker$1;->add(Ljava/lang/Object;)Z

    const-string v0, "vertical.sendGift"

    .line 70
    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/utils/SkuChecker$1;->add(Ljava/lang/Object;)Z

    const-string v0, "feature.bundleItem"

    .line 71
    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/utils/SkuChecker$1;->add(Ljava/lang/Object;)Z

    const-string v0, "vertical.bubble"

    .line 73
    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/utils/SkuChecker$1;->add(Ljava/lang/Object;)Z

    const-string v0, "skuCore.skuItem.skuH5Url"

    .line 75
    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/utils/SkuChecker$1;->add(Ljava/lang/Object;)Z

    const-string v0, "feature.series"

    .line 77
    invoke-virtual {p0, v0}, Lcom/taobao/android/tbsku/utils/SkuChecker$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
