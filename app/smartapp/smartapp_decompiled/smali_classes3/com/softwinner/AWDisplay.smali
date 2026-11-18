.class public Lcom/softwinner/AWDisplay;
.super Ljava/lang/Object;
.source "AWDisplay.java"


# static fields
.field public static final DISP0:I = 0x0

.field public static final DISP1:I = 0x1

.field public static final DISPLAY_CMD_GET_3DMODE:I = 0x2

.field public static final DISPLAY_CMD_GET_BACKLIGHT:I = 0x4

.field public static final DISPLAY_CMD_GET_COLOR_TEMPERATURE:I = 0xc

.field public static final DISPLAY_CMD_GET_ENHANCE:I = 0x6

.field public static final DISPLAY_CMD_GET_READING_STATE:I = 0x9

.field public static final DISPLAY_CMD_GET_READING_STRENGTH:I = 0xa

.field public static final DISPLAY_CMD_SET_3DMODE:I = 0x1

.field public static final DISPLAY_CMD_SET_BACKLIGHT:I = 0x3

.field public static final DISPLAY_CMD_SET_COLOR_TEMPERATURE:I = 0xb

.field public static final DISPLAY_CMD_SET_ENHANCE:I = 0x5

.field public static final DISPLAY_CMD_SET_READING_MODE:I = 0x8

.field public static final DISPLAY_FUNC_DEMO_ON_MASK:I = 0x3

.field public static final DISPLAY_FUNC_OFF_MASK:I = 0x0

.field public static final DISPLAY_FUNC_ON_MASK:I = 0x1

.field public static final TAG:Ljava/lang/String; = "awdisplay"

.field private static mBinder:Lcom/softwinner/IDisplayService; = null

.field public static sColorEnhance:I = 0x0

.field public static sColorTemperature:I = 0x0

.field public static sReadingModeState:I = 0x0

.field public static sReadingModeStrength:I = 0x0

.field public static sReady:Z = false

.field public static sSmartBacklight:I

.field public static sVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1e

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    const-string v0, "awdisplay"

    const-string v2, "init service"

    .line 63
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lcom/softwinner/AWDisplay;->init()V

    .line 65
    sget-boolean v0, Lcom/softwinner/AWDisplay;->sReady:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v2, 0x3e8

    .line 67
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    :goto_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static dispCtrl(IIII)I
    .locals 2

    .line 107
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    const-string v1, "awdisplay"

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/softwinner/IDisplayService;->displayCtrl(IIII)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Cannot connect to aw_display"

    .line 111
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p0, "Cannot dispCtrl"

    .line 114
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public static get3DMode()I
    .locals 3

    .line 367
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 369
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0}, Lcom/softwinner/IDisplayService;->get3DMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "awdisplay"

    const-string v2, "Cannot connect to aw_display"

    .line 371
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 375
    invoke-static {v1, v0, v2, v2}, Lcom/softwinner/AWDisplay;->dispCtrl(IIII)I

    move-result v0

    return v0
.end method

.method public static getColorEnhance()Z
    .locals 4

    .line 205
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 207
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0}, Lcom/softwinner/IDisplayService;->getColorEnhance()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "awdisplay"

    const-string v3, "Cannot connect to aw_display"

    .line 209
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 213
    :cond_0
    sget v0, Lcom/softwinner/AWDisplay;->sColorEnhance:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static getColorEnhanceDemo()Z
    .locals 4

    .line 231
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 233
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0}, Lcom/softwinner/IDisplayService;->getColorEnhanceDemo()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "awdisplay"

    const-string v3, "Cannot connect to aw_display"

    .line 235
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 239
    :cond_0
    sget v0, Lcom/softwinner/AWDisplay;->sColorEnhance:I

    const/4 v3, 0x3

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static getColorTemperature()I
    .locals 3

    .line 280
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 282
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0}, Lcom/softwinner/IDisplayService;->getColorTemperature()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "awdisplay"

    const-string v2, "Cannot connect to aw_display"

    .line 284
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 288
    invoke-static {v1, v0, v1, v1}, Lcom/softwinner/AWDisplay;->dispCtrl(IIII)I

    move-result v0

    return v0
.end method

