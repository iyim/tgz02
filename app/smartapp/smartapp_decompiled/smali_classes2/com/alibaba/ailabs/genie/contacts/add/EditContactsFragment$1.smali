.class Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment$1;
.super Ljava/lang/Object;
.source "EditContactsFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-nez p2, :cond_0

    .line 71
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding;->eivMobile:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->requestEditFocus()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
