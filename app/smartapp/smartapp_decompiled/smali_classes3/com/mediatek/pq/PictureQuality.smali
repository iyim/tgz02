.class public Lcom/mediatek/pq/PictureQuality;
.super Ljava/lang/Object;
.source "PictureQuality.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/pq/PictureQuality$GammaLut;,
        Lcom/mediatek/pq/PictureQuality$SystemProperties;,
        Lcom/mediatek/pq/PictureQuality$Range;,
        Lcom/mediatek/pq/PictureQuality$Hist;
    }
.end annotation


# static fields
.field private static final BLUELIGHT_DEFAULT_PROPERTY_NAME:Ljava/lang/String; = "persist.sys.bluelight.default"

.field public static final CAPABILITY_MASK_COLOR:I = 0x1

.field public static final CAPABILITY_MASK_DC:I = 0x8

.field public static final CAPABILITY_MASK_GAMMA:I = 0x4

.field public static final CAPABILITY_MASK_OD:I = 0x10

.field public static final CAPABILITY_MASK_SHARPNESS:I = 0x2

.field private static final CHAMELEON_DEFAULT_PROPERTY_NAME:Ljava/lang/String; = "persist.sys.chameleon.default"

.field public static final DCHIST_INFO_NUM:I = 0x14

.field private static final GAMMA_INDEX_PROPERTY_NAME:Ljava/lang/String; = "persist.sys.gamma.index"

.field public static final GAMMA_LUT_SIZE:I = 0x200

.field public static final MODE_CAMERA:I = 0x1

.field public static final MODE_MASK:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_VIDEO:I = 0x2

.field public static final PIC_MODE_STANDARD:I = 0x0

.field public static final PIC_MODE_USER_DEF:I = 0x2

.field public static final PIC_MODE_VIVID:I = 0x1

.field static sLibStatus:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "JNI_PQ"

    :try_start_0
    const-string v1, "loadLibrary"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "jni_pq"

    .line 163
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "UnsatisfiedLinkError"

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 166
    sput-boolean v0, Lcom/mediatek/pq/PictureQuality;->sLibStatus:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableBlueLight(Z)Z
    .locals 1

    .line 492
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOnTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableBlueLight(ZI)Z

    move-result p0

    return p0
.end method

.method public static enableBlueLight(ZI)Z
    .locals 0

    .line 488
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeEnableBlueLight(ZI)Z

    move-result p0

    return p0
.end method

.method public static enableChameleon(Z)Z
    .locals 1

    .line 544
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOnTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableChameleon(ZI)Z

    move-result p0

    return p0
.end method

.method public static enableChameleon(ZI)Z
    .locals 0

    .line 540
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeEnableChameleon(ZI)Z

    move-result p0

    return p0
.end method

.method public static enableColor(I)Z
    .locals 0

    .line 235
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableColor(I)Z

    move-result p0

    return p0
.end method

.method public static enableColorEffect(I)Z
    .locals 0

    .line 263
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableColorEffect(I)Z

    move-result p0

    return p0
.end method

.method public static enableContentColor(I)Z
    .locals 0

    .line 240
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableContentColor(I)Z

    move-result p0

    return p0
.end method

.method public static enableDynamicContrast(I)Z
    .locals 0

    .line 252
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableDynamicContrast(I)Z

    move-result p0

    return p0
.end method

.method public static enableDynamicSharpness(I)Z
    .locals 0

    .line 257
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableDynamicSharpness(I)Z

    move-result p0

    return p0
.end method

.method public static enableGamma(I)Z
    .locals 0

    .line 269
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableGamma(I)Z

    move-result p0

    return p0
.end method

.method public static enableISOAdaptiveSharpness(I)Z
    .locals 0

    .line 278
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableISOAdaptiveSharpness(I)Z

    move-result p0

    return p0
.end method

.method public static enableOD(I)Z
    .locals 0

    .line 274
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableOD(I)Z

    move-result p0

    return p0
.end method

.method public static enablePQ(I)Z
    .locals 0

    .line 229
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnablePQ(I)Z

    move-result p0

    return p0
.end method

.method public static enableSharpness(I)Z
    .locals 0

    .line 246
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableSharpness(I)Z

    move-result p0

    return p0
.end method

.method public static enableUltraResolution(I)Z
    .locals 0

    .line 282
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableUltraResolution(I)Z

    move-result p0

    return p0
.end method

.method public static enableVideoHDR(Z)Z
    .locals 0

    .line 620
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableVideoHDR(Z)Z

    move-result p0

    return p0
