.class public Lcom/alibaba/android/ultron/vfw/instance/strategy/DataProcessUtils;
.super Ljava/lang/Object;
.source "DataProcessUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static addBundleLine(Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    invoke-interface {p0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "cornerType"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "both"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "top"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_2
    :goto_0
    new-instance v0, Lcom/alibaba/android/ultron/vfw/viewholder/BundleLineComponent;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/vfw/viewholder/BundleLineComponent;-><init>()V

    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method
