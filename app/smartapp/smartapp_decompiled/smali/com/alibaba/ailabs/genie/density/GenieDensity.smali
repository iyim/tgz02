.class public Lcom/alibaba/ailabs/genie/density/GenieDensity;
.super Ljava/lang/Object;
.source "GenieDensity.java"


# static fields
.field private static final H_BASE_10:F = 800.0f

.field private static final H_BASE_7:F = 600.0f

.field private static final TAG:Ljava/lang/String; = "GenieDensity"

.field private static final W_BASE_10:F = 1280.0f

.field private static final W_BASE_7:F = 1024.0f

.field private static appScaleH_10:F

.field private static appScaleH_7:F

.field private static appScaleW_10:F

.field private static appScaleW_7:F

.field private static mAppDm:Landroid/util/DisplayMetrics;

.field private static noncompatDensity:F

.field private static noncompatDensityDpi:I

.field private static noncompatScaledDensity:F

.field private static noncompatXdpi:F

.field private static noncompatYdpi:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static handleRevert(Landroid/util/DisplayMetrics;)V
    .locals 1

    .line 176
    sget v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatDensity:F

    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 178
    sget v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatDensityDpi:I

    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 180
    sget v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatScaledDensity:F

    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 182
    sget v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatXdpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 183
    sget v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatYdpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    return-void
.end method

.method private static handleUpdate(Landroid/util/DisplayMetrics;)Z
    .locals 5

    .line 114
    sget v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->appScaleH_7:F

    .line 116
    sget v1, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatDensity:F

    mul-float v1, v1, v0

    .line 117
    sget v2, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatDensityDpi:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 118
    sget v3, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatScaledDensity:F

    mul-float v3, v3, v0

    .line 120
    iget v4, p0, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_0

    iget v4, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v2, v4, :cond_0

    iget v4, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    const/4 p0, 0x0

    return p0

    .line 126
    :cond_0
    iput v1, p0, Landroid/util/DisplayMetrics;->density:F

    .line 127
    iput v2, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 128
    iput v3, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 130
    sget v1, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatXdpi:F

    mul-float v1, v1, v0

    iput v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 131
    sget v1, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatYdpi:F

    mul-float v1, v1, v0

    iput v1, p0, Landroid/util/DisplayMetrics;->ydpi:F

    const/4 p0, 0x1

    return p0
.end method

.method private static handleUpdateWithMetaBean(Landroid/util/DisplayMetrics;Lcom/alibaba/ailabs/genie/density/MetaBean;)Z
    .locals 4

    .line 138
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/density/MetaBean;->getAutoSize()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/density/MetaBean;->getOrientation()I

    move-result p1

    if-nez p1, :cond_1

    .line 148
    sget p1, Lcom/alibaba/ailabs/genie/density/GenieDensity;->appScaleW_10:F

    goto :goto_0

    .line 150
    :cond_1
    sget p1, Lcom/alibaba/ailabs/genie/density/GenieDensity;->appScaleH_10:F

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/density/MetaBean;->getOrientation()I

    move-result p1

    if-nez p1, :cond_3

    .line 141
    sget p1, Lcom/alibaba/ailabs/genie/density/GenieDensity;->appScaleW_7:F

    goto :goto_0

    .line 143
    :cond_3
    sget p1, Lcom/alibaba/ailabs/genie/density/GenieDensity;->appScaleH_7:F

    .line 155
    :goto_0
    sget v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatDensity:F

    mul-float v0, v0, p1

    .line 156
    sget v1, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatDensityDpi:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 157
    sget v2, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatScaledDensity:F

    mul-float v2, v2, p1

    .line 159
    iget v3, p0, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v3, v0, v3

    if-nez v3, :cond_4

    iget v3, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v1, v3, :cond_4

    iget v3, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_4

    const/4 p0, 0x0

    return p0

    .line 165
    :cond_4
    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 166
    iput v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 167
    iput v2, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 169
    sget v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatXdpi:F

    mul-float v0, v0, p1

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 170
    sget v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatYdpi:F

    mul-float v0, v0, p1

    iput v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    const/4 p0, 0x1

    return p0
.end method

.method public static revertApplication()V
    .locals 2

    .line 96
    sget-object v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->mAppDm:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 100
    :cond_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->handleRevert(Landroid/util/DisplayMetrics;)V

    const-string v0, "GenieDensity"

    const-string/jumbo v1, "revertApplication() called"

    .line 102
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/density/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static updateApplication()Z
    .locals 3

    .line 64
    sget-object v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->mAppDm:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    .line 68
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->handleUpdate(Landroid/util/DisplayMetrics;)Z

    move-result v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateApplication() called. handle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GenieDensity"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/density/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GenieDensityInstaller has already been installed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static updateApplication(Landroid/app/Activity;)Z
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/alibaba/ailabs/genie/density/GenieDensity;->mAppDm:Landroid/util/DisplayMetrics;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    sput-object v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->mAppDm:Landroid/util/DisplayMetrics;

    .line 88
    :cond_1
    sget-object v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->mAppDm:Landroid/util/DisplayMetrics;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->handleUpdate(Landroid/util/DisplayMetrics;)Z

    move-result v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateApplication() called. hostActivity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " handle = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GenieDensity"

    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/density/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method init(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 49
    sput-object p1, Lcom/alibaba/ailabs/genie/density/GenieDensity;->mAppDm:Landroid/util/DisplayMetrics;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 51
    sput v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatDensity:F

    const/16 v1, 0xa0

    .line 52
    sput v1, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatDensityDpi:I

    .line 53
    sput v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatScaledDensity:F

    const/high16 v0, 0x43200000    # 160.0f

    .line 54
    sput v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatXdpi:F

    .line 55
    sput v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->noncompatYdpi:F

    .line 57
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    sput v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->appScaleW_7:F

    .line 58
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x44160000    # 600.0f

    div-float/2addr v0, v1

    sput v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->appScaleH_7:F

    .line 59
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x44a00000    # 1280.0f

    div-float/2addr v0, v1

    sput v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;->appScaleW_10:F

    .line 60
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    const/high16 v0, 0x44480000    # 800.0f

    div-float/2addr p1, v0

    sput p1, Lcom/alibaba/ailabs/genie/density/GenieDensity;->appScaleH_10:F

    return-void
.end method

.method revert(Landroid/util/DisplayMetrics;)V
    .locals 0

    .line 110
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->handleRevert(Landroid/util/DisplayMetrics;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method updateWithMetaBean(Landroid/util/DisplayMetrics;Lcom/alibaba/ailabs/genie/density/MetaBean;)V
    .locals 0

    .line 106
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->handleUpdateWithMetaBean(Landroid/util/DisplayMetrics;Lcom/alibaba/ailabs/genie/density/MetaBean;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
