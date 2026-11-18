.class public Lcom/alibaba/android/ultron/vfw/instance/strategy/BundleLineDataProcessStrategy;
.super Lcom/alibaba/android/ultron/vfw/instance/strategy/DecoratorDataProcessStrategy;
.source "BundleLineDataProcessStrategy.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/vfw/instance/strategy/DecoratorDataProcessStrategy;-><init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onProcess(Ljava/util/List;Lcom/alibaba/android/ultron/vfw/core/DataSource;Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;",
            "Lcom/alibaba/android/ultron/vfw/core/DataSource;",
            "Lcom/taobao/android/ultron/datamodel/imp/DMContext;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/ultron/vfw/instance/strategy/DecoratorDataProcessStrategy;->onProcess(Ljava/util/List;Lcom/alibaba/android/ultron/vfw/core/DataSource;Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V

    if-nez p1, :cond_0

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {p2}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getBodyList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/ultron/common/model/IDMComponent;

    if-eqz v0, :cond_1

    .line 29
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 30
    invoke-static {v0, p1}, Lcom/alibaba/android/ultron/vfw/instance/strategy/DataProcessUtils;->addBundleLine(Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/util/List;)V

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p2, p1}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->setBodyList(Ljava/util/List;)V

    return-void
.end method
