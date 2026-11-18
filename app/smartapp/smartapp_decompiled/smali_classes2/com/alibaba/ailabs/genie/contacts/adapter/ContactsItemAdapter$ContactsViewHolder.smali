.class Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ContactsItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactsViewHolder"
.end annotation


# instance fields
.field private binding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;->this$0:Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;

    .line 133
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 134
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;->binding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;

    return-void
.end method


# virtual methods
.method public getBinding()Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;->binding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;

    return-object v0
.end method
