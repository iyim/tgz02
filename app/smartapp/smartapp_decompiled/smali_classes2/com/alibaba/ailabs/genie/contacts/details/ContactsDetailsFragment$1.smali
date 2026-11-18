.class Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$1;
.super Ljava/lang/Object;
.source "ContactsDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContacts()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isFamilyMember()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$102(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;Z)Z

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->updateFamilyMember(Z)V

    return-void
.end method
