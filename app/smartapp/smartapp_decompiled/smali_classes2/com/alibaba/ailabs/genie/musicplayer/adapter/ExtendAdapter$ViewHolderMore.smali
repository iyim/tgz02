.class Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderMore;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ExtendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolderMore"
.end annotation


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;)V
    .locals 0

    .line 263
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
