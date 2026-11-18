.class Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RelationshipRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelationshipViewHolder"
.end annotation


# instance fields
.field public rootView:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;Landroid/view/View;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;

    .line 63
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    invoke-static {p2}, Landroid/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter$RelationshipViewHolder;->rootView:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    return-void
.end method
