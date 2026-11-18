.class Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RelationshipActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

.field final synthetic val$layoutManager:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$1;->val$layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 78
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$1;->val$layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result p1

    .line 79
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$1;->val$layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result p2

    .line 80
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$1;->val$layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    add-int/2addr p3, p1

    const/16 p1, 0x8

    const/4 v0, 0x0

    if-lt p3, p2, :cond_0

    .line 82
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;->viewMaskTop:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;->viewMaskBottom:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$1;->val$layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p2

    if-nez p2, :cond_1

    .line 85
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;->viewMaskTop:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;->viewMaskBottom:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;->viewMaskTop:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding;->viewMaskBottom:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
