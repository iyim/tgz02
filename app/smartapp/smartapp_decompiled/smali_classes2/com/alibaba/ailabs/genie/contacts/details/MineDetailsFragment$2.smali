.class Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$2;
.super Ljava/lang/Object;
.source "MineDetailsFragment.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;
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
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V
    .locals 2
    .param p1    # Lcom/alibaba/ailabs/genie/contacts/model/Contacts;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 137
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->access$100(Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_delete_already:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->access$200(Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;->layoutMineInfo:Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->setMine(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;->access$200(Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;->layoutMineDial:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->setFeature(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 134
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/MineDetailsFragment$2;->onChanged(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    return-void
.end method