.method public static getHSLBright()I
    .locals 3

    .line 304
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 306
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0}, Lcom/softwinner/IDisplayService;->getHSLBright()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "awdisplay"

    const-string v2, "Cannot connect to aw_display"

    .line 308
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getHSLContrast()I
    .locals 3

    .line 325
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 327
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0}, Lcom/softwinner/IDisplayService;->getHSLContrast()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "awdisplay"

    const-string v2, "Cannot connect to aw_display"

    .line 329
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getHSLSaturation()I
    .locals 3

    .line 346
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 348
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0}, Lcom/softwinner/IDisplayService;->getHSLSaturation()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "awdisplay"

    const-string v2, "Cannot connect to aw_display"

    .line 350
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getHdmiFullscreen()Z
    .locals 4

    .line 441
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x0

    const-string v2, "awdisplay"

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    const-string v0, "getHdmiFullscreen not support below version 1"

    .line 442
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 446
    :cond_0
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0}, Lcom/softwinner/IDisplayService;->getHdmiFullscreen()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v3, "Cannot connect to aw_display"

    .line 448
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static getHdmiMode()I
    .locals 4

    .line 124
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, -0x1

    const-string v2, "awdisplay"

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    const-string v0, "getHdmiMode not support below version 1"

    .line 125
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 129
    :cond_0
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0}, Lcom/softwinner/IDisplayService;->getHdmiMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v3, "Cannot connect to aw_display"

    .line 131
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static getMarginHeight()I
    .locals 4

    .line 416
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, -0x1

    const-string v2, "awdisplay"

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    const-string v0, "getMarginHeight not support below version 1"

    .line 417
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 421
    :cond_0
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0}, Lcom/softwinner/IDisplayService;->getMarginHeight()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v3, "Cannot connect to aw_display"

    .line 423
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static getMarginWidth()I
    .locals 4

    .line 391
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, -0x1

    const-string v2, "awdisplay"

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    const-string v0, "getMarginWidth not support below version 1"

    .line 392
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 396
    :cond_0
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0}, Lcom/softwinner/IDisplayService;->getMarginWidth()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v3, "Cannot connect to aw_display"

    .line 398
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static getReadingMode()Z
    .locals 4

    .line 257
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 259
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0}, Lcom/softwinner/IDisplayService;->getReadingMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "awdisplay"

    const-string v3, "Cannot connect to aw_display"

    .line 261
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v1
.end method

.method public static getSmartBacklight()Z
    .locals 4

    .line 153
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 155
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0}, Lcom/softwinner/IDisplayService;->getSmartBacklight()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "awdisplay"

    const-string v3, "Cannot connect to aw_display"

    .line 157
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 161
    :cond_0
    sget v0, Lcom/softwinner/AWDisplay;->sSmartBacklight:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static getSmartBacklightDemo()Z
    .locals 4

    .line 179
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 181
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0}, Lcom/softwinner/IDisplayService;->getSmartBacklightDemo()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "awdisplay"

    const-string v3, "Cannot connect to aw_display"

    .line 183
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 187
    :cond_0
    sget v0, Lcom/softwinner/AWDisplay;->sSmartBacklight:I

    const/4 v3, 0x3

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static getVersion()I
    .locals 1

    .line 120
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    return v0
.end method

.method private static init()V
    .locals 3

    const-string v0, "aw_display"

    .line 80
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/softwinner/IDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/softwinner/IDisplayService;

    move-result-object v0

    sput-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    .line 81
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    const-string v1, "Cannot connect to aw_display"

    const-string v2, "awdisplay"

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    invoke-interface {v0}, Lcom/softwinner/IDisplayService;->getInterfaceVersion()I

    move-result v0

    sput v0, Lcom/softwinner/AWDisplay;->sVersion:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x1

    .line 87
    sput-boolean v0, Lcom/softwinner/AWDisplay;->sReady:Z

    .line 88
    sget v1, Lcom/softwinner/AWDisplay;->sVersion:I

    if-ge v1, v0, :cond_1

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 89
    invoke-static {v1, v0, v1, v1}, Lcom/softwinner/AWDisplay;->dispCtrl(IIII)I

    move-result v0

    sput v0, Lcom/softwinner/AWDisplay;->sSmartBacklight:I

    const/4 v0, 0x6

    .line 90
    invoke-static {v1, v0, v1, v1}, Lcom/softwinner/AWDisplay;->dispCtrl(IIII)I

    move-result v0

    sput v0, Lcom/softwinner/AWDisplay;->sColorEnhance:I

    const/16 v0, 0x9

    .line 91
    invoke-static {v1, v0, v1, v1}, Lcom/softwinner/AWDisplay;->dispCtrl(IIII)I

    move-result v0

    sput v0, Lcom/softwinner/AWDisplay;->sReadingModeState:I

    const/16 v0, 0xa

    .line 92
    invoke-static {v1, v0, v1, v1}, Lcom/softwinner/AWDisplay;->dispCtrl(IIII)I

    move-result v0

    sput v0, Lcom/softwinner/AWDisplay;->sReadingModeStrength:I

    const/16 v0, 0xc

    .line 93
    invoke-static {v1, v0, v1, v1}, Lcom/softwinner/AWDisplay;->dispCtrl(IIII)I

    move-result v0

    sput v0, Lcom/softwinner/AWDisplay;->sColorTemperature:I

    goto :goto_1

    .line 96
    :cond_0
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AWDisplay remoteVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/softwinner/AWDisplay;->sVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " clientVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static ready()Z
    .locals 1

    .line 102
    sget-boolean v0, Lcom/softwinner/AWDisplay;->sReady:Z

    return v0
