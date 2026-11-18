.class public Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/feature/view/TRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field public final mContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 504
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 505
    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewHolder;->mContainer:Landroid/widget/FrameLayout;

    return-void
.end method
