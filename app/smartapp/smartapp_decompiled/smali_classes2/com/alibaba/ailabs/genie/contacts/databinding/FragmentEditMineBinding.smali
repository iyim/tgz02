.class public abstract Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentEditMineBinding.java"


# instance fields
.field public final btnAddAvatar:Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final btnAddAvatarRipple:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final btnClose:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final btnSave:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final eivMobile:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final eivNickname:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final eivRelationship:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final tvAddAvatarTips:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final tvTitle:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 39
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->btnAddAvatar:Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;

    .line 40
    iput-object p5, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->btnAddAvatarRipple:Landroid/widget/Button;

    .line 41
    iput-object p6, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->btnClose:Landroid/widget/Button;

    .line 42
    iput-object p7, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->btnSave:Landroid/widget/Button;

    .line 43
    iput-object p8, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->eivMobile:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    .line 44
    iput-object p9, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->eivNickname:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    .line 45
    iput-object p10, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->eivRelationship:Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;

    .line 46
    iput-object p11, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->tvAddAvatarTips:Landroid/widget/TextView;

    .line 47
    iput-object p12, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 60
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;
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

    const v0, 0x7f0b00e8

    .line 72
    invoke-static {p1, p0, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 56
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;
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

    const v0, 0x7f0b00e8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-static {p0, v0, v1, v2, p1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;
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

    .line 52
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;
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

    const v0, 0x7f0b00e8

    .line 64
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding;

    return-object p0
.end method
