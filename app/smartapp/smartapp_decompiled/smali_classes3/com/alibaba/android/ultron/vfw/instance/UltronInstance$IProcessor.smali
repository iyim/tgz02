.class public interface abstract Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;
.super Ljava/lang/Object;
.source "UltronInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IProcessor"
.end annotation


# virtual methods
.method public abstract onProcess(Ljava/util/List;Lcom/alibaba/android/ultron/vfw/core/DataSource;Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V
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
.end method
