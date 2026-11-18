.class public Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;
.super Landroid/view/View;
.source "CustomProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;,
        Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;
    }
.end annotation


# static fields
.field private static final w:Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:D

.field private f:D

.field private g:F

.field private h:Z

.field private i:J

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/RectF;

.field private o:F

.field private p:J

.field private q:Z

.field private r:F

.field private s:F

.field private t:Z

.field private u:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 377
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->w:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 97
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x1e

    .line 38
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    const/4 p1, 0x3

    .line 39
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    .line 40
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->c:I

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->d:Z

    const-wide v0, 0x407f400000000000L    # 500.0

    .line 47
    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->e:D

    const-wide v0, 0x407cc00000000000L    # 460.0

    .line 48
    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->f:D

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->g:F

    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->h:Z

    const-wide/16 v1, 0xd2

    .line 52
    iput-wide v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->i:J

    const-string v1, "#108ee9"

    .line 56
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->j:I

    const v1, 0xffffff

    .line 57
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->k:I

    .line 60
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->l:Landroid/graphics/Paint;

    .line 61
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->m:Landroid/graphics/Paint;

    .line 64
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->n:Landroid/graphics/RectF;

    const/high16 v1, 0x43660000    # 230.0f

    .line 68
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->o:F

    const-wide/16 v1, 0x0

    .line 70
    iput-wide v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    .line 74
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 75
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    .line 76
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    .line 375
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->v:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x1e

    .line 38
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    const/4 v0, 0x3

    .line 39
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    .line 40
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->c:I

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->d:Z

    const-wide v1, 0x407f400000000000L    # 500.0

    .line 47
    iput-wide v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->e:D

    const-wide v1, 0x407cc00000000000L    # 460.0

    .line 48
    iput-wide v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->f:D

    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->g:F

    const/4 v2, 0x1

    .line 50
    iput-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->h:Z

    const-wide/16 v2, 0xd2

    .line 52
    iput-wide v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->i:J

    const-string v2, "#108ee9"

    .line 56
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->j:I

    const v2, 0xffffff

    .line 57
    iput v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->k:I

    .line 60
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->l:Landroid/graphics/Paint;

    .line 61
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->m:Landroid/graphics/Paint;

    .line 64
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->n:Landroid/graphics/RectF;

    const/high16 v2, 0x43660000    # 230.0f

    .line 68
    iput v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->o:F

    const-wide/16 v2, 0x0

    .line 70
    iput-wide v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    .line 74
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 75
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    .line 76
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    .line 375
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->v:Z

    .line 88
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$styleable;->ProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a(Landroid/content/res/TypedArray;)V

    .line 89
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->l:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->l:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->l:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->m:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->k:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private a(F)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->u:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;

    if-eqz v0, :cond_0

    .line 419
    invoke-interface {v0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 6

    .line 180
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getPaddingTop()I

    move-result v0

    .line 181
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getPaddingBottom()I

    move-result v1

    .line 182
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getPaddingLeft()I

    move-result v2

    .line 183
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getPaddingRight()I

    move-result v3

    .line 185
    iget-boolean v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->d:Z

    if-nez v4, :cond_0

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    sub-int v3, p2, v1

    sub-int/2addr v3, v0

    .line 187
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 191
    iget v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr p1, v3

    .line 194
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v2

    sub-int/2addr p2, v0

    sub-int/2addr p2, v1

    sub-int/2addr p2, v3

    .line 196
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    .line 199
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    add-int v2, p1, v1

    int-to-float v2, v2

    add-int v4, p2, v1

    int-to-float v4, v4

    add-int/2addr p1, v3

    sub-int/2addr p1, v1

    int-to-float p1, p1

    add-int/2addr p2, v3

    sub-int/2addr p2, v1

    int-to-float p2, p2

    invoke-direct {v0, v2, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->n:Landroid/graphics/RectF;

    goto :goto_0

    .line 204
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    add-int/2addr v0, v5

    int-to-float v0, v0

    sub-int/2addr p1, v3

    sub-int/2addr p1, v5

    int-to-float p1, p1

    sub-int/2addr p2, v1

    sub-int/2addr p2, v5

    int-to-float p2, p2

    invoke-direct {v4, v2, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->n:Landroid/graphics/RectF;

    :goto_0
    return-void
.end method

.method private a(J)V
    .locals 5

    .line 332
    iget-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->i:J

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 333
    iget-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->e:D

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->e:D

    .line 335
    iget-wide p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->e:D

    iget-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->f:D

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    sub-double/2addr p1, v0

    .line 338
    iput-wide p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->e:D

    const-wide/16 p1, 0x0

    .line 339
    iput-wide p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->i:J

    .line 340
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->h:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->h:Z

    .line 343
    :cond_0
    iget-wide p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->e:D

    iget-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->f:D

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    const/high16 p2, 0x437e0000    # 254.0f

    .line 346
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->h:Z

    if-eqz v0, :cond_1

    mul-float p1, p1, p2

    .line 347
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->g:F

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float v0, v0, p2

    .line 350
    iget p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    iget p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->g:F

    sub-float/2addr p2, v0

    add-float/2addr p1, p2

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 351
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->g:F

    goto :goto_0

    :cond_2
    add-long/2addr v0, p1

    .line 354
    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->i:J

    :goto_0
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 218
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 219
    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    .line 220
    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->c:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->c:I

    .line 221
    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    .line 224
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->spin()V

    .line 227
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->u:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;

    if-eqz v0, :cond_0

    .line 425
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 426
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->u:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    .line 560
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->j:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .line 541
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .line 522
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    .line 503
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getRimColor()I
    .locals 1

    .line 580
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->k:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    .line 620
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->c:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 2

    .line 602
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->o:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isSpinning()Z
    .locals 1

    .line 363
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 243
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 245
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->v:Z

    if-nez v1, :cond_0

    .line 247
    monitor-exit v0

    return-void

    .line 249
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->n:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->m:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 255
    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    const/4 v2, 0x0

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v5, 0x1

    const/high16 v6, 0x43b40000    # 360.0f

    if-eqz v1, :cond_3

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v7, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    sub-long/2addr v0, v7

    long-to-float v7, v0

    .line 260
    iget v8, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->o:F

    mul-float v7, v7, v8

    div-float/2addr v7, v4

    .line 262
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a(J)V

    .line 264
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    add-float/2addr v0, v7

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 265
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    cmpl-float v1, v0, v6

    if-lez v1, :cond_1

    sub-float/2addr v0, v6

    .line 266
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 271
    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a(F)V

    .line 273
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    .line 275
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    sub-float/2addr v0, v3

    const/high16 v1, 0x41800000    # 16.0f

    .line 276
    iget v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->g:F

    add-float/2addr v3, v1

    .line 278
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v3, 0x43070000    # 135.0f

    const/4 v8, 0x0

    const/high16 v9, 0x43070000    # 135.0f

    goto :goto_0

    :cond_2
    move v8, v0

    move v9, v3

    .line 283
    :goto_0
    iget-object v7, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->n:Landroid/graphics/RectF;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->l:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 285
    :cond_3
    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 287
    iget v7, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    cmpl-float v7, v1, v7

    if-eqz v7, :cond_4

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    sub-long/2addr v7, v9

    long-to-float v0, v7

    div-float/2addr v0, v4

    .line 292
    iget v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->o:F

    mul-float v0, v0, v4

    .line 294
    iget v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    add-float/2addr v4, v0

    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .line 298
    :goto_1
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_5

    .line 299
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b()V

    .line 303
    :cond_5
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 304
    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->q:Z

    if-nez v1, :cond_6

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    float-to-double v7, v0

    const/high16 v0, 0x40800000    # 4.0f

    float-to-double v9, v0

    .line 306
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v7, v9, v7

    double-to-float v0, v7

    mul-float v0, v0, v6

    .line 307
    iget v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    div-float/2addr v4, v6

    sub-float/2addr v2, v4

    float-to-double v7, v2

    float-to-double v1, v1

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sub-double/2addr v9, v1

    double-to-float v1, v9

    mul-float v1, v1, v6

    goto :goto_2

    :cond_6
    move v1, v0

    const/4 v0, 0x0

    .line 310
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_7

    const/high16 v10, 0x43b40000    # 360.0f

    goto :goto_3

    :cond_7
    move v10, v1

    .line 314
    :goto_3
    iget-object v8, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->n:Landroid/graphics/RectF;

    sub-float v9, v0, v3

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->l:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_4
    if-eqz v5, :cond_8

    .line 318
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    :cond_8
    return-void

    :catchall_0
    move-exception p1

    .line 249
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 106
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 108
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 112
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 113
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 114
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    .line 125
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    :goto_0
    if-eq v3, v5, :cond_3

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    if-ne v3, v4, :cond_4

    .line 137
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_3
    :goto_1
    move v1, p2

    .line 143
    :cond_4
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a(II)V

    .line 156
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a()V

    .line 157
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 324
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 4

    .line 386
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->w:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 387
    :try_start_0
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->v:Z

    const-wide v1, 0x407f400000000000L    # 500.0

    .line 388
    iput-wide v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->e:D

    const/4 v1, 0x0

    .line 389
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->g:F

    const/4 v2, 0x1

    .line 390
    iput-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->h:Z

    const-wide/16 v2, 0xd2

    .line 391
    iput-wide v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->i:J

    const-wide/16 v2, 0x0

    .line 392
    iput-wide v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    .line 393
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 394
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    .line 395
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetCount()V
    .locals 1

    const/4 v0, 0x0

    .line 370
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 371
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    .line 372
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    return-void
.end method

.method public setBarColor(I)V
    .locals 0

    .line 569
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->j:I

    .line 570
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a()V

    .line 571
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-nez p1, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 0

    .line 550
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b:I

    .line 551
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-nez p1, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->u:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$ProgressCallback;

    .line 233
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-nez p1, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b()V

    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0

    .line 531
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a:I

    .line 532
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-nez p1, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 3

    .line 473
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 474
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    const/4 v0, 0x0

    .line 475
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    const/4 p1, 0x0

    .line 484
    :cond_2
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 488
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    .line 489
    iget p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    .line 491
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    return-void
.end method

.method public setLinearProgress(Z)V
    .locals 0

    .line 512
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->q:Z

    .line 513
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-nez p1, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 437
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 438
    iput v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    const/4 v0, 0x0

    .line 439
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    .line 441
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->b()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    const/4 p1, 0x0

    .line 450
    :cond_2
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_3

    return-void

    .line 457
    :cond_3
    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    :cond_4
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 461
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    .line 463
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    return-void
.end method

.method public setRimColor(I)V
    .locals 0

    .line 589
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->k:I

    .line 590
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->a()V

    .line 591
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-nez p1, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 0

    .line 629
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->c:I

    .line 630
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    if-nez p1, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 613
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->o:F

    return-void
.end method

.method public spin()V
    .locals 2

    .line 412
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->p:J

    const/4 v0, 0x1

    .line 413
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    .line 414
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    return-void
.end method

.method public start()V
    .locals 2

    .line 380
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->w:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 381
    :try_start_0
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->v:Z

    .line 382
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopSpinning()V
    .locals 1

    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->t:Z

    const/4 v0, 0x0

    .line 403
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->r:F

    .line 404
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->s:F

    .line 405
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;->invalidate()V

    return-void
.end method
