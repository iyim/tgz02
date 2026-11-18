.class public abstract Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;
.super Landroid/databinding/ViewDataBinding;
.source "TabContactsBinding.java"


# instance fields
.field public final contactsLayout:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final contactsRecyclerview:Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mContactsitem:Lcom/alibaba/ailabs/genie/contacts/item/ContactsItem;

.field public final noContactsImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final noContactsLayout:Landroid/support/constraint/ConstraintLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final noFriendsImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final verticalScrollBar:Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;Landroid/widget/ImageView;Landroid/support/constraint/ConstraintLayout;Landroid/widget/ImageView;Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;)V
    .locals 0
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 31
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->contactsLayout:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;

    .line 32
    iput-object p5, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->contactsRecyclerview:Lcom/alibaba/ailabs/genie/contacts/view/CustomRecyclerView;

    .line 33
    iput-object p6, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->noContactsImage:Landroid/widget/ImageView;

    .line 34
    iput-object p7, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->noContactsLayout:Landroid/support/constraint/ConstraintLayout;

    .line 35
    iput-object p8, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->noFriendsImage:Landroid/widget/ImageView;

    .line 36
    iput-object p9, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->verticalScrollBar:Lcom/alibaba/ailabs/genie/contacts/test/VerticalScrollBar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 54
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b01ec

    .line 66
    invoke-static {p1, p0, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 50
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b01ec

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-static {p0, v0, v1, v2, p1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 46
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b01ec

    .line 58
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;

    return-object p0
.end method


# virtual methods
.method public getContactsitem()Lcom/alibaba/ailabs/genie/contacts/item/ContactsItem;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding;->mContactsitem:Lcom/alibaba/ailabs/genie/contacts/item/ContactsItem;

    return-object v0
.end method

.method public abstract setContactsitem(Lcom/alibaba/ailabs/genie/contacts/item/ContactsItem;)V
    .param p1    # Lcom/alibaba/ailabs/genie/contacts/item/ContactsItem;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
