.class Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment$1;
.super Ljava/lang/Object;
.source "EditMineFragment.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;
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
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;

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

    .line 167
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment$1;->onChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_update_success:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 172
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x1

    const-string v1, "isUpdate"

    .line 173
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 175
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/add/EditMineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
