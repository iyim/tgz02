.class public Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;
.super Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
.source "ClassicsHeader.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics<",
        "Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;",
        ">;",
        "Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;"
    }
.end annotation


# static fields
.field public static final ID_TEXT_UPDATE:I

.field public static REFRESH_HEADER_FAILED:Ljava/lang/String;

.field public static REFRESH_HEADER_FINISH:Ljava/lang/String;

.field public static REFRESH_HEADER_LOADING:Ljava/lang/String;

.field public static REFRESH_HEADER_PULLING:Ljava/lang/String;

.field public static REFRESH_HEADER_REFRESHING:Ljava/lang/String;

.field public static REFRESH_HEADER_RELEASE:Ljava/lang/String;

.field public static REFRESH_HEADER_UPDATE:Ljava/lang/String;


# instance fields
.field protected KEY_LAST_UPDATE_TIME:Ljava/lang/String;

.field protected mEnableLastTime:Z

.field protected mLastTime:Ljava/util/Date;

.field protected mLastUpdateFormat:Ljava/text/DateFormat;

.field protected mLastUpdateText:Landroid/widget/TextView;

.field protected mShared:Landroid/content/SharedPreferences;

.field protected mTextFailed:Ljava/lang/String;

.field protected mTextFinish:Ljava/lang/String;

.field protected mTextLoading:Ljava/lang/String;

.field protected mTextPulling:Ljava/lang/String;

.field protected mTextRefreshing:Ljava/lang/String;

.field protected mTextRelease:Ljava/lang/String;

