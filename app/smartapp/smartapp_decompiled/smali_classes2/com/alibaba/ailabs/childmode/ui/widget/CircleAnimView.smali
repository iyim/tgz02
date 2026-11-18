.class public Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;
.super Landroid/view/View;
.source "CircleAnimView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView$CallBackListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CircleAnimView"

.field public static final TYPE_DOING:I = 0x1

.field private static final TYPE_FINISH:I = 0x2


# instance fields
.field private mCircleColor:I

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mEndColor:I

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView$CallBackListener;

.field private mProgress:I

.field private mRadius:F

.field private mRingColor:I

.field private mRingPaint:Landroid/graphics/Paint;

.field private mRingRadius:F

.field private mStartColor:I

.field private mStrokeWidth:F

.field private mSweepGradient:Landroid/graphics/SweepGradient;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTotalProgress:I

.field private mTxtHeight:F

.field private mTxtWidth:F

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    .line 67
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mTotalProgress:I

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->initVariable()V

    .line 82
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/alibaba/ailabs/genie/setting/R$styleable;->CircleAnimView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 88
    sget p2, Lcom/alibaba/ailabs/genie/setting/R$styleable;->CircleAnimView_radius:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42f20000    # 121.0f

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mRadius:F

    .line 89
    sget p2, Lcom/alibaba/ailabs/genie/setting/R$styleable;->CircleAnimView_strokeWidth:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mStrokeWidth:F

    .line 91
    sget p2, Lcom/alibaba/ailabs/genie/setting/R$styleable;->CircleAnimView_circleColor:I

    const v0, 0xffff

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mCircleColor:I

    .line 92
    sget p2, Lcom/alibaba/ailabs/genie/setting/R$styleable;->CircleAnimView_ringColor:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mRingColor:I

    .line 93
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mRadius:F

    iget p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mStrokeWidth:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mRingRadius:F

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/genie/setting/R$color;->start_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mStartColor:I

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/genie/setting/R$color;->end_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mEndColor:I

    return-void
.end method

.method private initVariable()V
    .locals 3

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mCirclePaint:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mCircleColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mRingPaint:Landroid/graphics/Paint;

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mRingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mRingPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mRingColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mRingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mRingPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 194
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CircleAnimView"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mListener:Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView$CallBackListener;

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    if-lez p1, :cond_2

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finish to draw  process:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mListener:Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView$CallBackListener;

    invoke-interface {p1, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView$CallBackListener;->onCallBack(I)V

    goto :goto_0

    .line 203
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mTotalProgress:I

    if-gt p1, v0, :cond_1

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TYPE_DOING: process:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->setProgress(I)V

    goto :goto_0

    .line 207
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finish to draw: process:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mTotalProgress:I

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    .line 209
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->setProgress(I)V

    .line 210
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mXCenter:I

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mYCenter:I

    .line 125
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mXCenter:I

    int-to-float v0, v0

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mYCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mRadius:F

    iget-object v4, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 127
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    if-lez v0, :cond_1

    .line 128
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 129
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mXCenter:I

    int-to-float v2, v0

    iget v4, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mRingRadius:F

    sub-float/2addr v2, v4

    iput v2, v3, Landroid/graphics/RectF;->left:F

    .line 130
    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mYCenter:I

    int-to-float v5, v2

    sub-float/2addr v5, v4

    iput v5, v3, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v4, v5

    int-to-float v7, v0

    sub-float/2addr v7, v4

    add-float/2addr v6, v7

    .line 131
    iput v6, v3, Landroid/graphics/RectF;->right:F

    mul-float v5, v5, v4

    int-to-float v6, v2

    sub-float/2addr v6, v4

    add-float/2addr v5, v6

    .line 132
    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    .line 133
    iget-object v4, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mSweepGradient:Landroid/graphics/SweepGradient;

    const/4 v8, 0x1

    if-nez v4, :cond_0

    .line 134
    new-instance v4, Landroid/graphics/SweepGradient;

    int-to-float v0, v0

    int-to-float v2, v2

    const/4 v5, 0x3

    new-array v6, v5, [I

    const/4 v7, 0x0

    iget v9, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mStartColor:I

    aput v9, v6, v7

    iget v7, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mEndColor:I

    aput v7, v6, v8

    aput v9, v6, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_0

    invoke-direct {v4, v0, v2, v6, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v4, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mSweepGradient:Landroid/graphics/SweepGradient;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mRingPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mSweepGradient:Landroid/graphics/SweepGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 137
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mTotalProgress:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v5, v0, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mRingPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 142
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mTotalProgress:I

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3e000000    # 0.125f
        0x3f200000    # 0.625f
        0x3f900000    # 1.125f
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CircleAnimView"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    .line 184
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->setProgress(I)V

    goto :goto_0

    .line 167
    :cond_1
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mTotalProgress:I

    if-lt p1, v3, :cond_2

    .line 168
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    .line 169
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 172
    :cond_2
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    .line 173
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->setProgress(I)V

    .line 174
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 159
    :cond_3
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    .line 160
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string p1, "start to draw"

    .line 162
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 217
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    return-void
.end method

.method public setCallBackListener(Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView$CallBackListener;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mListener:Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView$CallBackListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->mProgress:I

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/CircleAnimView;->postInvalidate()V

    return-void
.end method
