.class public interface abstract Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;
.super Ljava/lang/Object;
.source "ILayoutExtend.java"


# virtual methods
.method public abstract getLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
.end method

.method public abstract getRecyclerViewAdapter()Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;
.end method

.method public abstract init(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
.end method

.method public abstract rebuildBody(Lcom/alibaba/android/ultron/vfw/core/DataSource;)V
.end method

.method public abstract useCustomLayout()Z
.end method
