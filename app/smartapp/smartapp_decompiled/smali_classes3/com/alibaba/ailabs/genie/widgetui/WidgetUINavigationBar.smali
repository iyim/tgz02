.class public Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;
.super Landroid/widget/FrameLayout;
.source "WidgetUINavigationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;
    }
.end annotation


# instance fields
.field private mBackBtn:Landroid/widget/Button;

.field private mBackImage:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCurrentOperationType:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

.field private mHostActivity:Landroid/app/Activity;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMultiOperationModeLeftButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

.field private mMultiOperationModeRightButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

.field private mOnNavEventListener:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;

.field private mSingleOperationModeButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

.field private mSpaceLine:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private navBarView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 83
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->getLayoutId()I

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->navBarView:Landroid/view/View;

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->navBarView:Landroid/view/View;

    sget p2, Lcom/alibaba/ailabs/genie/widgetui/R$id;->back_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mBackImage:Landroid/widget/ImageView;

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->navBarView:Landroid/view/View;

    sget p2, Lcom/alibaba/ailabs/genie/widgetui/R$id;->back_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mBackBtn:Landroid/widget/Button;

    .line 87
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mBackBtn:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    .line 89
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mBackBtn:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->navBarView:Landroid/view/View;

    sget p2, Lcom/alibaba/ailabs/genie/widgetui/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mTitleView:Landroid/widget/TextView;

    .line 92
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->navBarView:Landroid/view/View;

    sget p2, Lcom/alibaba/ailabs/genie/widgetui/R$id;->operation1_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mSingleOperationModeButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    .line 93
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mSingleOperationModeButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->navBarView:Landroid/view/View;

    sget p2, Lcom/alibaba/ailabs/genie/widgetui/R$id;->operation2_left_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeLeftButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    .line 95
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeLeftButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->navBarView:Landroid/view/View;

    sget p2, Lcom/alibaba/ailabs/genie/widgetui/R$id;->operation2_right_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeRightButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    .line 97
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeRightButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->navBarView:Landroid/view/View;

    sget p2, Lcom/alibaba/ailabs/genie/widgetui/R$id;->space_line:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mSpaceLine:Landroid/view/View;

    return-void
.end method

.method private addImageClickAnimation(Landroid/widget/ImageView;)V
    .locals 5

    const/4 v0, 0x2

    .line 217
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x50

    .line 218
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 219
    new-array v3, v0, [F

    fill-array-data v3, :array_1

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0x12c

    .line 220
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 221
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 222
    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 223
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getOnNavEventListener()Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 263
    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$layout;->widget_ui_navigation_bar:I

    return v0
.end method

.method public getNavBarView()Landroid/view/View;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->navBarView:Landroid/view/View;

    return-object v0
.end method

.method public getmBackImage()Landroid/widget/ImageView;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mBackImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getmLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getmMultiOperationModeLeftButton()Landroid/widget/Button;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeLeftButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    return-object v0
.end method

.method public getmMultiOperationModeRightButton()Landroid/widget/Button;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeRightButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    return-object v0
.end method

.method public getmOnNavEventListener()Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;

    return-object v0
.end method

.method public getmSingleOperationModeButton()Landroid/widget/Button;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mSingleOperationModeButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    return-object v0
.end method

.method public getmSpaceLine()Landroid/view/View;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mSpaceLine:Landroid/view/View;

    return-object v0
.end method

.method public getmTitleView()Landroid/widget/TextView;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mBackBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 114
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mBackImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->addImageClickAnimation(Landroid/widget/ImageView;)V

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;

    if-eqz p1, :cond_1

    .line 118
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;->onBack()V

    goto :goto_0

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mHostActivity:Landroid/app/Activity;

    if-eqz p1, :cond_5

    .line 121
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mSingleOperationModeButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    .line 125
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;

    if-eqz p1, :cond_5

    .line 126
    sget-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->SINGLE:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mSingleOperationModeButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->getStyle()Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    move-result-object v2

    invoke-interface {p1, v0, v2, v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;->onOperation(Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;I)V

    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeLeftButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    if-ne p1, v0, :cond_4

    .line 129
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;

    if-eqz p1, :cond_5

    .line 130
    sget-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->MULTI:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeLeftButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->getStyle()Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    move-result-object v2

    invoke-interface {p1, v0, v2, v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;->onOperation(Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;I)V

    goto :goto_0

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeRightButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    if-ne p1, v0, :cond_5

    .line 133
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;

    if-eqz p1, :cond_5

    .line 134
    sget-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->MULTI:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeRightButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->getStyle()Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;->onOperation(Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setHostActivity(Landroid/app/Activity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mHostActivity:Landroid/app/Activity;

    return-void
.end method

.method public setNavBarSpaceLineVisiable(Z)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mSpaceLine:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 151
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object p0
.end method

.method public setOnNavEventListener(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;

    return-object p0
.end method

.method public varargs setRightOperationButtonName([Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;
    .locals 5

    .line 198
    sget-object v0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$1;->$SwitchMap$com$alibaba$ailabs$genie$widgetui$widget_enum$WidgetUIRightOperationType:[I

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mCurrentOperationType:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 207
    array-length v0, p1

    if-ne v0, v3, :cond_2

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeLeftButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeRightButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 202
    array-length v0, p1

    if-ne v0, v1, :cond_2

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mSingleOperationModeButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public varargs setRightOperationButtonType([Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;
    .locals 5

    .line 179
    sget-object v0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$1;->$SwitchMap$com$alibaba$ailabs$genie$widgetui$widget_enum$WidgetUIRightOperationType:[I

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mCurrentOperationType:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 188
    array-length v0, p1

    if-ne v0, v3, :cond_2

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeLeftButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->updateButtonStyle(Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;)V

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeRightButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->updateButtonStyle(Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 183
    array-length v0, p1

    if-lez v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mSingleOperationModeButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->updateButtonStyle(Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public setRightOperationType(Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;
    .locals 3

    .line 157
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mCurrentOperationType:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    .line 158
    sget-object p1, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$1;->$SwitchMap$com$alibaba$ailabs$genie$widgetui$widget_enum$WidgetUIRightOperationType:[I

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mCurrentOperationType:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mSingleOperationModeButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeLeftButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeRightButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setVisibility(I)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mSingleOperationModeButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeLeftButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setVisibility(I)V

    .line 167
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeRightButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setVisibility(I)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mSingleOperationModeButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeLeftButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mMultiOperationModeRightButton:Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setVisibility(I)V

    :goto_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
