.class public interface abstract Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;
.super Ljava/lang/Object;
.source "IViewHolderProvider.java"


# virtual methods
.method public abstract bindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;)V
.end method

.method public abstract createViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;
.end method

.method public abstract destroy()V
.end method

.method public abstract getItemViewType(Lcom/taobao/android/ultron/common/model/IDMComponent;)I
.end method
