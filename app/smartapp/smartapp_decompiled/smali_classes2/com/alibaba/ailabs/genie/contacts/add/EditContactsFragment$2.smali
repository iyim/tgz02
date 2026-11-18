.class Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment$2;
.super Ljava/lang/Object;
.source "EditContactsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;
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

    .line 183
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;->access$100(Lcom/alibaba/ailabs/genie/contacts/add/EditContactsFragment;)Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/add/AddViewModel;->deleteContacts()V

    return-void
.end method
