.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaikeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VH"
.end annotation


# instance fields
.field final mBgIV:Landroid/widget/ImageView;

.field final mIndexT:Landroid/widget/TextView;

.field final mTitleTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;->mBgIV:Landroid/widget/ImageView;

    .line 32
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;->mTitleTV:Landroid/widget/TextView;

    .line 33
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;->mIndexT:Landroid/widget/TextView;

    return-void
.end method
