.class public Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "ParallaxScrollFeature.java"

# interfaces
.implements Lcom/taobao/uikit/feature/callback/ScrollCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$ParallaxView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/widget/ScrollView;",
        ">;",
        "Lcom/taobao/uikit/feature/callback/ScrollCallback;"
    }
.end annotation


# static fields
.field private static isAPI11:Z


# instance fields
.field private mInnerParallaxFactor:F

.field private mParallaxFactor:F

.field private mParallaxNum:I

.field private mParallaxViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$ParallaxView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->isAPI11:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mParallaxNum:I

    const v0, 0x3fe66666    # 1.8f

    .line 28
    iput v0, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mInnerParallaxFactor:F

    .line 30
    iput v0, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mParallaxFactor:F

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mParallaxViews:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->makeViewsParallax()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 21
    sget-boolean v0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->isAPI11:Z

    return v0
.end method

.method private makeViewsParallax()V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mParallaxViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    .line 100
    iget v2, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mParallaxNum:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 103
    new-instance v3, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$ParallaxView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$ParallaxView;-><init>(Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;Landroid/view/View;)V

    .line 104
    iget-object v4, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mParallaxViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public afterComputeScroll()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterOnScrollChanged(IIII)V
    .locals 2

    .line 66
    iget p1, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mParallaxFactor:F

    .line 67
    iget-object p3, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mParallaxViews:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    .line 71
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mParallaxViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$ParallaxView;

    int-to-float v1, p2

    div-float/2addr v1, p1

    .line 72
    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$ParallaxView;->setOffset(F)V

    .line 73
    iget v0, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mInnerParallaxFactor:F

    mul-float p1, p1, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public beforeComputeScroll()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnScrollChanged(IIII)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 38
    sget-object v0, Lcom/taobao/uikit/R$styleable;->ParallaxScrollFeature:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    sget p2, Lcom/taobao/uikit/R$styleable;->ParallaxScrollFeature_uik_parallaxFactor:I

    iget p3, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mParallaxFactor:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mParallaxFactor:F

    .line 42
    sget p2, Lcom/taobao/uikit/R$styleable;->ParallaxScrollFeature_uik_innerParallaxFactor:I

    iget p3, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mInnerParallaxFactor:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mInnerParallaxFactor:F

    .line 43
    sget p2, Lcom/taobao/uikit/R$styleable;->ParallaxScrollFeature_uik_parallaxNum:I

    iget p3, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mParallaxNum:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mParallaxNum:I

    .line 44
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setHost(Landroid/view/View;)V
    .locals 0

    .line 21
    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->setHost(Landroid/widget/ScrollView;)V

    return-void
.end method

.method public setHost(Landroid/widget/ScrollView;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/taobao/uikit/feature/features/AbsFeature;->setHost(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    new-instance v0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$1;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$1;-><init>(Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public setInnerParallaxFactor(F)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mInnerParallaxFactor:F

    return-void
.end method

.method public setParallaxFactor(F)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mParallaxFactor:F

    return-void
.end method

.method public setParallaxNum(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->mParallaxNum:I

    .line 112
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->makeViewsParallax()V

    return-void
.end method
