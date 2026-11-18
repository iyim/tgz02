.class public Lcom/alibaba/ailabs/genie/musicplayer/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field public static final SHOCK_WAVE:Ljava/lang/String; = "AILABS_S4A02"

.field public static final TAG:Ljava/lang/String; = "DeviceUtils"

.field private static sIsShockWave:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getProductModel()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.product.model"

    const-string v1, "unKnown"

    .line 27
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "model= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceUtils"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isShockWave()Z
    .locals 2

    .line 19
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/DeviceUtils;->sIsShockWave:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 20
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/DeviceUtils;->getProductModel()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AILABS_S4A02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/DeviceUtils;->sIsShockWave:Ljava/lang/Boolean;

    .line 23
    :cond_1
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/DeviceUtils;->sIsShockWave:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