.end method

.method public static set3DMode(I)Z
    .locals 3

    .line 379
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 381
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0, p0}, Lcom/softwinner/IDisplayService;->set3DMode(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "awdisplay"

    const-string v2, "Cannot connect to aw_display"

    .line 383
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 387
    :cond_0
    invoke-static {v2, v2, p0, v1}, Lcom/softwinner/AWDisplay;->dispCtrl(IIII)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static setColorEnhance(Z)V
    .locals 2

    .line 217
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 219
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0, p0}, Lcom/softwinner/IDisplayService;->setColorEnhance(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "awdisplay"

    const-string v1, "Cannot connect to aw_display"

    .line 221
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 225
    sget p0, Lcom/softwinner/AWDisplay;->sColorEnhance:I

    or-int/2addr p0, v1

    sput p0, Lcom/softwinner/AWDisplay;->sColorEnhance:I

    goto :goto_1

    .line 226
    :cond_1
    sget p0, Lcom/softwinner/AWDisplay;->sColorEnhance:I

    and-int/2addr p0, v0

    sput p0, Lcom/softwinner/AWDisplay;->sColorEnhance:I

    :goto_1
    const/4 p0, 0x5

    .line 227
    sget v1, Lcom/softwinner/AWDisplay;->sColorEnhance:I

    invoke-static {v0, p0, v1, v0}, Lcom/softwinner/AWDisplay;->dispCtrl(IIII)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setColorEnhanceDemo(Z)V
    .locals 2

    .line 243
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 245
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0, p0}, Lcom/softwinner/IDisplayService;->setColorEnhanceDemo(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "awdisplay"

    const-string v1, "Cannot connect to aw_display"

    .line 247
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    if-eqz p0, :cond_1

    .line 251
    sget p0, Lcom/softwinner/AWDisplay;->sColorEnhance:I

    or-int/lit8 p0, p0, 0x3

    sput p0, Lcom/softwinner/AWDisplay;->sColorEnhance:I

    goto :goto_1

    .line 252
    :cond_1
    sget p0, Lcom/softwinner/AWDisplay;->sColorEnhance:I

    and-int/2addr p0, v1

    sput p0, Lcom/softwinner/AWDisplay;->sColorEnhance:I

    :goto_1
    const/4 p0, 0x5

    .line 253
    sget v0, Lcom/softwinner/AWDisplay;->sColorEnhance:I

    const/4 v1, 0x0

    invoke-static {v1, p0, v0, v1}, Lcom/softwinner/AWDisplay;->dispCtrl(IIII)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setColorTemperature(I)V
    .locals 2

    .line 292
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 294
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0, p0}, Lcom/softwinner/IDisplayService;->setColorTemperature(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "awdisplay"

    const-string v1, "Cannot connect to aw_display"

    .line 296
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 300
    invoke-static {v1, v0, p0, v1}, Lcom/softwinner/AWDisplay;->dispCtrl(IIII)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setHSLBright(I)V
    .locals 2

    .line 315
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 317
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0, p0}, Lcom/softwinner/IDisplayService;->setHSLBright(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "awdisplay"

    const-string v1, "Cannot connect to aw_display"

    .line 319
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setHSLContrast(I)V
    .locals 2

    .line 336
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 338
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0, p0}, Lcom/softwinner/IDisplayService;->setHSLContrast(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "awdisplay"

    const-string v1, "Cannot connect to aw_display"

    .line 340
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setHSLSaturation(I)V
    .locals 2

    .line 357
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 359
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0, p0}, Lcom/softwinner/IDisplayService;->setHSLSaturation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "awdisplay"

    const-string v1, "Cannot connect to aw_display"

    .line 361
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setHdmiFullscreen(Z)V
    .locals 3

    .line 454
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const-string v1, "awdisplay"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const-string p0, "setHdmiFullscreen not support below version 1"

    .line 455
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 459
    :cond_0
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0, p0}, Lcom/softwinner/IDisplayService;->setHdmiFullscreen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Cannot connect to aw_display"

    .line 461
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setHdmiMode(I)Z
    .locals 5

    const-string v0, "Cannot connect to aw_display"

    .line 137
    sget v1, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v2, 0x0

    const-string v3, "awdisplay"

    const/4 v4, 0x1

    if-ge v1, v4, :cond_0

    const-string p0, "setHdmiMode not support below version 1"

    .line 138
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 142
    :cond_0
    :try_start_0
    sget-object v1, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v1, p0}, Lcom/softwinner/IDisplayService;->setHdmiMode(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 147
    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_1
    move-exception p0

    .line 144
    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public static setMarginHeight(I)V
    .locals 3

    .line 429
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const-string v1, "awdisplay"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const-string p0, "setMarginHeight not support below version 1"

    .line 430
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 434
    :cond_0
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0, p0}, Lcom/softwinner/IDisplayService;->setMarginHeight(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Cannot connect to aw_display"

    .line 436
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setMarginWidth(I)V
    .locals 3

    .line 404
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const-string v1, "awdisplay"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const-string p0, "setMarginWidth not support below version 1"

    .line 405
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 409
    :cond_0
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0, p0}, Lcom/softwinner/IDisplayService;->setMarginWidth(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Cannot connect to aw_display"

    .line 411
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setReadingMode(Z)V
    .locals 2

    .line 269
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 271
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0, p0}, Lcom/softwinner/IDisplayService;->setReadingMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "awdisplay"

    const-string v1, "Cannot connect to aw_display"

    .line 273
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setSmartBacklight(Z)V
    .locals 2

    .line 165
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 167
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0, p0}, Lcom/softwinner/IDisplayService;->setSmartBacklight(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "awdisplay"

    const-string v1, "Cannot connect to aw_display"

    .line 169
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 173
    sget p0, Lcom/softwinner/AWDisplay;->sSmartBacklight:I

    or-int/2addr p0, v1

    sput p0, Lcom/softwinner/AWDisplay;->sSmartBacklight:I

    goto :goto_1

    .line 174
    :cond_1
    sget p0, Lcom/softwinner/AWDisplay;->sSmartBacklight:I

    and-int/2addr p0, v0

    sput p0, Lcom/softwinner/AWDisplay;->sSmartBacklight:I

    :goto_1
    const/4 p0, 0x3

    .line 175
    sget v1, Lcom/softwinner/AWDisplay;->sSmartBacklight:I

    invoke-static {v0, p0, v1, v0}, Lcom/softwinner/AWDisplay;->dispCtrl(IIII)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setSmartBacklightDemo(Z)V
    .locals 2

    .line 191
    sget v0, Lcom/softwinner/AWDisplay;->sVersion:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 193
    :try_start_0
    sget-object v0, Lcom/softwinner/AWDisplay;->mBinder:Lcom/softwinner/IDisplayService;

    invoke-interface {v0, p0}, Lcom/softwinner/IDisplayService;->setSmartBacklightDemo(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "awdisplay"

    const-string v1, "Cannot connect to aw_display"

    .line 195
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/4 v0, 0x3

    if-eqz p0, :cond_1

    .line 199
    sget p0, Lcom/softwinner/AWDisplay;->sSmartBacklight:I

    or-int/2addr p0, v0

    sput p0, Lcom/softwinner/AWDisplay;->sSmartBacklight:I

    goto :goto_1

    .line 200
    :cond_1
    sget p0, Lcom/softwinner/AWDisplay;->sSmartBacklight:I

    and-int/2addr p0, v1

    sput p0, Lcom/softwinner/AWDisplay;->sSmartBacklight:I

    .line 201
    :goto_1
    sget p0, Lcom/softwinner/AWDisplay;->sSmartBacklight:I

    const/4 v1, 0x0

    invoke-static {v1, v0, p0, v1}, Lcom/softwinner/AWDisplay;->dispCtrl(IIII)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
