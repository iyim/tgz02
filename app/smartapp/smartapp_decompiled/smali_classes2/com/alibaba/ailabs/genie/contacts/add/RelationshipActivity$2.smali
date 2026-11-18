.class Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$2;
.super Ljava/lang/Object;
.source "RelationshipActivity.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/alibaba/ailabs/genie/contacts/model/Relationship;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 103
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$2;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Relationship;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->access$100(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->setLists(Ljava/util/List;)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->access$100(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->updateView()V

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->access$200(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->getSelectedRelationShip()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->access$200(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->access$200(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->getSelectedRelationShip()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/contacts/model/Relationship;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->setEditSelectPosition(Ljava/util/List;Lcom/alibaba/ailabs/genie/contacts/model/Relationship;)V

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->access$100(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;->access$200(Lcom/alibaba/ailabs/genie/contacts/add/RelationshipActivity;)Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipViewModel;->getSelectedPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/add/RelationshipRecyclerAdapter;->changeSelectedItem(I)V

    :cond_1
    return-void
.end method