.end method

.method public static getBlueLightStrength()I
    .locals 1

    .line 481
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetBlueLightStrength()I

    move-result v0

    return v0
.end method

.method public static getBlueLightStrengthRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 4

    .line 457
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    const-string v1, "persist.sys.bluelight.default"

    const/16 v2, 0x80

    .line 458
    invoke-static {v1, v2}, Lcom/mediatek/pq/PictureQuality$SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-virtual {v0, v2, v3, v1}, Lcom/mediatek/pq/PictureQuality$Range;->set(III)V

    return-object v0
.end method

.method public static getCapability()I
    .locals 1

    .line 180
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetCapability()I

    move-result v0

    return v0
.end method

.method public static getChameleonStrength()I
    .locals 1

    .line 533
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetChameleonStrength()I

    move-result v0

    return v0
.end method

.method public static getChameleonStrengthRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 4

    .line 509
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    const-string v1, "persist.sys.chameleon.default"

    const/16 v2, 0x80

    .line 510
    invoke-static {v1, v2}, Lcom/mediatek/pq/PictureQuality$SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-virtual {v0, v2, v3, v1}, Lcom/mediatek/pq/PictureQuality$Range;->set(III)V

    return-object v0
.end method

.method public static getColorEffectIndex()I
    .locals 1

    .line 404
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetColorEffectIndex()I

    move-result v0

    return v0
.end method

.method public static getColorEffectIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .line 398
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 399
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetColorEffectIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    return-object v0
.end method

.method public static getContrastIndex()I
    .locals 1

    .line 317
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetContrastIndex()I

    move-result v0

    return v0
.end method

.method public static getContrastIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .line 311
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 312
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    return-object v0
.end method

.method public static getDefaultOffTransitionStep()I
    .locals 1

    .line 560
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetDefaultOffTransitionStep()I

    move-result v0

    return v0
.end method

.method public static getDefaultOnTransitionStep()I
    .locals 1

    .line 569
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetDefaultOnTransitionStep()I

    move-result v0

    return v0
.end method

