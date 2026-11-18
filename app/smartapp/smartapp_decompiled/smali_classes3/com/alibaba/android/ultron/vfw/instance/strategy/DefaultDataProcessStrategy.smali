.class public Lcom/alibaba/android/ultron/vfw/instance/strategy/DefaultDataProcessStrategy;
.super Ljava/lang/Object;
.source "DefaultDataProcessStrategy.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;


# instance fields
.field mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;


# direct methods
.method public constructor <init>(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/strategy/DefaultDataProcessStrategy;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    return-void
.end method


# virtual methods
.method public final onProcess(Ljava/util/List;Lcom/alibaba/android/ultron/vfw/core/DataSource;Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V
    .locals 5
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

    .line 25
    iget-object p3, p0, Lcom/alibaba/android/ultron/vfw/instance/strategy/DefaultDataProcessStrategy;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    .line 26
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/ultron/common/model/IDMComponent;

    if-eqz v2, :cond_1

    .line 32
    invoke-static {v2}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getComponentPosition(Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "footer"

    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v4, "header"

    .line 36
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p2, p3}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->setHeaderList(Ljava/util/List;)V

    .line 44
    invoke-virtual {p2, v0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->setFooterList(Ljava/util/List;)V

    .line 45
    invoke-virtual {p2, v1}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->setBodyList(Ljava/util/List;)V

    :cond_3
    return-void
.end method
