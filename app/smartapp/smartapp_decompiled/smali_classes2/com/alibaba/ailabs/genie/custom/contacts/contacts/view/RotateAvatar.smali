.class public Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;
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

    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->isRotate:Z

    .line 27
    iput v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mDegree:I

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/-$$Lambda$RotateAvatar$R3W0lgVIVzuYfIlnkbrV8HqBEVw;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/-$$Lambda$RotateAvatar$R3W0lgVIVzuYfIlnkbrV8HqBEVw;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mRunnable:Ljava/lang/Runnable;

    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->isRotate:Z

    .line 27
    iput v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mDegree:I

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/-$$Lambda$RotateAvatar$R3W0lgVIVzuYfIlnkbrV8HqBEVw;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/-$$Lambda$RotateAvatar$R3W0lgVIVzuYfIlnkbrV8HqBEVw;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mRunnable:Ljava/lang/Runnable;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 26
    iput-boolean p3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->isRotate:Z

    .line 27
    iput p3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mDegree:I

    .line 28
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance p3, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/-$$Lambda$RotateAvatar$R3W0lgVIVzuYfIlnkbrV8HqBEVw;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/-$$Lambda$RotateAvatar$R3W0lgVIVzuYfIlnkbrV8HqBEVw;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;)V

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mRunnable:Ljava/lang/Runnable;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mContext:Landroid/content/Context;

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->init(Landroid/content/Context;)V

    .line 52
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$styleable;->Custom_RotateAvatar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    sget p2, Lcom/alibaba/ailabs/genie/custom/contacts/R$styleable;->Custom_RotateAvatar_rotateBg:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mRotateBg:Landroid/graphics/drawable/Drawable;

    .line 54
    sget p2, Lcom/alibaba/ailabs/genie/custom/contacts/R$styleable;->Custom_RotateAvatar_rotateBgWidth:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mRotateBgWidth:I

    .line 55
    sget p2, Lcom/alibaba/ailabs/genie/custom/contacts/R$styleable;->Custom_RotateAvatar_rotateBgHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mRotateBgHeight:I

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mBitmapPaint:Landroid/graphics/Paint;

    .line 58
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method


# virtual methods
.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 90
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 91
    nop

    nop

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 94
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mRotateBgWidth:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mRotateBgHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 96
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public synthetic lambda$new$12$RotateAvatar()V
    .locals 1

    .line 85
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mDegree:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mDegree:I

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 64
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mDegree:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mRotateBgWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    iget v3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mRotateBgHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mRotateBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 67
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->isRotate:Z

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public startRotate()V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->isRotate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->isRotate:Z

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->invalidate()V

    :cond_0
    return-void
.end method

.method public stopRotate()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/RotateAvatar;->isRotate:Z

    return-void
.end method
