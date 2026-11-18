.class public Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;
.super Landroid/widget/LinearLayout;
.source "AutoPlayMask.java"


# instance fields
.field autoMaskView:Landroid/widget/LinearLayout;

.field groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

.field private hasCanceledAutoJump:Z

.field itemBean:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

.field searchProgress:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->hasCanceledAutoJump:Z

    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private cancelAutoJump()V
    .locals 2

    .line 132
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->hasCanceledAutoJump:Z

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->setCancelAutoJump(Ljava/util/function/Function;)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->setAutoPlay(Z)V

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->hasCanceledAutoJump:Z

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->searchProgress:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->stop()V

    .line 137
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->autoMaskView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_mask_auto_play:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->autoMaskView:Landroid/widget/LinearLayout;

    .line 42
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->autoMaskView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->autoMaskView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->autoMaskView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->autoMaskView:Landroid/widget/LinearLayout;

    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_play_count_down_mask:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$setGroupType$20$AutoPlayMask(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;Landroid/view/View;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->cancelAutoJump()V

    .line 115
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getGroupTypeEnum()Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    move-result-object p1

    sget-object p2, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->baike:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    if-ne p1, p2, :cond_0

    .line 116
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->stopTTSIfNeeded(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setGroupType$21$AutoPlayMask(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 0

    .line 121
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getGroupTypeEnum()Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    move-result-object p1

    sget-object p2, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->baike:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    if-ne p1, p2, :cond_0

    .line 122
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->stopTTSIfNeeded(Landroid/content/Context;)V

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->cancelAutoJump()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 143
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 144
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->cancelAutoJump()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setGroupType(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V
    .locals 9

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    .line 51
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->itemBean:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->autoMaskView:Landroid/widget/LinearLayout;

    sget v1, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->progress_wrapper:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 53
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->autoMaskView:Landroid/widget/LinearLayout;

    sget v2, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->progress_inner_wrapper:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 54
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 55
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->autoMaskView:Landroid/widget/LinearLayout;

    sget v3, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->auto_play_text:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 56
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 57
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->autoMaskView:Landroid/widget/LinearLayout;

    sget v5, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->auto_play_btn_cancel:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 58
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->autoMaskView:Landroid/widget/LinearLayout;

    sget v6, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->auto_play_progress:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    iput-object v5, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->searchProgress:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    .line 59
    sget-object v5, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$2;->$SwitchMap$com$alibaba$ailabs$genie$globalsearch$data$GroupType:[I

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getGroupTypeEnum()Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    .line 86
    :pswitch_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->playLongTTS(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 74
    :pswitch_1
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-static {v5, v8}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v0, v5}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 80
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v0, "\u5373\u5c06\u8df3\u8f6c\u81f3\u64ad\u653e\u9875"

    .line 81
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v4}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 65
    :pswitch_2
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x423c0000    # 47.0f

    invoke-static {v2, v5}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->searchProgress:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    const/4 v1, 0x1

    new-instance v2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;

    invoke-direct {v2, p0, v4, p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;Landroid/widget/Button;Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->setCountdownProgressListener(ILcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$OnCountdownProgressListener;)V

    .line 112
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->searchProgress:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->reStart()V

    .line 113
    new-instance p2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$AutoPlayMask$KL0Wjw5c4cM7GZBZgwkUIhl0gdA;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$AutoPlayMask$KL0Wjw5c4cM7GZBZgwkUIhl0gdA;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;)V

    invoke-virtual {v4, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object p2

    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$AutoPlayMask$6fCrMf8eyNmo5NZmwD2BtCkQ8RI;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$AutoPlayMask$6fCrMf8eyNmo5NZmwD2BtCkQ8RI;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;)V

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->setCancelAutoJump(Ljava/util/function/Function;)V

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->requestLayout()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
