.class Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderSimilar;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ExtendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolderSimilar"
.end annotation


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;)V
    .locals 0

    .line 251
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
