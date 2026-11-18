.class Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$4;
.super Ljava/lang/Object;
.source "ContactsDetailsFragment.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "Lcom/alibaba/ailabs/genie/contacts/model/Contacts;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$4;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V
    .locals 3
    .param p1    # Lcom/alibaba/ailabs/genie/contacts/model/Contacts;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 184
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$4;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$300(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    .line 185
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 186
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$4;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$400(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;->layoutError:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsError;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsError;->setVisibility(I)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$4;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$400(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;->layoutContactsInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$4;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$400(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;->layoutContactsDial:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$4;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$400(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;->layoutContactsInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->setContacts(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    .line 191
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$4;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->setContactId(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$4;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$400(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;->layoutContactsDial:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->setFeature(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V

    .line 193
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isGenieUser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$4;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$400(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;->layoutDownloadTips:Lcom/alibaba/ailabs/genie/contacts/details/view/DownloadTipsView;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DownloadTipsView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$4;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$400(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;->layoutDownloadTips:Lcom/alibaba/ailabs/genie/contacts/details/view/DownloadTipsView;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DownloadTipsView;->setContacts(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 181
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$4;->onChanged(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    return-void
.end method
