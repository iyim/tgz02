.class public Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;
.super Ljava/lang/Object;
.source "TaobaoImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/util/TaobaoImageUrlStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceImageSwitch"
.end annotation


# instance fields
.field private areaName:Ljava/lang/String;

.field private highNetQ:Ljava/lang/String;

.field private highNetScale:D

.field private highNetSharpen:Ljava/lang/String;

.field private lowNetQ:Ljava/lang/String;

.field private lowNetScale:D

.field private lowNetSharpen:Ljava/lang/String;

.field private suffix:Ljava/lang/String;

.field private useCdnSizes:Z

.field private useWebp:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1178
    iput-boolean v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->useWebp:Z

    .line 1182
    sget-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v0}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getImageQuality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->lowNetQ:Ljava/lang/String;

    .line 1183
    sget-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q90:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v0}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getImageQuality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->highNetQ:Ljava/lang/String;

    .line 1186
    sget-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;

    invoke-virtual {v0}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;->getImageSharpen()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->lowNetSharpen:Ljava/lang/String;

    .line 1187
    sget-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;

    invoke-virtual {v0}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;->getImageSharpen()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->highNetSharpen:Ljava/lang/String;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1190
    iput-wide v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->lowNetScale:D

    .line 1191
    iput-wide v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->highNetScale:D

    const/4 v0, 0x0

    .line 1193
    iput-boolean v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->useCdnSizes:Z

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->areaName:Ljava/lang/String;

    return-object v0
.end method

.method public getHighNetQ()Ljava/lang/String;
    .locals 1

    .line 1247
    iget-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->highNetQ:Ljava/lang/String;

    return-object v0
.end method

.method public getHighNetScale()D
    .locals 2

    .line 1279
    iget-wide v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->highNetScale:D

    return-wide v0
.end method

.method public getHighNetSharpen()Ljava/lang/String;
    .locals 1

    .line 1263
    iget-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->highNetSharpen:Ljava/lang/String;

    return-object v0
.end method

.method public getLowNetQ()Ljava/lang/String;
    .locals 1

    .line 1239
    iget-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->lowNetQ:Ljava/lang/String;

    return-object v0
.end method

.method public getLowNetScale()D
    .locals 2

    .line 1271
    iget-wide v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->lowNetScale:D

    return-wide v0
.end method

.method public getLowNetSharpen()Ljava/lang/String;
    .locals 1

    .line 1255
    iget-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->lowNetSharpen:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 1231
    iget-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public isUseCdnSizes()Z
    .locals 1

    .line 1223
    iget-boolean v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->useCdnSizes:Z

    return v0
.end method

.method public isUseWebp()Z
    .locals 1

    .line 1214
    iget-boolean v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->useWebp:Z

    return v0
.end method

.method public setAreaName(Ljava/lang/String;)V
    .locals 0

    .line 1210
    iput-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->areaName:Ljava/lang/String;

    return-void
.end method

.method public setHighNetQ(Ljava/lang/String;)V
    .locals 1

    .line 1251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q90:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {p1}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getImageQuality()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->highNetQ:Ljava/lang/String;

    return-void
.end method

.method public setHighNetScale(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 1283
    :cond_0
    iget-wide p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->highNetScale:D

    :goto_0
    iput-wide p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->highNetScale:D

    return-void
.end method

.method public setHighNetSharpen(Ljava/lang/String;)V
    .locals 1

    .line 1267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->highNetSharpen:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->highNetSharpen:Ljava/lang/String;

    return-void
.end method

.method public setLowNetQ(Ljava/lang/String;)V
    .locals 1

    .line 1243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {p1}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getImageQuality()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->lowNetQ:Ljava/lang/String;

    return-void
.end method

.method public setLowNetScale(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 1275
    :cond_0
    iget-wide p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->lowNetScale:D

    :goto_0
    iput-wide p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->lowNetScale:D

    return-void
.end method

.method public setLowNetSharpen(Ljava/lang/String;)V
    .locals 1

    .line 1259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->lowNetSharpen:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->lowNetSharpen:Ljava/lang/String;

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 1235
    iput-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->suffix:Ljava/lang/String;

    return-void
.end method

.method public setUseWebp(Z)V
    .locals 0

    .line 1218
    iput-boolean p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->useWebp:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "areaName ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->areaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " useWebp ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->useWebp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " lowNetQ ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->lowNetQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " highNetQ ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->highNetQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lowNetSharpen ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->lowNetSharpen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " highNetSharpen ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->highNetSharpen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lowNetScale ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->lowNetScale:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " highNetScale ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->highNetScale:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " useCdnSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->useCdnSizes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useCdnSizes(Z)V
    .locals 0

    .line 1227
    iput-boolean p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;->useCdnSizes:Z

    return-void
.end method
