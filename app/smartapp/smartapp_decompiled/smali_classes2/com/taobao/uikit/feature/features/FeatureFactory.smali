.class public Lcom/taobao/uikit/feature/features/FeatureFactory;
.super Ljava/lang/Object;
.source "FeatureFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;
    }
.end annotation


# static fields
.field public static final PRIORITY_ABOVE_NORMAL:I = 0x2ee

.field public static final PRIORITY_BELOW_NORMAL:I = 0xfa

.field public static final PRIORITY_HIGHEST:I = 0x3e8

.field public static final PRIORITY_LOWEST:I = 0x0

.field public static final PRIORITY_NORMAL:I = 0x1f4

.field private static final featureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mSelf:Lcom/taobao/uikit/feature/features/FeatureFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    .line 19
    new-instance v0, Lcom/taobao/uikit/feature/features/FeatureFactory;

    invoke-direct {v0}, Lcom/taobao/uikit/feature/features/FeatureFactory;-><init>()V

    sput-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->mSelf:Lcom/taobao/uikit/feature/features/FeatureFactory;

    .line 39
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_clickDrawableMaskFeature:I

    const/16 v3, 0x2ee

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.ClickDrawableMaskFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_ratioFeature:I

    const/16 v3, 0x1f4

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.RatioFeature"

    .line 43
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_roundRectFeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.RoundRectFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_roundFeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.RoundFeature"

    .line 50
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_clickViewMaskFeature:I

    const/16 v4, 0xfa

    invoke-direct {v1, v2, v4}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.ClickViewMaskFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_binaryPageFeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.BinaryPageFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_pinnedHeaderFeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.PinnedHeaderFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_pullToRefreshFeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.PullToRefreshFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_stickyScrollFeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.StickyScrollFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_parallaxScrollFeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.ParallaxScrollFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_bounceScrollFeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.BounceScrollFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_pencilShapeFeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.PencilShapeFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_autoScaleFeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.AutoScaleFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_rotateFeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.RotateFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_imagesavefeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.ImageSaveFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_cellAnimatorFeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.CellAnimatorFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_recyclerCellAnimatorFeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.RecyclerCellAnimatorFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_dragToRefreshFeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.DragToRefreshFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_imageShapeFeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.feature.features.ImageShapeFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_smoothScrollFeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.extend.feature.features.SmoothScrollFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    sget v2, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace_uik_smoothRecyclerScrollFeature:I

    invoke-direct {v1, v2, v3}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    const-string v2, "com.taobao.uikit.extend.feature.features.SmoothRecyclerScrollFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static addFeature(Ljava/lang/String;II)V
    .locals 2

    .line 95
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 100
    :cond_0
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    new-instance v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    invoke-direct {v1, p1, p2}, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static creator(Landroid/content/Context;Landroid/content/res/TypedArray;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/content/res/TypedArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/taobao/uikit/feature/features/AbsFeature<",
            "-TT;>;>;"
        }
    .end annotation

    .line 106
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    iget v1, v1, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;->id:I

    if-ltz v1, :cond_0

    const/4 v3, 0x0

    .line 116
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 126
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Android UiKit"

    const-string v4, "can\'t find feature by id"

    invoke-static {v3, v4, v2}, Lcom/taobao/uikit/utils/UIKITLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static getFeaturePriority(Ljava/lang/String;)I
    .locals 1

    .line 140
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/taobao/uikit/feature/features/FeatureFactory;->featureMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;

    .line 142
    iget p0, p0, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;->priority:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
