.class Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$2;
.super Ljava/lang/Object;
.source "ShoppingSelectAddressDialogRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;->onBindViewHolder(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

.field final synthetic val$holder:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$MyViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;ILcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$MyViewHolder;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    iput p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$2;->val$holder:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 106
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;->access$200(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;->access$100(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$MyViewHolder;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$MyViewHolder;->ivSelect:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;->access$100(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;->notifyItemChanged(I)V

    .line 114
    :goto_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;->access$100(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;->access$300(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;->access$100(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    iput-boolean v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->isSelected:Z

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    iget v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$2;->val$position:I

    invoke-static {p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;->access$102(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;I)I

    .line 119
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;->access$300(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;->access$100(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->isSelected:Z

    .line 120
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$2;->val$holder:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$MyViewHolder;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$MyViewHolder;->ivSelect:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 123
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;->access$400(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;)Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;->access$300(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$OnItemClickListener;->onItemClick(Ljava/util/List;)V

    return-void
.end method
