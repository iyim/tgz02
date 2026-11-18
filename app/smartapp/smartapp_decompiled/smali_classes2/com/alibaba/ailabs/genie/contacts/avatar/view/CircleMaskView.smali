.class public Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;
.super Landroid/view/View;
.source "CircleMaskView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHeight:F

.field private mRadius:F

.field private mStroke:I

.field private mTransparentPaint:Landroid/graphics/Paint;

.field private mWhitePaint:Landroid/graphics/Paint;

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->init(Landroid/content/Context;)V

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

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->init(Landroid/content/Context;)V

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

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mContext:Landroid/content/Context;

    .line 44
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mTransparentPaint:Landroid/graphics/Paint;

    .line 45
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mTransparentPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mTransparentPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mWhitePaint:Landroid/graphics/Paint;

    .line 48
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mWhitePaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mWhitePaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 51
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mRadius:F

    .line 52
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mStroke:I

    return-void
.end method


# virtual methods
.method public getCropRect()Landroid/graphics/Rect;
    .locals 5

    .line 70
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mWidth:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 71
    iget v1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mHeight:F

    float-to-double v1, v1

    const-wide v3, 0x3fd999999999999aL    # 0.4

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    int-to-float v0, v0

    .line 73
    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mRadius:F

    sub-float v3, v0, v2

    float-to-int v3, v3

    int-to-float v1, v1

    sub-float v4, v1, v2

    float-to-int v4, v4

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 77
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mWidth:F

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mHeight:F

    const/4 v0, 0x0

    const/16 v1, 0xc8

    .line 60
    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 61
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mWidth:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mHeight:F

    const v3, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v3

    iget v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mRadius:F

    iget v5, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mStroke:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 62
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mWidth:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mHeight:F

    mul-float v1, v1, v3

    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mRadius:F

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CircleMaskView;->mTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