.method public static getDynamicContrastHistogram([BII)Lcom/mediatek/pq/PictureQuality$Hist;
    .locals 1

    .line 221
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Hist;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Hist;-><init>()V

    .line 222
    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastHistogram([BIILcom/mediatek/pq/PictureQuality$Hist;)V

    return-object v0
.end method

.method public static getDynamicContrastIndex()I
    .locals 1

    .line 389
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastIndex()I

    move-result v0

    return v0
.end method

.method public static getDynamicContrastIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .line 383
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 384
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    return-object v0
.end method

.method public static getExternalPanelNits()I
    .locals 1

    .line 650
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetExternalPanelNits()I

    move-result v0

    return v0
.end method

.method public static getGammaIndex()I
    .locals 2

    .line 447
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getGammaIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v0

    iget v0, v0, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    const-string v1, "persist.sys.gamma.index"

    invoke-static {v1, v0}, Lcom/mediatek/pq/PictureQuality$SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGammaIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .line 420
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 421
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetGammaIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    return-object v0
.end method

.method public static getGlobalPQStrength()I
    .locals 1

    .line 605
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetGlobalPQStrength()I

    move-result v0

    return v0
.end method

.method public static getGlobalPQStrengthRange()I
    .locals 1

    .line 613
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetGlobalPQStrengthRange()I

    move-result v0

    return v0
.end method

.method public static getGlobalPQSwitch()I
    .locals 1

    .line 587
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetGlobalPQSwitch()I

    move-result v0

    return v0
.end method

.method public static getLibStatus()Z
    .locals 1

    .line 171
    sget-boolean v0, Lcom/mediatek/pq/PictureQuality;->sLibStatus:Z

    return v0
.end method

.method public static getPicBrightnessIndex()I
    .locals 1

    .line 355
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetPicBrightnessIndex()I

    move-result v0

    return v0
.end method

.method public static getPicBrightnessIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .line 349
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 350
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetPicBrightnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    return-object v0
.end method

.method public static getPictureMode()I
    .locals 1

    .line 288
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetPictureMode()I

    move-result v0

    return v0
.end method

.method public static getSaturationIndex()I
    .locals 1

    .line 336
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetSaturationIndex()I

    move-result v0

    return v0
.end method

.method public static getSaturationIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .line 330
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 331
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetSaturationIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    return-object v0
.end method

.method public static getSharpnessIndex()I
    .locals 1

    .line 374
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetSharpnessIndex()I

    move-result v0

    return v0
.end method

.method public static getSharpnessIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .line 368
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 369
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetSharpnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    return-object v0
.end method

.method public static isBlueLightEnabled()Z
    .locals 1

    .line 499
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeIsBlueLightEnabled()Z

    move-result v0

    return v0
.end method

.method public static isChameleonEnabled()Z
    .locals 1

    .line 551
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeIsChameleonEnabled()Z

    move-result v0

    return v0
.end method

.method public static isVideoHDREnabled()Z
    .locals 1

    .line 627
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeIsVideoHDREnabled()Z

    move-result v0

    return v0
.end method

.method private static native nativeEnableBlueLight(ZI)Z
.end method

.method private static native nativeEnableChameleon(ZI)Z
.end method

.method private static native nativeEnableColor(I)Z
.end method

.method private static native nativeEnableColorEffect(I)Z
.end method

.method private static native nativeEnableContentColor(I)Z
.end method

.method private static native nativeEnableDynamicContrast(I)Z
.end method

.method private static native nativeEnableDynamicSharpness(I)Z
.end method

.method private static native nativeEnableGamma(I)Z
.end method

.method private static native nativeEnableISOAdaptiveSharpness(I)Z
.end method

.method private static native nativeEnableOD(I)Z
.end method

.method private static native nativeEnablePQ(I)Z
.end method

.method private static native nativeEnableSharpness(I)Z
.end method

.method private static native nativeEnableUltraResolution(I)Z
.end method

.method private static native nativeEnableVideoHDR(Z)Z
.end method

.method private static native nativeGetBlueLightStrength()I
.end method

.method private static native nativeGetCapability()I
.end method

.method private static native nativeGetChameleonStrength()I
.end method

.method private static native nativeGetColorEffectIndex()I
.end method

.method private static native nativeGetColorEffectIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetContrastIndex()I
.end method

.method private static native nativeGetContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetDefaultOffTransitionStep()I
.end method

.method private static native nativeGetDefaultOnTransitionStep()I
.end method

.method private static native nativeGetDynamicContrastHistogram([BIILcom/mediatek/pq/PictureQuality$Hist;)V
.end method

.method private static native nativeGetDynamicContrastIndex()I
.end method

.method private static native nativeGetDynamicContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetExternalPanelNits()I
.end method

.method private static native nativeGetGammaIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetGlobalPQStrength()I
.end method

.method private static native nativeGetGlobalPQStrengthRange()I
.end method

.method private static native nativeGetGlobalPQSwitch()I
.end method

.method private static native nativeGetPicBrightnessIndex()I
.end method

.method private static native nativeGetPicBrightnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetPictureMode()I
.end method

.method private static native nativeGetSaturationIndex()I
.end method

.method private static native nativeGetSaturationIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetSharpnessIndex()I
.end method

.method private static native nativeGetSharpnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeIsBlueLightEnabled()Z
.end method

.method private static native nativeIsChameleonEnabled()Z
.end method

.method private static native nativeIsVideoHDREnabled()Z
.end method

.method private static native nativeSetAALFunction(I)V
.end method

.method private static native nativeSetBlueLightStrength(II)Z
.end method

.method private static native nativeSetCameraPreviewMode(I)V
.end method

.method private static native nativeSetChameleonStrength(II)Z
.end method

.method private static native nativeSetColorEffectIndex(I)V
.end method

.method private static native nativeSetColorRegion(IIIII)Z
.end method

.method private static native nativeSetContrastIndex(II)V
.end method

.method private static native nativeSetDynamicContrastIndex(I)V
.end method

.method private static native nativeSetExternalPanelNits(I)Z
.end method

.method private static native nativeSetGalleryNormalMode(I)V
.end method

.method private static native nativeSetGammaIndex(II)V
.end method

.method private static native nativeSetGlobalPQStrength(I)Z
.end method

.method private static native nativeSetGlobalPQSwitch(I)Z
.end method

.method private static native nativeSetPicBrightnessIndex(II)V
.end method

.method private static native nativeSetPictureMode(II)Z
.end method

.method private static native nativeSetRGBGain(IIII)Z
.end method

.method private static native nativeSetSaturationIndex(II)V
.end method

.method private static native nativeSetSharpnessIndex(I)V
.end method

.method private static native nativeSetVideoPlaybackMode(I)V
.end method

.method public static setAALFunction(I)V
    .locals 0

    .line 634
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetAALFunction(I)V

    return-void
.end method

.method public static setBlueLightStrength(I)Z
    .locals 1

    .line 472
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOffTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeSetBlueLightStrength(II)Z

    move-result p0

    return p0
.end method

.method public static setBlueLightStrength(II)Z
    .locals 0

    .line 468
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetBlueLightStrength(II)Z

    move-result p0

    return p0
.end method

.method public static setChameleonStrength(I)Z
    .locals 1

    .line 524
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOffTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeSetChameleonStrength(II)Z

    move-result p0

    return p0
.end method

.method public static setChameleonStrength(II)Z
    .locals 0

    .line 520
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetChameleonStrength(II)Z

    move-result p0

    return p0
.end method

.method public static setColorEffectIndex(I)V
    .locals 0

    .line 408
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetColorEffectIndex(I)V

    return-void
.end method

.method public static setColorRegion(IIIII)Z
    .locals 0

    .line 306
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/pq/PictureQuality;->nativeSetColorRegion(IIIII)Z

    move-result p0

    return p0
.end method

.method public static setContrastIndex(I)V
    .locals 1

    .line 325
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOffTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeSetContrastIndex(II)V

    return-void
.end method

.method public static setContrastIndex(II)V
    .locals 0

    .line 321
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetContrastIndex(II)V

    return-void
.end method

.method public static setDynamicContrastIndex(I)V
    .locals 0

    .line 393
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetDynamicContrastIndex(I)V

    return-void
.end method

.method public static setExternalPanelNits(I)Z
    .locals 0

    .line 642
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetExternalPanelNits(I)Z

    move-result p0

    return p0
.end method

.method public static setGammaIndex(I)V
    .locals 2

    .line 436
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.gamma.index"

    invoke-static {v1, v0}, Lcom/mediatek/pq/PictureQuality$SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOnTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeSetGammaIndex(II)V

    return-void
.end method

.method public static setGammaIndex(II)V
    .locals 2

    .line 431
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.gamma.index"

    invoke-static {v1, v0}, Lcom/mediatek/pq/PictureQuality$SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetGammaIndex(II)V

    return-void
.end method

.method public static setGlobalPQStrength(I)Z
    .locals 0

    .line 596
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetGlobalPQStrength(I)Z

    move-result p0

    return p0
.end method

.method public static setGlobalPQSwitch(I)Z
    .locals 0

    .line 578
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetGlobalPQSwitch(I)Z

    move-result p0

    return p0
.end method

.method public static setMode(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 206
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOnTransitionStep()I

    move-result p0

    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetCameraPreviewMode(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 210
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOnTransitionStep()I

    move-result p0

    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetVideoPlaybackMode(I)V

    goto :goto_0

    .line 214
    :cond_1
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOnTransitionStep()I

    move-result p0

    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetGalleryNormalMode(I)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setMode(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 188
    invoke-static {p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetCameraPreviewMode(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 192
    invoke-static {p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetVideoPlaybackMode(I)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-static {p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetGalleryNormalMode(I)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setPicBrightnessIndex(I)V
    .locals 1

    .line 363
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOffTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeSetPicBrightnessIndex(II)V

    return-void
.end method

.method public static setPicBrightnessIndex(II)V
    .locals 0

    .line 359
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetPicBrightnessIndex(II)V

    return-void
.end method

.method public static setPictureMode(I)Z
    .locals 1

    .line 299
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOffTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeSetPictureMode(II)Z

    move-result p0

    return p0
.end method

.method public static setPictureMode(II)Z
    .locals 0

    .line 294
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetPictureMode(II)Z

    move-result p0

    return p0
.end method

.method public static setRGBGain(DDDI)Z
    .locals 2

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    mul-double p0, p0, v0

    double-to-int p0, p0

    mul-double p2, p2, v0

    double-to-int p1, p2

    mul-double p4, p4, v0

    double-to-int p2, p4

    .line 661
    invoke-static {p0, p1, p2, p6}, Lcom/mediatek/pq/PictureQuality;->nativeSetRGBGain(IIII)Z

    move-result p0

    return p0
.end method

.method public static setSaturationIndex(I)V
    .locals 1

    .line 344
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getDefaultOffTransitionStep()I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/pq/PictureQuality;->nativeSetSaturationIndex(II)V

    return-void
.end method

.method public static setSaturationIndex(II)V
    .locals 0

    .line 340
    invoke-static {p0, p1}, Lcom/mediatek/pq/PictureQuality;->nativeSetSaturationIndex(II)V

    return-void
.end method

.method public static setSharpnessIndex(I)V
    .locals 0

    .line 378
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetSharpnessIndex(I)V

    return-void
.end method
