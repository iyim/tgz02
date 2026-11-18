.class public Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyViewHolder"
.end annotation


# instance fields
.field public content:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;

.field public view:Landroid/view/View;

.field public yuan:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 44
    sget v0, Lcom/alibaba/ailabs/genie/pay/R$id;->pay_item_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->view:Landroid/view/View;

    .line 45
    sget v0, Lcom/alibaba/ailabs/genie/pay/R$id;->pay_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/alibaba/ailabs/genie/pay/R$id;->pay_item_price:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->content:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/alibaba/ailabs/genie/pay/R$id;->yuan:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->yuan:Landroid/widget/TextView;

    return-void
.end method
