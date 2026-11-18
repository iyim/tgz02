.class public Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;
.super Landroid/widget/FrameLayout;
.source "StarAppraiseLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout$OnStarAppraiseChangeListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "StarAppraiseLayout"


# instance fields
.field private mContent:Landroid/widget/LinearLayout;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mImgHeight:F

.field private mImgWidth:F

.field private mLikeDrawable:Landroid/graphics/drawable/Drawable;

.field private mOnStarAppraiseChangeListener:Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout$OnStarAppraiseChangeListener;

.field private mSelectScoreIndex:I

.field private mUnLikeDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 30
    iput p3, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mSelectScoreIndex:I

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 47
    sget-object v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$styleable;->StarAppraiseLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 48
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$styleable;->StarAppraiseLayout_star_appraise_star_like_res:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mLikeDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$styleable;->StarAppraiseLayout_star_appraise_star_unlike_res:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mUnLikeDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$styleable;->StarAppraiseLayout_star_appraise_divider:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 51
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$styleable;->StarAppraiseLayout_star_appraise_star_width:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mImgWidth:F

    .line 52
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$styleable;->StarAppraiseLayout_star_appraise_star_height:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mImgHeight:F

    .line 53
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mLikeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mUnLikeDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->setStartUi(Landroid/content/Context;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "StarAppraiseLayout"

    const-string p2, " attribute error "

    .line 55
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setStarDrawable()V
    .locals 3

    const/4 v0, 0x0

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 95
    iget v2, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mSelectScoreIndex:I

    if-gt v0, v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mLikeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mUnLikeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setStartUi(Landroid/content/Context;)V
    .locals 3

    .line 64
    sget v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/R$layout;->customer_view_layout_star_appraise:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mContent:Landroid/widget/LinearLayout;

    .line 65
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mContent:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 66
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mContent:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 69
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 70
    iget v2, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mImgWidth:F

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    iget v2, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mImgHeight:F

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mUnLikeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    new-instance v1, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout$1;-><init>(Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setOnStarAppraiseClick(Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout$OnStarAppraiseChangeListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mOnStarAppraiseChangeListener:Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout$OnStarAppraiseChangeListener;

    return-void
.end method

.method public setSelectScoreIndex(I)V
    .locals 1

    .line 85
    iput p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mSelectScoreIndex:I

    .line 86
    invoke-direct {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->setStarDrawable()V

    .line 87
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->mOnStarAppraiseChangeListener:Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout$OnStarAppraiseChangeListener;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout$OnStarAppraiseChangeListener;->onChange(I)V

    :cond_0
    return-void
.end method
