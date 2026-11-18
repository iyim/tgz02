.class Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$1;
.super Ljava/lang/Object;
.source "MyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;

.field final synthetic val$holder:Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$1;->val$holder:Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 99
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$1;->val$holder:Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->getLayoutPosition()I

    move-result p1

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$1;->val$holder:Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->access$000(Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;)Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->access$000(Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;)Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$1;->val$holder:Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
