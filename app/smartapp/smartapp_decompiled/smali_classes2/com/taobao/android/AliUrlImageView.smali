.class public Lcom/taobao/android/AliUrlImageView;
.super Lcom/taobao/uikit/extend/feature/view/TUrlImageView;
.source "AliUrlImageView.java"

# interfaces
.implements Lcom/taobao/android/AliUrlImageViewInterface;


# instance fields
.field private mImageShapeFeature:Lcom/taobao/uikit/feature/features/ImageShapeFeature;

.field private mRatioFeature:Lcom/taobao/uikit/feature/features/RatioFeature;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lcom/taobao/android/AliUrlImageView;->setEnableLayoutOptimize(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Lcom/taobao/android/AliUrlImageView;->setEnableLayoutOptimize(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lcom/taobao/android/AliUrlImageView;->setEnableLayoutOptimize(Z)V

    return-void
.end method

.method private getImageShapeFeature()Lcom/taobao/uikit/feature/features/ImageShapeFeature;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/taobao/android/AliUrlImageView;->mImageShapeFeature:Lcom/taobao/uikit/feature/features/ImageShapeFeature;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/taobao/uikit/feature/features/ImageShapeFeature;

    invoke-direct {v0}, Lcom/taobao/uikit/feature/features/ImageShapeFeature;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/AliUrlImageView;->mImageShapeFeature:Lcom/taobao/uikit/feature/features/ImageShapeFeature;

    .line 76
    iget-object v0, p0, Lcom/taobao/android/AliUrlImageView;->mImageShapeFeature:Lcom/taobao/uikit/feature/features/ImageShapeFeature;

    invoke-virtual {p0, v0}, Lcom/taobao/android/AliUrlImageView;->addFeature(Lcom/taobao/uikit/feature/features/AbsFeature;)Z

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/AliUrlImageView;->mImageShapeFeature:Lcom/taobao/uikit/feature/features/ImageShapeFeature;

    return-object v0
.end method

.method private getRatioFeature()Lcom/taobao/uikit/feature/features/RatioFeature;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/taobao/android/AliUrlImageView;->mRatioFeature:Lcom/taobao/uikit/feature/features/RatioFeature;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/taobao/uikit/feature/features/RatioFeature;

    invoke-direct {v0}, Lcom/taobao/uikit/feature/features/RatioFeature;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/AliUrlImageView;->mRatioFeature:Lcom/taobao/uikit/feature/features/RatioFeature;

    .line 56
    iget-object v0, p0, Lcom/taobao/android/AliUrlImageView;->mRatioFeature:Lcom/taobao/uikit/feature/features/RatioFeature;

    invoke-virtual {p0, v0}, Lcom/taobao/android/AliUrlImageView;->addFeature(Lcom/taobao/uikit/feature/features/AbsFeature;)Z

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/AliUrlImageView;->mRatioFeature:Lcom/taobao/uikit/feature/features/RatioFeature;

    return-object v0
.end method


# virtual methods
.method public failListener(Lcom/taobao/android/AliImageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/AliImageListener<",
            "Lcom/taobao/android/AliImageFailEvent;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->failListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Lcom/taobao/android/AliImageFailListenerAdapter;

    invoke-direct {v0, p1}, Lcom/taobao/android/AliImageFailListenerAdapter;-><init>(Lcom/taobao/android/AliImageListener;)V

    invoke-super {p0, v0}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->failListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public newImageStrategyConfigBuilder(Ljava/lang/String;)Lcom/taobao/android/AliImageStrategyConfigBuilderInterface;
    .locals 1

    .line 34
    new-instance v0, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;

    invoke-static {p1}, Lcom/taobao/tao/image/ImageStrategyConfig;->newBuilderWithName(Ljava/lang/String;)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;-><init>(Lcom/taobao/tao/image/ImageStrategyConfig$Builder;)V

    return-object v0
.end method

.method public newImageStrategyConfigBuilder(Ljava/lang/String;I)Lcom/taobao/android/AliImageStrategyConfigBuilderInterface;
    .locals 1

    .line 29
    new-instance v0, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;

    invoke-static {p1, p2}, Lcom/taobao/tao/image/ImageStrategyConfig;->newBuilderWithName(Ljava/lang/String;I)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;-><init>(Lcom/taobao/tao/image/ImageStrategyConfig$Builder;)V

    return-object v0
.end method

.method public newImageStrategyConfigBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/AliImageStrategyConfigBuilderInterface;
    .locals 1

    .line 38
    new-instance v0, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;

    invoke-static {p1, p2}, Lcom/taobao/tao/image/ImageStrategyConfig;->newBuilderWithName(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;-><init>(Lcom/taobao/tao/image/ImageStrategyConfig$Builder;)V

    return-object v0
.end method

.method public setAutoRelease(Z)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setAutoRelease(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setCornerRadius(FFFF)V
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/taobao/android/AliUrlImageView;->getImageShapeFeature()Lcom/taobao/uikit/feature/features/ImageShapeFeature;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/uikit/feature/features/ImageShapeFeature;->setCornerRadius(FFFF)V

    return-void
.end method

.method public setDarkModeOverlay(ZI)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setErrorImageResId(I)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setErrorImageResId(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setImageUrl(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setOrientation(I)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/taobao/android/AliUrlImageView;->getRatioFeature()Lcom/taobao/uikit/feature/features/RatioFeature;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/RatioFeature;->setOrientation(I)V

    return-void
.end method

.method public setPlaceHoldForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setPlaceHoldForeground(Landroid/graphics/drawable/Drawable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setPlaceHoldImageResId(I)V
    .locals 0

    .line 133
    invoke-super {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setPlaceHoldImageResId(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setPriorityModuleName(Ljava/lang/String;)V
    .locals 0

    .line 148
    invoke-super {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setPriorityModuleName(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setRatio(F)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/taobao/android/AliUrlImageView;->getRatioFeature()Lcom/taobao/uikit/feature/features/RatioFeature;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/RatioFeature;->setRatio(F)V

    return-void
.end method

.method public setShape(I)V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/taobao/android/AliUrlImageView;->getImageShapeFeature()Lcom/taobao/uikit/feature/features/ImageShapeFeature;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/ImageShapeFeature;->setShape(I)V

    return-void
.end method

.method public setSkipAutoSize(Z)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setSkipAutoSize(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setStrategyConfig(Ljava/lang/Object;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setStrategyConfig(Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setStrokeColor(I)V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/taobao/android/AliUrlImageView;->getImageShapeFeature()Lcom/taobao/uikit/feature/features/ImageShapeFeature;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/features/ImageShapeFeature;->setStrokeEnable(Z)V

    .line 94
    invoke-direct {p0}, Lcom/taobao/android/AliUrlImageView;->getImageShapeFeature()Lcom/taobao/uikit/feature/features/ImageShapeFeature;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/ImageShapeFeature;->setStrokeColor(I)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2

    .line 99
    invoke-direct {p0}, Lcom/taobao/android/AliUrlImageView;->getImageShapeFeature()Lcom/taobao/uikit/feature/features/ImageShapeFeature;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/feature/features/ImageShapeFeature;->setStrokeEnable(Z)V

    .line 100
    invoke-direct {p0}, Lcom/taobao/android/AliUrlImageView;->getImageShapeFeature()Lcom/taobao/uikit/feature/features/ImageShapeFeature;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/feature/features/ImageShapeFeature;->setStrokeWidth(F)V

    return-void
.end method

.method public succListener(Lcom/taobao/android/AliImageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/AliImageListener<",
            "Lcom/taobao/android/AliImageSuccEvent;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->succListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    goto :goto_0

    .line 113
    :cond_0
    new-instance v0, Lcom/taobao/android/AliImageSuccListenerAdapter;

    invoke-direct {v0, p1}, Lcom/taobao/android/AliImageSuccListenerAdapter;-><init>(Lcom/taobao/android/AliImageListener;)V

    invoke-super {p0, v0}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->succListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
