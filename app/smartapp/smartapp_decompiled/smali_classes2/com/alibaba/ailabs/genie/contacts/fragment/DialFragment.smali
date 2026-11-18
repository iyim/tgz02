.class public Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;
.super Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;
.source "DialFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ANIMATOR_DURING_TIME:I = 0xc8

.field private static final DTMF_DURATION_MS:I = 0x78

.field private static final TAG:Ljava/lang/String; = "contacts_DialFragment"

.field private static mDTMFToneEnabled:Z


# instance fields
.field anim:Landroid/animation/ValueAnimator;

.field animator:Landroid/animation/ObjectAnimator;

.field public cmccBusinessHelper:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;

.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

.field private mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

.field private mContainer:Landroid/view/ViewGroup;

.field private mDbReader:Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;

.field private mDialEnable:Z

.field private mTextView:Landroid/widget/TextView;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mViewModel:Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

.field private typeTemp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mToneGeneratorLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mDialEnable:Z

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->anim:Landroid/animation/ValueAnimator;

    .line 61
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->animator:Landroid/animation/ObjectAnimator;

    .line 257
    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->typeTemp:I

    return-void
.end method

.method private dialOut()V
    .locals 3

    .line 315
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ClickUTUtils;->utDialClick()V

    .line 316
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contacts_DialFragment"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mDbReader:Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->getContactsByNum(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object v1

    .line 322
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callPstn(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    goto :goto_0

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callPstn(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initClickEvent()V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->number_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mTextView:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 159
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->cmccBusinessHelper:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;

    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_one:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_two:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_three:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_four:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_five:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_six:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_seven:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_eight:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_nine:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_zero:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_xing:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_jing:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->add_new_contacts:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->delete_number_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->btn_ripple_dial:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->delete_number_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$DialFragment$G9Zywm4P0RwdZwIvJJP66mvz1tY;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$DialFragment$G9Zywm4P0RwdZwIvJJP66mvz1tY;-><init>(Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->tvTop:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private initComponents()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->startBackgroundAnimator(Z)V

    .line 101
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->subscribePstnMinutes()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic lambda$startBackgroundAnimator$66(Landroid/graphics/drawable/GradientDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 375
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 376
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private playTone(I)V
    .locals 4

    .line 333
    sget-boolean v0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 337
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_2

    const-string v1, "contacts_DialFragment"

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    monitor-exit v0

    return-void

    .line 348
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x78

    invoke-virtual {v1, p1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 349
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method private startBackgroundAnimator(Z)V
    .locals 8

    .line 356
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mDialEnable:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->btn_dial_bg:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 360
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "rotation"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_1

    .line 362
    new-array v5, v4, [I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    sget v7, Lcom/alibaba/ailabs/genie/contacts/R$color;->con_blue:I

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    aput v6, v5, v3

    .line 363
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v6, Lcom/alibaba/ailabs/genie/contacts/R$color;->con_green:I

    invoke-static {v3, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v5, v2

    .line 362
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->anim:Landroid/animation/ValueAnimator;

    .line 364
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v3, Lcom/alibaba/ailabs/genie/contacts/R$id;->btn_dial_icon:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->animator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 366
    :cond_1
    new-array v5, v4, [I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    sget v7, Lcom/alibaba/ailabs/genie/contacts/R$color;->con_green:I

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    aput v6, v5, v3

    .line 367
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v6, Lcom/alibaba/ailabs/genie/contacts/R$color;->con_blue:I

    invoke-static {v3, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v5, v2

    .line 366
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->anim:Landroid/animation/ValueAnimator;

    .line 368
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v3, Lcom/alibaba/ailabs/genie/contacts/R$id;->btn_dial_icon:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->animator:Landroid/animation/ObjectAnimator;

    .line 370
    :goto_0
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mDialEnable:Z

    .line 371
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->anim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 372
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 374
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->anim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$DialFragment$6JmSdBZbGUkwoFm_Cb_amI2F2gU;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$DialFragment$6JmSdBZbGUkwoFm_Cb_amI2F2gU;-><init>(Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 379
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 380
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x42b40000    # 90.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data
.end method

.method private subscribePstnMinutes()V
    .locals 2

    .line 105
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->getInstance()Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mDbReader:Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->getLivePstnCharge()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$DialFragment$e_jHXBOo2GN3w-oRzBagwyTPjC0;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$DialFragment$e_jHXBOo2GN3w-oRzBagwyTPjC0;-><init>(Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method private updateNumberContent(Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v1, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 267
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 269
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$id;->delete_number_button:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->startBackgroundAnimator(Z)V

    goto :goto_1

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$id;->delete_number_button:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 274
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->startBackgroundAnimator(Z)V

    .line 276
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_2

    .line 277
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->addNewContacts:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->addNewContacts:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    :goto_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->numberContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-le v2, v3, :cond_3

    .line 283
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->numberContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/alibaba/ailabs/genie/contacts/R$dimen;->text_size_24:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 284
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v3, 0xa2

    const/16 v5, 0x22

    invoke-virtual {v2, v3, v5, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v2, 0xd9

    .line 285
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v2, 0x28

    .line 286
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 287
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->numberContent:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 289
    :cond_3
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->numberContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/alibaba/ailabs/genie/contacts/R$dimen;->text_size_36:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 290
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v3, 0x7b

    const/16 v5, 0x18

    invoke-virtual {v2, v3, v5, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v2, 0x100

    .line 291
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v2, 0x32

    .line 292
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 293
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->numberContent:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    :goto_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mDbReader:Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;->getContactsByNum(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    .line 297
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 299
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->nickName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->relationship:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContacts:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getRelationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->nickName:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->relationship:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->addNewContacts:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 305
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->nickName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->relationship:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 310
    invoke-virtual {p1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    :goto_4
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 79
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    .line 80
    sget p3, Lcom/alibaba/ailabs/genie/contacts/R$layout;->tab_dial:I

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    .line 81
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getCheckPackageData(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;)V
    .locals 1

    .line 193
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->getCheckPackageData(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;)V

    .line 194
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->cmccBusinessHelper:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->dialFragmentDisplay(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;)V

    :cond_0
    return-void
.end method

.method public hideHint()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->cmccBusinessHelper:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->setHintVisibility(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initClickEvent$65$DialFragment(Landroid/view/View;)Z
    .locals 1

    .line 179
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mTextView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->delete_number_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 181
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->startBackgroundAnimator(Z)V

    .line 182
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->nickName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->relationship:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->addNewContacts:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$subscribePstnMinutes$64$DialFragment(Ljava/lang/String;)V
    .locals 5

    .line 107
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->hasInstallCmRtc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->leaveTime:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on pstn minutes changed..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_DialFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->leaveTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$dimen;->text_size_20:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 114
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->leaveTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_no_account:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 117
    :cond_1
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ValidatorUtil;->fenToYuan(Ljava/lang/String;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 119
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->leaveTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$dimen;->text_size_20:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 120
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->leaveTime:Landroid/widget/TextView;

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_less_than_three_minutes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->leaveTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$dimen;->text_size_24:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->leaveTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_available_minutes:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 126
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ValidatorUtil;->formatYuan(F)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 125
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 208
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_one:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 209
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->playTone(I)V

    const-string p1, "1"

    .line 210
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_two:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 212
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->playTone(I)V

    const-string p1, "2"

    .line 213
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :cond_1
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_three:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    .line 215
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->playTone(I)V

    const-string p1, "3"

    .line 216
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :cond_2
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_four:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    .line 218
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->playTone(I)V

    const-string p1, "4"

    .line 219
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    :cond_3
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_five:I

    if-ne p1, v0, :cond_4

    const/4 p1, 0x5

    .line 221
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->playTone(I)V

    const-string p1, "5"

    .line 222
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    :cond_4
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_six:I

    if-ne p1, v0, :cond_5

    const/4 p1, 0x6

    .line 224
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->playTone(I)V

    const-string p1, "6"

    .line 225
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :cond_5
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_seven:I

    if-ne p1, v0, :cond_6

    const/4 p1, 0x7

    .line 227
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->playTone(I)V

    const-string p1, "7"

    .line 228
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :cond_6
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_eight:I

    if-ne p1, v0, :cond_7

    const/16 p1, 0x8

    .line 230
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->playTone(I)V

    const-string p1, "8"

    .line 231
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :cond_7
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_nine:I

    if-ne p1, v0, :cond_8

    const/16 p1, 0x9

    .line 233
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->playTone(I)V

    const-string p1, "9"

    .line 234
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_8
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_zero:I

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    .line 236
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->playTone(I)V

    const-string p1, "0"

    .line 237
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_9
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_xing:I

    if-ne p1, v0, :cond_a

    const/16 p1, 0xa

    .line 239
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->playTone(I)V

    const-string p1, "*"

    .line 240
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_a
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->dial_plate_jing:I

    if-ne p1, v0, :cond_b

    const/16 p1, 0xb

    .line 242
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->playTone(I)V

    const-string p1, "#"

    .line 243
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_b
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->delete_number_button:I

    if-ne p1, v0, :cond_c

    const-string p1, ""

    .line 245
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_c
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->add_new_contacts:I

    if-ne p1, v0, :cond_d

    .line 247
    new-instance p1, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;-><init>()V

    .line 248
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->setMobile(Ljava/lang/String;)V

    .line 249
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alibaba/ailabs/genie/contacts/add/AddContactsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "contacts"

    .line 250
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 252
    :cond_d
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$id;->btn_ripple_dial:I

    if-ne p1, v0, :cond_e

    .line 253
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->dialOut()V

    :cond_e
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 386
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->onDestroy()V

    .line 387
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->cmccBusinessHelper:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->onDestroy()V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->unbind()V

    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 134
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->onStart()V

    .line 135
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->initClickEvent()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 86
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->hasInstallCmRtc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;-><init>(Landroid/app/Activity;Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->cmccBusinessHelper:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->initComponents()V

    .line 90
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public requestData()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->mViewModel:Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/model/ItemViewModel;->fetchPstnCharge()V

    return-void
.end method
