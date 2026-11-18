.class public Lcom/alibaba/ailabs/genie/genieui/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DeviceUtils"

.field private static isS4A02:Z

.field private static isS7A04:Z


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

    const-string/jumbo v0, "ro.product.model"

    const-string/jumbo v1, "unKnown"

    .line 18
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "model= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static isS4A02()Z
    .locals 2

    .line 27
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/utils/DeviceUtils;->getProductModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AILABS_S4A02"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/ailabs/genie/genieui/utils/DeviceUtils;->isS4A02:Z

    .line 29
    sget-boolean v0, Lcom/alibaba/ailabs/genie/genieui/utils/DeviceUtils;->isS4A02:Z

    return v0
.end method

.method public static isS7A04()Z
    .locals 2

    .line 36
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/utils/DeviceUtils;->getProductModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AILABS_S7A04"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/ailabs/genie/genieui/utils/DeviceUtils;->isS7A04:Z

    .line 38
    sget-boolean v0, Lcom/alibaba/ailabs/genie/genieui/utils/DeviceUtils;->isS7A04:Z

    return v0
.end method
