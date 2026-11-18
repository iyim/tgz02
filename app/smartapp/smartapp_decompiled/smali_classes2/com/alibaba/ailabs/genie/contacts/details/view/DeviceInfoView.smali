.class public Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;
.super Landroid/support/constraint/ConstraintLayout;
.source "DeviceInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView$IEditDoneListener;
    }
.end annotation


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->init(Landroid/content/Context;)V

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
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->init(Landroid/content/Context;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$layout;->layout_device_info:I

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    .line 43
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;->etName:Landroid/widget/EditText;

    const/16 v0, 0xb0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    const/16 p1, 0xa

    .line 44
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->setMaxLength(I)V

    return-void
.end method

.method static synthetic lambda$setEditDoneListener$37(Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView$IEditDoneListener;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 81
    invoke-interface {p0}, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView$IEditDoneListener;->onEditDoneClick()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getEditText()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;->etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameEditTextId()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;->etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    return v0
.end method

.method public requestEditFocus()V
    .locals 9

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;->etName:Landroid/widget/EditText;

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

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;->etName:Landroid/widget/EditText;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;->etName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;->etName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public setDevice(Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;->ivAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceIcon()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_260:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;->tvRelationship:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;->etName:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->getDeviceNameAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEditBtnVisibility(I)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;->btnEdit:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setEditDoneListener(Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView$IEditDoneListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;->etName:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DeviceInfoView$WIyxK1j8kO_9eIKEZpChyrnbojA;

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DeviceInfoView$WIyxK1j8kO_9eIKEZpChyrnbojA;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView$IEditDoneListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public setEditListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;->btnEdit:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setEditMode(Z)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;->etName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;->etName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public setEditText(Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;->btnEdit:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMaxLength(I)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DeviceInfoView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding;->etName:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method
