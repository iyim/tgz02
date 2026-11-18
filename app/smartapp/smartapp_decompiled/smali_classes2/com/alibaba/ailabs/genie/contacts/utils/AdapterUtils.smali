.class public Lcom/alibaba/ailabs/genie/contacts/utils/AdapterUtils;
.super Ljava/lang/Object;
.source "AdapterUtils.java"


# static fields
.field private static final DEVICES_DPI:I = 0xa0

.field private static final DEVICES_HEIGHT:I = 0x1e0

.field private static final DEVICES_WIDTH:I = 0x3c0

.field private static final STANDARD_HEIGHT:F = 600.0f

.field private static final STANDARD_WIDTH:F = 1024.0f

.field private static final TAG:Ljava/lang/String; = "AdapterUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isS4A02(Landroid/content/Context;)Z
    .locals 1

    .line 24
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->getWidth(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0x3c0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setCustomDensity(Landroid/content/Context;)V
    .locals 5

    .line 33
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->getWidth(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x3c0

    if-gt v0, v1, :cond_0

    .line 35
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/app/ContactsApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 36
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " targetDensity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " targetDensityDpi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdapterUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 41
    iput v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 44
    iput v1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, p0, Landroid/util/DisplayMetrics;->density:F

    .line 45
    iput v2, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    :cond_0
    return-void
.end method

.method public static setCustomDensityHeight(Landroid/content/Context;)V
    .locals 5

    .line 53
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->getHeigth(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_0

    .line 55
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/app/ContactsApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 56
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x44160000    # 600.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " targetDensity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " targetDensityDpi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdapterUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 61
    iput v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 64
    iput v1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, p0, Landroid/util/DisplayMetrics;->density:F

    .line 65
    iput v2, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    :cond_0
    return-void
.end method
