.class public Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;
.super Landroid/support/constraint/ConstraintLayout;
.source "ContactsInfoView.java"


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$layout;->layout_contacts_info:I

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    return-void
.end method


# virtual methods
.method public setContacts(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->ivAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getAvatar()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_160:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->etName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->tvRelationship:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getRelationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->tvRelationship:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->btnMobile:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ValidatorUtil;->getTransformNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->switchMember:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->switchBlock:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->switchMember:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isFamilyMember()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->switchBlock:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->isInBlacklists()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    return-void
.end method

.method public setEditBtnVisibility(I)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->btnEdit:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setEditListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->btnEdit:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setEditMode(Z)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->etName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->etName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public setEditText(Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->btnEdit:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMine(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->ivAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getAvatar()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_160:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->etName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->btnMobile:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ValidatorUtil;->getTransformNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->tvRelationship:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getRelationName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->tvRelationship:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->btnMobile:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setStranger(Ljava/lang/String;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->ivAvatar:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$mipmap;->default_avatar_160:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_160:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/Integer;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->etName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->btnMobile:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ValidatorUtil;->getTransformNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->btnMobile:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->tvRelationship:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setSwitchBlockChecked(Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->switchBlock:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    return-void
.end method

.method public setSwitchBlockListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->switchBlock:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSwitchMemberChecked(Z)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->switchMember:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    return-void
.end method

.method public setSwitchMemberListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/ContactsInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding;->switchMember:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
