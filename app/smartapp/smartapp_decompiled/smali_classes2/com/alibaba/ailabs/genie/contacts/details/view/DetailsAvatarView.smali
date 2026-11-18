.class public Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;
.super Landroid/widget/RelativeLayout;
.source "DetailsAvatarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView$IEditDoneListener;
    }
.end annotation


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->init(Landroid/content/Context;)V

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

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->init(Landroid/content/Context;)V

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

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$layout;->layout_contacts_avatar:I

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    return-void
.end method

.method static synthetic lambda$setEditDoneListener$43(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView$IEditDoneListener;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 110
    invoke-interface {p0}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView$IEditDoneListener;->onEditDoneClick()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getEditText()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->etName:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->getEditText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameEditTextId()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->etName:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->getId()I

    move-result v0

    return v0
.end method

.method public requestEditFocus()V
    .locals 9

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->etName:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->requestFocus()Z

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->etName:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->etName:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->etName:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->etName:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setSelection(I)V

    return-void
.end method

.method public setContacts(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->ivAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getAvatar()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_160:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->etName:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->tvRelationship:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getRelationName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->tvRelationship:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->btnMobile:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setDevice(Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->ivAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceIcon()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_260:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->etName:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceNameAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->tvRelationship:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getPosition()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->btnMobile:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setEditDoneListener(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView$IEditDoneListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->etName:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsAvatarView$A_SI3Kh96m6c___4ciLdVHIOmyo;

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsAvatarView$A_SI3Kh96m6c___4ciLdVHIOmyo;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView$IEditDoneListener;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public setEditMode(Z)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->etName:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setFocusable(Z)V

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->etName:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public setMine(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->ivAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getAvatar()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_160:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->etName:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->btnMobile:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ValidatorUtil;->getTransformNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->tvRelationship:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->btnMobile:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setStranger(Ljava/lang/String;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->ivAvatar:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$mipmap;->default_avatar_160:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_160:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/Integer;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->etName:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->btnMobile:Landroid/widget/Button;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ValidatorUtil;->getTransformNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->btnMobile:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->tvRelationship:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsAvatarView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;->etName:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->update()V

    return-void
.end method
