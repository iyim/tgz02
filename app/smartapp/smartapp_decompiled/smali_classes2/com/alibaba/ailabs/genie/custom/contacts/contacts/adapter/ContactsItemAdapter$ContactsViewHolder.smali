.class public Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ContactsItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsViewHolder"
.end annotation


# instance fields
.field private viewBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;)V
    .locals 1

    .line 97
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 98
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;->viewBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;->viewBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getBinding()Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter$ContactsViewHolder;->viewBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;

    return-object v0
.end method
