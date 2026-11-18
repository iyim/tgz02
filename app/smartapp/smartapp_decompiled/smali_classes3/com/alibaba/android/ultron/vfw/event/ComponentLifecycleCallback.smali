.class public interface abstract Lcom/alibaba/android/ultron/vfw/event/ComponentLifecycleCallback;
.super Ljava/lang/Object;
.source "ComponentLifecycleCallback.java"


# virtual methods
.method public abstract onBindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;ILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
