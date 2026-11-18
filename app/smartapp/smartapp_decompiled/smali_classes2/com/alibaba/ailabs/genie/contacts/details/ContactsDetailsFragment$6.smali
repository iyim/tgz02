.class Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$6;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

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

    .line 229
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$6;->onChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 232
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$100(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 237
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_blocked:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_block_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 241
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->getContacts()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$100(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setInBlacklists(Z)V

    goto :goto_1

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$400(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;->layoutContactsInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->access$100(Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->setSwitchBlockChecked(Z)V

    .line 244
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment$6;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
