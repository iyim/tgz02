.class public Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;
.super Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;
.source "DialFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ANIMATOR_DURING_TIME:I = 0xc8

.field private static final DTMF_DURATION_MS:I = 0x78

.field private static final TAG:Ljava/lang/String; = "contacts_dail"

.field private static mDTMFToneEnabled:Z


# instance fields
.field private mAnim:Landroid/animation/ValueAnimator;

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

.field private mDialEnable:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mToneGeneratorLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mDialEnable:Z

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mAnim:Landroid/animation/ValueAnimator;

    .line 50
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private dialOut()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->numberContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contacts_dail"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/ProductUtil;->isCMCC()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-direct {v2, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;Z)V

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-direct {v2, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;-><init>(Ljava/lang/String;)V

    const-string v0, "PSTN"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->callCuVOIP(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;Ljava/lang/String;)V

    .line 206
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$DialFragment$xWaX4QL9smYiJD3bXCkbB0AhtjI;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$DialFragment$xWaX4QL9smYiJD3bXCkbB0AhtjI;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initClickEvent()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "contacts_dail"

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDTMFToneEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mDTMFToneEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mDTMFToneEnabled:Z

    .line 93
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :try_start_1
    sget-boolean v3, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mDTMFToneEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v3, :cond_1

    .line 95
    new-instance v3, Landroid/media/ToneGenerator;

    const/16 v4, 0x50

    const/16 v5, 0x8

    invoke-direct {v3, v5, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 99
    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    const-string v3, "contacts_dail"

    .line 101
    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    sput-boolean v1, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mDTMFToneEnabled:Z

    const/4 v2, 0x0

    .line 103
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 106
    :goto_1
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->numberContent:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 107
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->numberContent:Landroid/widget/TextView;

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->dialPlateOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->dialPlateTwo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->dialPlateThree:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->dialPlateFour:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->dialPlateFive:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->dialPlateSix:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->dialPlateSeven:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->dialPlateEight:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->dialPlateNine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->dialPlateZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->dialPlateXing:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->dialPlateJing:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->deleteNumberButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->btnRippleDial:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->deleteNumberButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$DialFragment$9ga5uZzlNqQwTP-FoFmvd5x0Mvs;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$DialFragment$9ga5uZzlNqQwTP-FoFmvd5x0Mvs;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->startBackgroundAnimator(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic lambda$startBackgroundAnimator$16(Landroid/graphics/drawable/GradientDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 258
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 259
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private playTone(I)V
    .locals 4

    .line 213
    sget-boolean v0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 217
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_2

    const-string v1, "contacts_dail"

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    monitor-exit v0

    return-void

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x78

    invoke-virtual {v1, p1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 229
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

    .line 236
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mDialEnable:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->btnDialBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "rotation"

    const/16 v4, 0x15

    const/4 v5, 0x2

    if-eqz p1, :cond_2

    .line 241
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_1

    .line 242
    new-array v4, v5, [I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    sget v7, Lcom/alibaba/ailabs/genie/custom/contacts/R$color;->custom_blue:I

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    aput v6, v4, v2

    .line 243
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v6, Lcom/alibaba/ailabs/genie/custom/contacts/R$color;->custom_green:I

    invoke-static {v2, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v4, v1

    .line 242
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mAnim:Landroid/animation/ValueAnimator;

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->btnDialIcon:Landroid/widget/ImageView;

    new-array v2, v5, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 247
    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_3

    .line 248
    new-array v4, v5, [I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    sget v7, Lcom/alibaba/ailabs/genie/custom/contacts/R$color;->custom_green:I

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    aput v6, v4, v2

    .line 249
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v6, Lcom/alibaba/ailabs/genie/custom/contacts/R$color;->custom_blue:I

    invoke-static {v2, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v4, v1

    .line 248
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mAnim:Landroid/animation/ValueAnimator;

    .line 251
    :cond_3
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->btnDialIcon:Landroid/widget/ImageView;

    new-array v2, v5, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 253
    :goto_0
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mDialEnable:Z

    .line 254
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 255
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 257
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$DialFragment$mkoUfcl3qL7I_bO-Z0D8LH_DdfI;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$DialFragment$mkoUfcl3qL7I_bO-Z0D8LH_DdfI;-><init>(Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 262
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 263
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mAnimator:Landroid/animation/ObjectAnimator;

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

.method private updateNumberContent(Ljava/lang/String;)V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->numberContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 183
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->deleteNumberButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->startBackgroundAnimator(Z)V

    goto :goto_1

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->deleteNumberButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->startBackgroundAnimator(Z)V

    .line 192
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->numberContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 61
    sget p3, Lcom/alibaba/ailabs/genie/custom/contacts/R$layout;->custom_tab_dial:I

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    .line 62
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getUtPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Call_keypad"

    return-object v0
.end method

.method public getUtPageSpm()Ljava/lang/String;
    .locals 1

    const-string v0, "a1z3lt.12013438"

    return-object v0
.end method

.method public isOpenUt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$dialOut$15$DialFragment()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->numberContent:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$initClickEvent$14$DialFragment(Landroid/view/View;)Z
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->numberContent:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;->deleteNumberButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 126
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->startBackgroundAnimator(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 134
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_one:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 135
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->playTone(I)V

    const-string p1, "1"

    .line 136
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_two:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 138
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->playTone(I)V

    const-string p1, "2"

    .line 139
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_1
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_three:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    .line 141
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->playTone(I)V

    const-string p1, "3"

    .line 142
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_2
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_four:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    .line 144
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->playTone(I)V

    const-string p1, "4"

    .line 145
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :cond_3
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_five:I

    if-ne p1, v0, :cond_4

    const/4 p1, 0x5

    .line 147
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->playTone(I)V

    const-string p1, "5"

    .line 148
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :cond_4
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_six:I

    if-ne p1, v0, :cond_5

    const/4 p1, 0x6

    .line 150
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->playTone(I)V

    const-string p1, "6"

    .line 151
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_5
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_seven:I

    if-ne p1, v0, :cond_6

    const/4 p1, 0x7

    .line 153
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->playTone(I)V

    const-string p1, "7"

    .line 154
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_6
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_eight:I

    if-ne p1, v0, :cond_7

    const/16 p1, 0x8

    .line 156
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->playTone(I)V

    const-string p1, "8"

    .line 157
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_7
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_nine:I

    if-ne p1, v0, :cond_8

    const/16 p1, 0x9

    .line 159
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->playTone(I)V

    const-string p1, "9"

    .line 160
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_8
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_zero:I

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    .line 162
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->playTone(I)V

    const-string p1, "0"

    .line 163
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_9
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_xing:I

    if-ne p1, v0, :cond_a

    const/16 p1, 0xa

    .line 165
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->playTone(I)V

    const-string p1, "*"

    .line 166
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_a
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_jing:I

    if-ne p1, v0, :cond_b

    const/16 p1, 0xb

    .line 168
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->playTone(I)V

    const-string p1, "#"

    .line 169
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_b
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->delete_number_button:I

    if-ne p1, v0, :cond_c

    const-string p1, ""

    .line 171
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_c
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->btn_ripple_dial:I

    if-ne p1, v0, :cond_d

    .line 173
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->dialOut()V

    :cond_d
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    const-string p1, "contacts_dail"

    const-string v0, "mmp>>> DialFragment:onCreate "

    .line 56
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 83
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->onStart()V

    .line 84
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->initClickEvent()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/DialFragment;->initView()V

    .line 68
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public requestData()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