.field protected mTextUpdate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->srl_classics_update:I

    sput v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->ID_TEXT_UPDATE:I

    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->REFRESH_HEADER_PULLING:Ljava/lang/String;

    .line 47
    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->REFRESH_HEADER_REFRESHING:Ljava/lang/String;

    .line 49
    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->REFRESH_HEADER_LOADING:Ljava/lang/String;

    .line 51
    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->REFRESH_HEADER_RELEASE:Ljava/lang/String;

    .line 53
    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->REFRESH_HEADER_FINISH:Ljava/lang/String;

    .line 55
    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->REFRESH_HEADER_FAILED:Ljava/lang/String;

    .line 57
    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->REFRESH_HEADER_UPDATE:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v1, "LAST_UPDATE_TIME"

    .line 60
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mEnableLastTime:Z

    .line 90
    sget v1, Lcom/alibaba/ailabs/genie/message/R$layout;->srl_classics_header:I

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 93
    sget v1, Lcom/alibaba/ailabs/genie/message/R$id;->srl_classics_arrow:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    .line 94
    sget v2, Lcom/alibaba/ailabs/genie/message/R$id;->srl_classics_update:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 95
    sget v3, Lcom/alibaba/ailabs/genie/message/R$id;->srl_classics_progress:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mProgressView:Landroid/widget/ImageView;

    .line 97
    sget v4, Lcom/alibaba/ailabs/genie/message/R$id;->srl_classics_title:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    .line 99
    sget-object v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 103
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    sget v7, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextTimeMarginTop:I

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->dp2px(F)I

    move-result v8

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 105
    sget v6, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsFooter_srlDrawableMarginRight:I

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->dp2px(F)I

    move-result v7

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 106
    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 108
    sget v6, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlDrawableArrowSize:I

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 109
    sget v6, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlDrawableArrowSize:I

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 110
    sget v6, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlDrawableProgressSize:I

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 111
    sget v6, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlDrawableProgressSize:I

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 113
    sget v6, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 114
    sget v6, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 115
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 116
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 118
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlFinishDuration:I

    iget v5, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mFinishDuration:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mFinishDuration:I

    .line 119
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlEnableLastTime:I

    iget-boolean v5, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mEnableLastTime:Z

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mEnableLastTime:Z

    .line 120
    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->VALUES:[Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    sget v5, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlClassicsSpinnerStyle:I

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mSpinnerStyle:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    iget v6, v6, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->ordinal:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mSpinnerStyle:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    .line 122
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlDrawableArrow:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const v5, -0x99999a

    if-eqz v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    sget v6, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlDrawableArrow:I

    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 125
    new-instance v4, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ArrowDrawable;

    invoke-direct {v4}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ArrowDrawable;-><init>()V

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mArrowDrawable:Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;

    .line 126
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mArrowDrawable:Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;

    invoke-virtual {v4, v5}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;->setColor(I)V

    .line 127
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mArrowDrawable:Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_1
    :goto_0
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlDrawableProgress:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mProgressView:Landroid/widget/ImageView;

    sget v5, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlDrawableProgress:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 132
    :cond_2
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_3

    .line 133
    new-instance v4, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ProgressDrawable;

    invoke-direct {v4}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ProgressDrawable;-><init>()V

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mProgressDrawable:Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;

    .line 134
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mProgressDrawable:Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;

    invoke-virtual {v4, v5}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;->setColor(I)V

    .line 135
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mProgressView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mProgressDrawable:Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_3
    :goto_1
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextSizeTitle:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 139
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    sget v5, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextSizeTitle:I

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->dp2px(F)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 142
    :cond_4
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextSizeTime:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 143
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    sget v5, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextSizeTime:I

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->dp2px(F)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 146
    :cond_5
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlPrimaryColor:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 147
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlPrimaryColor:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-super {p0, v4}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->setPrimaryColor(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    .line 149
    :cond_6
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlAccentColor:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 150
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlAccentColor:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->setAccentColor(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;

    .line 153
    :cond_7
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextPulling:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 154
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextPulling:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    goto :goto_2

    .line 155
    :cond_8
    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->REFRESH_HEADER_PULLING:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 156
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    goto :goto_2

    .line 158
    :cond_9
    sget v4, Lcom/alibaba/ailabs/genie/message/R$string;->srl_header_pulling:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    .line 160
    :goto_2
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextLoading:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 161
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextLoading:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    goto :goto_3

    .line 162
    :cond_a
    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->REFRESH_HEADER_LOADING:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 163
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    goto :goto_3

    .line 165
    :cond_b
    sget v4, Lcom/alibaba/ailabs/genie/message/R$string;->srl_header_loading:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    .line 167
    :goto_3
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextRelease:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 168
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextRelease:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    goto :goto_4

    .line 169
    :cond_c
    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->REFRESH_HEADER_RELEASE:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 170
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    goto :goto_4

    .line 172
    :cond_d
    sget v4, Lcom/alibaba/ailabs/genie/message/R$string;->srl_header_release:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    .line 174
    :goto_4
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextFinish:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 175
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextFinish:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    goto :goto_5

    .line 176
    :cond_e
    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->REFRESH_HEADER_FINISH:Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 177
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    goto :goto_5

    .line 179
    :cond_f
    sget v4, Lcom/alibaba/ailabs/genie/message/R$string;->srl_header_finish:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    .line 181
    :goto_5
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextFailed:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 182
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextFailed:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    goto :goto_6

    .line 183
    :cond_10
    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->REFRESH_HEADER_FAILED:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 184
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    goto :goto_6

    .line 186
    :cond_11
    sget v4, Lcom/alibaba/ailabs/genie/message/R$string;->srl_header_failed:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    .line 188
    :goto_6
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextRefreshing:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 189
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextRefreshing:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    goto :goto_7

    .line 190
    :cond_12
    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->REFRESH_HEADER_REFRESHING:Ljava/lang/String;

    if-eqz v4, :cond_13

    .line 191
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    goto :goto_7

    .line 193
    :cond_13
    sget v4, Lcom/alibaba/ailabs/genie/message/R$string;->srl_header_refreshing:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    .line 195
    :goto_7
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextUpdate:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 196
    sget v4, Lcom/alibaba/ailabs/genie/message/R$styleable;->ClassicsHeader_srlTextUpdate:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    goto :goto_8

    .line 197
    :cond_14
    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->REFRESH_HEADER_UPDATE:Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 198
    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    goto :goto_8

    .line 200
    :cond_15
    sget v4, Lcom/alibaba/ailabs/genie/message/R$string;->srl_header_update:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    .line 202
    :goto_8
    new-instance v4, Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastUpdateFormat:Ljava/text/DateFormat;

    .line 204
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 207
    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mEnableLastTime:Z

    const/16 v4, 0x8

    if-eqz p2, :cond_16

    const/4 p2, 0x0

    goto :goto_9

    :cond_16
    const/16 p2, 0x8

    :goto_9
    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    goto :goto_a

    :cond_17
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    :goto_a
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_18

    .line 211
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 213
    :cond_18
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :goto_b
    :try_start_0
    instance-of p2, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz p2, :cond_19

    .line 218
    move-object p2, p1

    nop

    nop

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 221
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p2

    .line 222
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_19

    .line 223
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->setLastUpdateTime(Ljava/util/Date;)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 229
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    :cond_19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    const-string p2, "ClassicsHeader"

    .line 233
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    .line 234
    new-instance p1, Ljava/util/Date;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->setLastUpdateTime(Ljava/util/Date;)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;Z)I
    .locals 2
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 242
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastTime:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 244
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->setLastUpdateTime(Ljava/util/Date;)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->onFinish(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;Z)I

    move-result p1

    return p1
.end method

.method public onStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V
    .locals 2
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 255
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    .line 256
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 257
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader$1;->$SwitchMap$com$alibaba$ailabs$genie$message$refresh$constant$RefreshState:[I

    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 275
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mEnableLastTime:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 271
    :pswitch_1
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 267
    :pswitch_2
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 259
    :pswitch_3
    iget-boolean p3, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mEnableLastTime:Z

    if-eqz p3, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :pswitch_4
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAccentColor(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 311
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    const v1, 0xffffff

    and-int/2addr v1, p1

    const/high16 v2, -0x34000000    # -3.3554432E7f

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->setAccentColor(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;

    return-object p1
.end method

.method public bridge synthetic setAccentColor(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 39
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->setAccentColor(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;

    move-result-object p1

    return-object p1
.end method

.method public setEnableLastTime(Z)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 317
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mEnableLastTime:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 318
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mRefreshKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    if-eqz p1, :cond_1

    .line 320
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mRefreshKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    invoke-interface {p1, p0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->requestRemeasureHeightFor(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    :cond_1
    return-object p0
.end method

.method public setLastUpdateText(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;
    .locals 1

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastTime:Ljava/util/Date;

    .line 305
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setLastUpdateTime(Ljava/util/Date;)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;
    .locals 4

    .line 287
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastTime:Ljava/util/Date;

    .line 288
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastUpdateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method

.method public setTextSizeTime(F)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 327
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mRefreshKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mRefreshKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    invoke-interface {p1, p0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->requestRemeasureHeightFor(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    :cond_0
    return-object p0
.end method

.method public setTextTimeMarginTop(F)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 336
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 337
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 338
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public setTimeFormat(Ljava/text/DateFormat;)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;
    .locals 2

    .line 296
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastUpdateFormat:Ljava/text/DateFormat;

    .line 297
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastTime:Ljava/util/Date;

    if-eqz p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;->mLastUpdateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method
