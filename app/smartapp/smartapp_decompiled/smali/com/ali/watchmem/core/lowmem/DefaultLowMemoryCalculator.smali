.class public Lcom/ali/watchmem/core/lowmem/DefaultLowMemoryCalculator;
.super Ljava/lang/Object;
.source "DefaultLowMemoryCalculator.java"

# interfaces
.implements Lcom/ali/watchmem/core/lowmem/ILowMemoryCalculator;


# static fields
.field static final BACKUP_APP_ADJ:I = 0x3

.field static final CACHED_APP_MAX_ADJ:I = 0xf

.field static final CACHED_APP_MIN_ADJ:I = 0x9

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field static final HOME_APP_ADJ:I = 0x6

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static final UNKNOWN_ADJ:I = 0x10

.field static final VISIBLE_APP_ADJ:I = 0x1


# instance fields
.field private final mOomAdj:[I

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 74
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/ali/watchmem/core/lowmem/DefaultLowMemoryCalculator;->mOomAdj:[I

    .line 81
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/ali/watchmem/core/lowmem/DefaultLowMemoryCalculator;->mOomMinFreeLow:[I

    .line 87
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/ali/watchmem/core/lowmem/DefaultLowMemoryCalculator;->mOomMinFreeHigh:[I

    .line 92
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ali/watchmem/core/lowmem/DefaultLowMemoryCalculator;->mOomMinFree:[I

    .line 95
    invoke-direct {p0}, Lcom/ali/watchmem/core/lowmem/DefaultLowMemoryCalculator;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_2
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method private init()V
    .locals 7

    .line 99
    invoke-static {}, Lcom/ali/watchmem/util/WatchmemMemoryUtils;->getTotalMemoryMB()J

    move-result-wide v0

    const-wide/16 v2, 0x15e

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43af0000    # 350.0f

    div-float/2addr v0, v1

    .line 103
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/watchmem/global/Global;->application()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    const v2, 0x5dc00

    int-to-float v2, v2

    const/4 v3, 0x0

    sub-float v4, v3, v2

    const v5, 0x9c400

    int-to-float v5, v5

    div-float/2addr v4, v5

    if-eqz v1, :cond_0

    .line 109
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 112
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    mul-int v4, v4, v1

    int-to-float v1, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v3

    if-gez v2, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 127
    :cond_3
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_5

    .line 128
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    move v1, v3

    goto :goto_4

    :cond_5
    :try_start_0
    const-string v1, "dalvik.system.VMRuntime"

    .line 131
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "is64Bit"

    .line 132
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 134
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 137
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    :goto_4
    const/4 v2, 0x6

    if-ge v4, v2, :cond_8

    .line 142
    iget-object v2, p0, Lcom/ali/watchmem/core/lowmem/DefaultLowMemoryCalculator;->mOomMinFreeLow:[I

    aget v2, v2, v4

    .line 143
    iget-object v3, p0, Lcom/ali/watchmem/core/lowmem/DefaultLowMemoryCalculator;->mOomMinFreeHigh:[I

    aget v3, v3, v4

    if-eqz v1, :cond_7

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    mul-int/lit8 v3, v3, 0x3

    .line 146
    div-int/lit8 v3, v3, 0x2

    goto :goto_5

    :cond_6
    const/4 v6, 0x5

    if-ne v4, v6, :cond_7

    mul-int/lit8 v3, v3, 0x7

    .line 147
    div-int/2addr v3, v5

    .line 149
    :cond_7
    :goto_5
    iget-object v5, p0, Lcom/ali/watchmem/core/lowmem/DefaultLowMemoryCalculator;->mOomMinFree:[I

    int-to-float v6, v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    mul-float v2, v2, v0

    add-float/2addr v6, v2

    float-to-int v2, v6

    aput v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method


# virtual methods
.method public getSystemLowMemoryValue()J
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/ali/watchmem/core/lowmem/DefaultLowMemoryCalculator;->mOomMinFree:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    return-wide v0
.end method
