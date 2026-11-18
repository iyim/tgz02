.class public abstract Lcom/alibaba/android/ultron/vfw/instance/strategy/DecoratorDataProcessStrategy;
.super Ljava/lang/Object;
.source "DecoratorDataProcessStrategy.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;


# instance fields
.field mIProcessor:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/strategy/DecoratorDataProcessStrategy;->mIProcessor:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;

    return-void
.end method


# virtual methods
.method public onProcess(Ljava/util/List;Lcom/alibaba/android/ultron/vfw/core/DataSource;Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V
    .locals 1
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
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/strategy/DecoratorDataProcessStrategy;->mIProcessor:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;->onProcess(Ljava/util/List;Lcom/alibaba/android/ultron/vfw/core/DataSource;Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V

    :cond_0
    return-void
.end method
