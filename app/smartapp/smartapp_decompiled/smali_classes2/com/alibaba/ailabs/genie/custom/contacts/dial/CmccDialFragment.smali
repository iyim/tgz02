.class public Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;
.super Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;
.source "CmccDialFragment.java"

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

.field private mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

.field private mDialEnable:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mToneGeneratorLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mDialEnable:Z

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mAnim:Landroid/animation/ValueAnimator;

    .line 49
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private dialOut(Z)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->numberContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contacts_dail"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-direct {v2, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/RTCUtil;->callVoip(Landroid/content/Context;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;Z)V

    .line 204
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$CmccDialFragment$QozPimuAYT625yXl_RNkyDwumK4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$CmccDialFragment$QozPimuAYT625yXl_RNkyDwumK4;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initClickEvent()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "contacts_dail"

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDTMFToneEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mDTMFToneEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    sput-boolean v2, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mDTMFToneEnabled:Z

    .line 92
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :try_start_1
    sget-boolean v3, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mDTMFToneEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v3, :cond_1

    .line 94
    new-instance v3, Landroid/media/ToneGenerator;

    const/16 v4, 0x50

    const/16 v5, 0x8

    invoke-direct {v3, v5, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 98
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

    .line 100
    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    sput-boolean v1, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mDTMFToneEnabled:Z

    const/4 v2, 0x0

    .line 102
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 105
    :goto_1
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->numberContent:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 106
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->numberContent:Landroid/widget/TextView;

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateTwo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateThree:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateFour:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateFive:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateSix:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateSeven:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateEight:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateNine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateXing:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateJing:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->deleteNumberButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->btnRippleDial:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->btnVideoDial:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->deleteNumberButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$CmccDialFragment$AE8GeLRZBsP3o-n1va2Ob7yStx4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$CmccDialFragment$AE8GeLRZBsP3o-n1va2Ob7yStx4;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->startBackgroundAnimator(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic lambda$startBackgroundAnimator$19(Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 257
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 258
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 259
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private playTone(I)V
    .locals 4

    .line 211
    sget-boolean v0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 215
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_2

    const-string v1, "contacts_dail"

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    monitor-exit v0

    return-void

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x78

    invoke-virtual {v1, p1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 227
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
    .locals 9

    .line 234
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mDialEnable:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->btnDialBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 238
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->btnVideoBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "rotation"

    const/16 v5, 0x15

    const/4 v6, 0x2

    if-eqz p1, :cond_2

    .line 240
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v5, :cond_1

    .line 241
    new-array v5, v6, [I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    sget v8, Lcom/alibaba/ailabs/genie/custom/contacts/R$color;->custom_blue:I

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v3

    .line 242
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v7, Lcom/alibaba/ailabs/genie/custom/contacts/R$color;->custom_green:I

    invoke-static {v3, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v5, v2

    .line 241
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mAnim:Landroid/animation/ValueAnimator;

    .line 244
    :cond_1
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->btnDialIcon:Landroid/widget/ImageView;

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 246
    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v5, :cond_3

    .line 247
    new-array v5, v6, [I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    sget v8, Lcom/alibaba/ailabs/genie/custom/contacts/R$color;->custom_green:I

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v3

    .line 248
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v7, Lcom/alibaba/ailabs/genie/custom/contacts/R$color;->custom_blue:I

    invoke-static {v3, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v5, v2

    .line 247
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mAnim:Landroid/animation/ValueAnimator;

    .line 250
    :cond_3
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->btnDialIcon:Landroid/widget/ImageView;

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 252
    :goto_0
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mDialEnable:Z

    .line 253
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 254
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 256
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$CmccDialFragment$po3Hd6-OT5vbyykEp2qC5j7sEC8;

    invoke-direct {v2, v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/-$$Lambda$CmccDialFragment$po3Hd6-OT5vbyykEp2qC5j7sEC8;-><init>(Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 262
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 263
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mAnimator:Landroid/animation/ObjectAnimator;

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

    .line 180
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->numberContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 185
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->deleteNumberButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->startBackgroundAnimator(Z)V

    goto :goto_1

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->deleteNumberButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->startBackgroundAnimator(Z)V

    .line 194
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->numberContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 60
    sget p3, Lcom/alibaba/ailabs/genie/custom/contacts/R$layout;->custom_tab_cmcc_dial:I

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    .line 61
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->getRoot()Landroid/view/View;

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

.method public synthetic lambda$dialOut$18$CmccDialFragment()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->numberContent:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$initClickEvent$17$CmccDialFragment(Landroid/view/View;)Z
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->numberContent:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mBinding:Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->deleteNumberButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 126
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->startBackgroundAnimator(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 134
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_one:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 135
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->playTone(I)V

    const-string p1, "1"

    .line 136
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_two:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 138
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->playTone(I)V

    const-string p1, "2"

    .line 139
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_1
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_three:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    .line 141
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->playTone(I)V

    const-string p1, "3"

    .line 142
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_2
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_four:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    .line 144
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->playTone(I)V

    const-string p1, "4"

    .line 145
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :cond_3
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_five:I

    if-ne p1, v0, :cond_4

    const/4 p1, 0x5

    .line 147
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->playTone(I)V

    const-string p1, "5"

    .line 148
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :cond_4
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_six:I

    if-ne p1, v0, :cond_5

    const/4 p1, 0x6

    .line 150
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->playTone(I)V

    const-string p1, "6"

    .line 151
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_5
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_seven:I

    if-ne p1, v0, :cond_6

    const/4 p1, 0x7

    .line 153
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->playTone(I)V

    const-string p1, "7"

    .line 154
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_6
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_eight:I

    if-ne p1, v0, :cond_7

    const/16 p1, 0x8

    .line 156
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->playTone(I)V

    const-string p1, "8"

    .line 157
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_7
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_nine:I

    if-ne p1, v0, :cond_8

    const/16 p1, 0x9

    .line 159
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->playTone(I)V

    const-string p1, "9"

    .line 160
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_8
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_zero:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_9

    .line 162
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->playTone(I)V

    const-string p1, "0"

    .line 163
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_9
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_xing:I

    if-ne p1, v0, :cond_a

    const/16 p1, 0xa

    .line 165
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->playTone(I)V

    const-string p1, "*"

    .line 166
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_a
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->dial_plate_jing:I

    if-ne p1, v0, :cond_b

    const/16 p1, 0xb

    .line 168
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->playTone(I)V

    const-string p1, "#"

    .line 169
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_b
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->delete_number_button:I

    if-ne p1, v0, :cond_c

    const-string p1, ""

    .line 171
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->updateNumberContent(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_c
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->btn_ripple_dial:I

    if-ne p1, v0, :cond_d

    .line 173
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->dialOut(Z)V

    goto :goto_0

    .line 174
    :cond_d
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$id;->btn_video_dial:I

    if-ne p1, v0, :cond_e

    .line 175
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->dialOut(Z)V

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

    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->mViewModel:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewModel;

    const-string p1, "contacts_dail"

    const-string v0, "mmp>>> CmccDialFragment:onCreate "

    .line 55
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 82
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->onStart()V

    .line 83
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->initClickEvent()V

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

    .line 66
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/dial/CmccDialFragment;->initView()V

    .line 67
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
