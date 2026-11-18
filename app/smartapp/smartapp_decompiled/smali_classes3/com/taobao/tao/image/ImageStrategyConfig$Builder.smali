.class public Lcom/taobao/tao/image/ImageStrategyConfig$Builder;
.super Ljava/lang/Object;
.source "ImageStrategyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/image/ImageStrategyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field bizId:I

.field bizIdStr:Ljava/lang/String;

.field bizName:Ljava/lang/String;

.field cutType:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

.field enabledLevelModel:Ljava/lang/Boolean;

.field enabledMergeDomain:Ljava/lang/Boolean;

.field enabledQuality:Ljava/lang/Boolean;

.field enabledSharpen:Ljava/lang/Boolean;

.field enabledWebP:Ljava/lang/Boolean;

.field finalHeight:I

.field finalImageQuality:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

.field finalWidth:I

.field forcedWebPOn:Ljava/lang/Boolean;

.field sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

.field skipped:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 194
    iput v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->finalWidth:I

    .line 195
    iput v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->finalHeight:I

    .line 207
    iput-object p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->bizName:Ljava/lang/String;

    const-string p1, ""

    .line 208
    iput-object p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->bizIdStr:Ljava/lang/String;

    .line 209
    iput p2, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->bizId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 194
    iput v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->finalWidth:I

    .line 195
    iput v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->finalHeight:I

    .line 213
    iput-object p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->bizName:Ljava/lang/String;

    .line 214
    iput-object p2, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->bizIdStr:Ljava/lang/String;

    const/4 p1, 0x0

    .line 215
    iput p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->bizId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/taobao/tao/image/ImageStrategyConfig;
    .locals 2

    .line 323
    new-instance v0, Lcom/taobao/tao/image/ImageStrategyConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/tao/image/ImageStrategyConfig;-><init>(Lcom/taobao/tao/image/ImageStrategyConfig$Builder;Lcom/taobao/tao/image/ImageStrategyConfig$1;)V

    return-object v0
.end method

.method public enableLevelModel(Z)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;
    .locals 0

    .line 310
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->enabledLevelModel:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enableMergeDomain(Z)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;
    .locals 0

    .line 302
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->enabledMergeDomain:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enableQuality(Z)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;
    .locals 0

    .line 284
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->enabledQuality:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enableSharpen(Z)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;
    .locals 0

    .line 293
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->enabledSharpen:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enableWebP(Z)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;
    .locals 0

    .line 256
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->enabledWebP:Ljava/lang/Boolean;

    return-object p0
.end method

.method public forceWebPOn(Z)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;
    .locals 0

    .line 275
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->forcedWebPOn:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setCutType(Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->cutType:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    return-object p0
.end method

.method public setFinalHeight(I)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;
    .locals 0

    .line 238
    iput p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->finalHeight:I

    return-object p0
.end method

.method public setFinalImageQuality(Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->finalImageQuality:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    return-object p0
.end method

.method public setFinalWidth(I)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;
    .locals 0

    .line 230
    iput p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->finalWidth:I

    return-object p0
.end method

.method public setSizeLimitType(Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    return-object p0
.end method

.method public skip(Z)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;
    .locals 0

    .line 222
    iput-boolean p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->skipped:Z

    return-object p0
.end method
