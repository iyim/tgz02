.class public Lcom/ali/watchmem/core/lowmem/LowMemoryCalculator4_0;
.super Ljava/lang/Object;
.source "LowMemoryCalculator4_0.java"

# interfaces
.implements Lcom/ali/watchmem/core/lowmem/ILowMemoryCalculator;


# static fields
.field static final BACKUP_APP_ADJ:I = 0x4

.field static final CONTENT_APP_IDLE_OFFSET:J = 0x3a98L

.field static final EMPTY_APP_IDLE_OFFSET:J = 0x1d4c0L

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x3

.field static final HIDDEN_APP_MAX_ADJ:I = 0xf

.field static HIDDEN_APP_MIN_ADJ:I = 0x9

.field static final HOME_APP_ADJ:I = 0x6

.field static final MAX_HIDDEN_APPS:I = 0xf

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final MIN_HIDDEN_APPS:I = 0x2

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static final SYSTEM_ADJ:I = -0x10

.field static final VISIBLE_APP_ADJ:I = 0x1


# instance fields
.field private final mOomAdj:[I

.field private final mOomMinFree:[J

.field private final mOomMinFreeHigh:[J

.field private final mOomMinFreeLow:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 4

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 104
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v2, 0x1

    aput v2, v1, v2

    const/4 v2, 0x2

    aput v2, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x3

    aput v2, v1, v3

    sget v3, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculator4_0;->HIDDEN_APP_MIN_ADJ:I

    aput v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0xf

    aput v3, v1, v2

    iput-object v1, p0, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculator4_0;->mOomAdj:[I

    .line 110
    new-array v1, v0, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculator4_0;->mOomMinFreeLow:[J

    .line 116
    new-array v0, v0, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculator4_0;->mOomMinFreeHigh:[J

    .line 121
    iget-object v0, p0, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculator4_0;->mOomAdj:[I

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculator4_0;->mOomMinFree:[J

    .line 124
    invoke-direct {p0}, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculator4_0;->init()V

    return-void

    nop

    :array_0
    .array-data 8
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    :array_1
    .array-data 8
        0x8000
        0xa000
        0xc000
        0xe000
        0x10000
        0x14000
    .end array-data
.end method

.method private init()V
    .locals 8

    .line 128
    invoke-static {}, Lcom/ali/watchmem/util/WatchmemMemoryUtils;->getTotalMemoryMB()J

    move-result-wide v0

    const-wide/16 v2, 0x15e

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43af0000    # 350.0f

    div-float/2addr v0, v1

    .line 133
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

    .line 140
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 143
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

    :cond_3
    :goto_2
    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x6

    if-ge v1, v2, :cond_4

    .line 158
    iget-object v2, p0, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculator4_0;->mOomMinFreeLow:[J

    aget-wide v3, v2, v1

    .line 159
    iget-object v2, p0, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculator4_0;->mOomMinFreeHigh:[J

    aget-wide v5, v2, v1

    .line 160
    iget-object v2, p0, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculator4_0;->mOomMinFree:[J

    long-to-float v7, v3

    sub-long/2addr v5, v3

    long-to-float v3, v5

    mul-float v3, v3, v0

    add-float/2addr v7, v3

    float-to-long v3, v7

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method


# virtual methods
.method public getSystemLowMemoryValue()J
    .locals 5

    .line 184
    iget-object v0, p0, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculator4_0;->mOomMinFree:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x400

    mul-long v1, v1, v3

    return-wide v1
.end method
