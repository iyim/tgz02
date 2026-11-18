.class Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity$1;
.super Ljava/lang/Object;
.source "DetailsActivity.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;
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
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;

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

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    .line 140
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance p1, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;-><init>()V

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/details/StrangerDetailsFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->access$100(Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->access$200(Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;)Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsViewModel;->setContactsExtra(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    .line 145
    new-instance p1, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;-><init>()V

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/details/ContactsDetailsFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;->access$100(Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 136
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/DetailsActivity$1;->onChanged(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    return-void
.end method
