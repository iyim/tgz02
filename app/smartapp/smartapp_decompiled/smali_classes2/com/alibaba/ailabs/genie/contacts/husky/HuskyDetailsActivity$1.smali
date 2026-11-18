.class Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$1;
.super Ljava/lang/Object;
.source "HuskyDetailsActivity.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;)V
    .locals 2
    .param p1    # Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    if-nez p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->access$100(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;->tvHuskyContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_husky_content:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;-><init>(Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->access$202(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->access$100(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;->tvHuskyContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;->access$100(Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;->layoutExit:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->setTitle(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/husky/HuskyDetailsActivity$1;->onChanged(Lcom/alibaba/ailabs/genie/contacts/model/HuskyInfo;)V

    return-void
.end method
