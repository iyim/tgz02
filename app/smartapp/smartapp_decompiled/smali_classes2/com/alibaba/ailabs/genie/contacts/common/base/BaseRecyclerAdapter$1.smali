.class Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "BaseRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->setListener(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter;->mItemClickListener:Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$IItemClickListener;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->id_item_recycle_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseRecyclerAdapter$IItemClickListener;->onItemClickListener(Landroid/view/View;I)V

    return-void
.end method
