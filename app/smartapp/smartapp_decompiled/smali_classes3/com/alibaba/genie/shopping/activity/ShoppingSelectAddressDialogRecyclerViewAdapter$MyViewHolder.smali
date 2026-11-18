.class Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ShoppingSelectAddressDialogRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field ivSelect:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

.field tv_receive_address:Landroid/widget/TextView;

.field tv_receive_person:Landroid/widget/TextView;

.field tv_receive_tel:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$MyViewHolder;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    .line 156
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 157
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->ivSelect:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$MyViewHolder;->ivSelect:Landroid/widget/ImageView;

    .line 158
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_receive_person:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$MyViewHolder;->tv_receive_person:Landroid/widget/TextView;

    .line 159
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_receive_tel:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$MyViewHolder;->tv_receive_tel:Landroid/widget/TextView;

    .line 160
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_receive_address:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$MyViewHolder;->tv_receive_address:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;Landroid/view/View;Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$1;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$MyViewHolder;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;Landroid/view/View;)V

    return-void
.end method
