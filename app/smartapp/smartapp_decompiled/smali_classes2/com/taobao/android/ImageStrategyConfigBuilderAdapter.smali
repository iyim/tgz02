.class public Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;
.super Ljava/lang/Object;
.source "ImageStrategyConfigBuilderAdapter.java"

# interfaces
.implements Lcom/taobao/android/AliImageStrategyConfigBuilderInterface;


# instance fields
.field private final mBuilder:Lcom/taobao/tao/image/ImageStrategyConfig$Builder;


# direct methods
.method public constructor <init>(Lcom/taobao/tao/image/ImageStrategyConfig$Builder;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;->mBuilder:Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    return-void
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;->mBuilder:Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    invoke-virtual {v0}, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->build()Lcom/taobao/tao/image/ImageStrategyConfig;

    move-result-object v0

    return-object v0
.end method

.method public enableLevelModel(Z)Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;->mBuilder:Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->enableLevelModel(Z)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    return-object p0
.end method

.method public enableMergeDomain(Z)Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;->mBuilder:Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->enableMergeDomain(Z)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    return-object p0
.end method

.method public enableQuality(Z)Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;->mBuilder:Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->enableQuality(Z)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    return-object p0
.end method

.method public enableSharpen(Z)Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;->mBuilder:Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->enableSharpen(Z)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    return-object p0
.end method

.method public enableWebP(Z)Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;->mBuilder:Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->enableWebP(Z)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    return-object p0
.end method

.method public forceWebPOn(Z)Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;->mBuilder:Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->forceWebPOn(Z)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    return-object p0
.end method

.method public setCutType(Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;)Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;->mBuilder:Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->setCutType(Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    return-object p0
.end method

.method public setFinalHeight(I)Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;->mBuilder:Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->setFinalHeight(I)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    return-object p0
.end method

.method public setFinalImageQuality(Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;)Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;->mBuilder:Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->setFinalImageQuality(Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    return-object p0
.end method

.method public setFinalWidth(I)Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;->mBuilder:Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->setFinalWidth(I)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    return-object p0
.end method

.method public bridge synthetic setSizeLimitType(Lcom/taobao/android/AliImageStrategyConfigBuilderInterface$AliSizeLimitType;)Lcom/taobao/android/AliImageStrategyConfigBuilderInterface;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;->setSizeLimitType(Lcom/taobao/android/AliImageStrategyConfigBuilderInterface$AliSizeLimitType;)Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;

    move-result-object p1

    return-object p1
.end method

.method public setSizeLimitType(Lcom/taobao/android/AliImageStrategyConfigBuilderInterface$AliSizeLimitType;)Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;->mBuilder:Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    invoke-virtual {p1}, Lcom/taobao/android/AliImageStrategyConfigBuilderInterface$AliSizeLimitType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->valueOf(Ljava/lang/String;)Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->setSizeLimitType(Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    return-object p0
.end method

.method public skip(Z)Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/taobao/android/ImageStrategyConfigBuilderAdapter;->mBuilder:Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->skip(Z)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    return-object p0
.end method
