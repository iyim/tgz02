.class public Lcom/taobao/tao/util/ImageStrategyDecider;
.super Ljava/lang/Object;
.source "ImageStrategyDecider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static decideUrl(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 21
    instance-of v0, p3, Lcom/taobao/tao/image/ImageStrategyConfig;

    if-eqz v0, :cond_0

    .line 22
    nop

    nop

    goto :goto_0

    :cond_0
    const-string p3, "default"

    .line 24
    invoke-static {p3}, Lcom/taobao/tao/image/ImageStrategyConfig;->newBuilderWithName(Ljava/lang/String;)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->build()Lcom/taobao/tao/image/ImageStrategyConfig;

    move-result-object p3

    .line 27
    :goto_0
    invoke-virtual {p3}, Lcom/taobao/tao/image/ImageStrategyConfig;->getSizeLimitType()Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    move-result-object v0

    sget-object v1, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->WIDTH_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    if-ne v0, v1, :cond_1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p3}, Lcom/taobao/tao/image/ImageStrategyConfig;->getSizeLimitType()Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    move-result-object v0

    sget-object v1, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->HEIGHT_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    if-ne v0, v1, :cond_2

    .line 30
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    if-lez v0, :cond_3

    int-to-float v0, v0

    .line 35
    invoke-static {}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->getInstance()Lcom/taobao/tao/util/TaobaoImageUrlStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->getDip()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    :cond_3
    const/16 v1, 0x44

    .line 37
    invoke-static {v1}, Lcom/taobao/tao/image/Logger;->isLoggable(C)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    invoke-virtual {p3}, Lcom/taobao/tao/image/ImageStrategyConfig;->report()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "STRATEGY.ALL"

    const-string p2, "ImageStrategyDecider decideUrl, url=%s, width=%d, height=%d, info=%s"

    invoke-static {p1, p2, v1}, Lcom/taobao/tao/image/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :cond_4
    invoke-static {}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->getInstance()Lcom/taobao/tao/util/TaobaoImageUrlStrategy;

    move-result-object p1

    invoke-virtual {p1, p0, v0, p3}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->decideUrl(Ljava/lang/String;ILcom/taobao/tao/image/ImageStrategyConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static doStrictConvergeAndWebP(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 59
    :cond_0
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$UriCDNInfo;

    invoke-direct {v0, p0}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$UriCDNInfo;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/taobao/tao/util/OssImageUrlStrategy;->getInstance()Lcom/taobao/tao/util/OssImageUrlStrategy;

    move-result-object v1

    iget-object v2, v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$UriCDNInfo;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/tao/util/OssImageUrlStrategy;->isOssDomain(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 61
    invoke-static {}, Lcom/taobao/tao/util/OssImageUrlStrategy;->getInstance()Lcom/taobao/tao/util/OssImageUrlStrategy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/tao/util/OssImageUrlStrategy;->isFuzzyExclude(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 62
    invoke-static {p0}, Lcom/taobao/tao/util/ImageStrategyExtra;->getBaseUrlInfo(Ljava/lang/String;)Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;

    move-result-object v0

    .line 63
    iget-object v1, v0, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->base:Ljava/lang/String;

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, v0, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->ext:Ljava/lang/String;

    const-string v4, ".jpg"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->ext:Ljava/lang/String;

    const-string v4, ".png"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 65
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".webp"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->suffix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 68
    :cond_2
    invoke-static {}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->getInstance()Lcom/taobao/tao/util/TaobaoImageUrlStrategy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->isStrictCdnImage(Lcom/taobao/tao/util/TaobaoImageUrlStrategy$UriCDNInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    invoke-static {}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->getInstance()Lcom/taobao/tao/util/TaobaoImageUrlStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->isDomainSwitch()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    invoke-static {}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->getInstance()Lcom/taobao/tao/util/TaobaoImageUrlStrategy;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy;->strictConvergenceUrl(Lcom/taobao/tao/util/TaobaoImageUrlStrategy$UriCDNInfo;Z)Ljava/lang/String;

    move-result-object p0

    .line 72
    :cond_3
    invoke-static {p0}, Lcom/taobao/tao/util/ImageStrategyExtra;->getBaseUrlInfo(Ljava/lang/String;)Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;

    move-result-object v0

    .line 73
    iget-object v1, v0, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->base:Ljava/lang/String;

    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "_.webp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->suffix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static justConvergeAndWebP(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 49
    invoke-static {p0}, Lcom/taobao/tao/util/ImageStrategyDecider;->doStrictConvergeAndWebP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 50
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object v0, v1, p0

    const-string p0, "STRATEGY.ALL"

    const-string v2, "ImageStrategyDecider justConvergeAndWebP, raw=%s, ret=%s"

    invoke-static {p0, v2, v1}, Lcom/taobao/tao/image/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
