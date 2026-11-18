.class public Lcom/rich/czlylibary/bean/QueryForSDKResult;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private chCode:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private openTime:Ljava/lang/String;

.field private resourceType:Ljava/lang/String;

.field private smartDeviceId:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private toneQuality:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getChCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QueryForSDKResult;->chCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QueryForSDKResult;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QueryForSDKResult;->openTime:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QueryForSDKResult;->resourceType:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QueryForSDKResult;->smartDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QueryForSDKResult;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getToneQuality()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QueryForSDKResult;->toneQuality:Ljava/lang/String;

    return-object v0
.end method

.method public setChCode(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/rich/czlylibary/bean/QueryForSDKResult;->chCode:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/rich/czlylibary/bean/QueryForSDKResult;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setOpenTime(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/rich/czlylibary/bean/QueryForSDKResult;->openTime:Ljava/lang/String;

    return-void
.end method

.method public setResourceType(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/rich/czlylibary/bean/QueryForSDKResult;->resourceType:Ljava/lang/String;

    return-void
.end method

.method public setSmartDeviceId(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/rich/czlylibary/bean/QueryForSDKResult;->smartDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/rich/czlylibary/bean/QueryForSDKResult;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setToneQuality(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/rich/czlylibary/bean/QueryForSDKResult;->toneQuality:Ljava/lang/String;

    return-void
.end method
