.class public Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;
.super Landroid/widget/FrameLayout;
.source "GenieNormalNavBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar$SimpleOnNavEventListener;,
        Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar$OnNavEventListener;
    }
.end annotation


# static fields
.field private static final GRAVITY_CENTER:I = 0x2

.field private static final GRAVITY_END:I = 0x1

.field private static final GRAVITY_START:I


# instance fields
.field private mBackBtn:Landroid/widget/ImageView;

.field private mHomeBtn:Landroid/widget/ImageView;

.field private mHostActivity:Landroid/app/Activity;

.field private mOnNavEventListener:Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar$OnNavEventListener;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->getLayoutId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 69
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$id;->genie_nav_bar_back_btn:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mBackBtn:Landroid/widget/ImageView;

    .line 70
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$id;->genie_nav_bar_home_btn:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mHomeBtn:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mBackBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mHomeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$id;->genie_nav_bar_title_view:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mTitleView:Landroid/widget/TextView;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->updateStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateStyle(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/widget/R$styleable;->genie_widget_nav_bar_style_name:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 153
    sget p2, Lcom/alibaba/ailabs/genie/widget/R$styleable;->genie_widget_nav_bar_style_name_showBack:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 155
    sget v1, Lcom/alibaba/ailabs/genie/widget/R$styleable;->genie_widget_nav_bar_style_name_showHome:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v2, 0x8

    if-nez p2, :cond_1

    .line 159
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mBackBtn:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    if-nez v1, :cond_2

    .line 162
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mHomeBtn:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    :cond_2
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mTitleView:Landroid/widget/TextView;

    if-eqz p2, :cond_6

    .line 166
    sget p2, Lcom/alibaba/ailabs/genie/widget/R$styleable;->genie_widget_nav_bar_style_name_navBarTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 168
    sget v1, Lcom/alibaba/ailabs/genie/widget/R$styleable;->genie_widget_nav_bar_style_name_navBarTitleGravity:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 170
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_5

    if-eq v1, v0, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x11

    .line 180
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_4
    const/16 v0, 0x15

    .line 177
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_5
    const/16 v0, 0x13

    .line 174
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 110
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$layout;->layout_genie_nav_bar_normal:I

    return v0
.end method

.method public getOnNavEventListener()Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar$OnNavEventListener;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar$OnNavEventListener;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mBackBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 117
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar$OnNavEventListener;

    if-eqz p1, :cond_0

    .line 118
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar$OnNavEventListener;->onBack()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mHostActivity:Landroid/app/Activity;

    if-eqz p1, :cond_3

    .line 124
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mHomeBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 129
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar$OnNavEventListener;

    if-eqz p1, :cond_2

    .line 130
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar$OnNavEventListener;->onHome()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mHostActivity:Landroid/app/Activity;

    if-eqz p1, :cond_3

    .line 137
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MAIN"

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.HOME"

    .line 139
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mHostActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setHostActivity(Landroid/app/Activity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mHostActivity:Landroid/app/Activity;

    return-void
.end method

.method public setOnNavEventListener(Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar$OnNavEventListener;)Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mOnNavEventListener:Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar$OnNavEventListener;

    return-object p0
.end method

.method public setTitle(I)Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->setTitle(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNormalNavBar;->mTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-object p0

    .line 93
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
