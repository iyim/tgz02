.class public Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;
.super Landroid/view/View;
.source "RotateAvatar.java"


# instance fields
.field private isRotate:Z

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mDegree:I

.field private mHandler:Landroid/os/Handler;

.field private mRotateBg:Landroid/graphics/drawable/Drawable;

.field private mRotateBgHeight:I

.field private mRotateBgWidth:I

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->isRotate:Z

    .line 26
    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mDegree:I

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$RotateAvatar$8jzFJv21Q-sVb5_jIK6NmYQaVEA;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$RotateAvatar$8jzFJv21Q-sVb5_jIK6NmYQaVEA;-><init>(Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mRunnable:Ljava/lang/Runnable;

    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->isRotate:Z

    .line 26
    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mDegree:I

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$RotateAvatar$8jzFJv21Q-sVb5_jIK6NmYQaVEA;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$RotateAvatar$8jzFJv21Q-sVb5_jIK6NmYQaVEA;-><init>(Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mRunnable:Ljava/lang/Runnable;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 25
    iput-boolean p3, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->isRotate:Z

    .line 26
    iput p3, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mDegree:I

    .line 27
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$RotateAvatar$8jzFJv21Q-sVb5_jIK6NmYQaVEA;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$RotateAvatar$8jzFJv21Q-sVb5_jIK6NmYQaVEA;-><init>(Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;)V

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mRunnable:Ljava/lang/Runnable;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mContext:Landroid/content/Context;

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->init(Landroid/content/Context;)V

    .line 51
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_RotateAvatar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 52
    sget p2, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_RotateAvatar_con_rotateBg:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mRotateBg:Landroid/graphics/drawable/Drawable;

    .line 53
    sget p2, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_RotateAvatar_con_rotateBgWidth:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mRotateBgWidth:I

    .line 54
    sget p2, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_RotateAvatar_con_rotateBgHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mRotateBgHeight:I

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mBitmapPaint:Landroid/graphics/Paint;

    .line 57
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method


# virtual methods
.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 89
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 90
    nop

    nop

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mRotateBgWidth:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mRotateBgHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public synthetic lambda$new$7$RotateAvatar()V
    .locals 1

    .line 84
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mDegree:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mDegree:I

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mDegree:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mRotateBgWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    iget v3, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mRotateBgHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mRotateBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 66
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->isRotate:Z

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public startRotate()V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->isRotate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->isRotate:Z

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->invalidate()V

    :cond_0
    return-void
.end method

.method public stopRotate()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/RotateAvatar;->isRotate:Z

    return-void
.end method
