.class Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment$1;
.super Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
.source "ContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 56
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->noFriendsImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->contactsLayout:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;->setIntercept(Z)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->noFriendsImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->access$000(Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->contactsLayout:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;->setIntercept(Z)V

    :goto_0
    return-void
.end method
