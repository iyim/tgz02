.class public interface abstract Lcom/alibaba/android/ultron/vfw/adapter/IAdapter;
.super Ljava/lang/Object;
.source "IAdapter.java"


# virtual methods
.method public abstract getData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract notifyDataSetChanged()V
.end method

.method public abstract setData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation
.end method
