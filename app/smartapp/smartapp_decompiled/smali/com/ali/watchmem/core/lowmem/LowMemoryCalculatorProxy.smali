.class public Lcom/ali/watchmem/core/lowmem/LowMemoryCalculatorProxy;
.super Ljava/lang/Object;
.source "LowMemoryCalculatorProxy.java"

# interfaces
.implements Lcom/ali/watchmem/core/lowmem/ILowMemoryCalculator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/watchmem/core/lowmem/LowMemoryCalculatorProxy$Holder;
    }
.end annotation


# instance fields
.field private mSystemLowMemoryValue:J


# direct methods
.method private constructor <init>()V
    .locals 7

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 13
    iput-wide v0, p0, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculatorProxy;->mSystemLowMemoryValue:J

    .line 18
    invoke-direct {p0}, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculatorProxy;->isRoot()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 19
    new-instance v2, Lcom/ali/watchmem/core/lowmem/RootLowMemoryCalculator;

    invoke-direct {v2}, Lcom/ali/watchmem/core/lowmem/RootLowMemoryCalculator;-><init>()V

    .line 20
    invoke-interface {v2}, Lcom/ali/watchmem/core/lowmem/ILowMemoryCalculator;->getSystemLowMemoryValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-nez v3, :cond_4

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 25
    new-instance v2, Lcom/ali/watchmem/core/lowmem/DefaultLowMemoryCalculator;

    invoke-direct {v2}, Lcom/ali/watchmem/core/lowmem/DefaultLowMemoryCalculator;-><init>()V

    goto :goto_1

    .line 26
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    .line 27
    new-instance v2, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculator4_3;

    invoke-direct {v2}, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculator4_3;-><init>()V

    goto :goto_1

    .line 28
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 29
    new-instance v2, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculator4_0;

    invoke-direct {v2}, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculator4_0;-><init>()V

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 34
    new-instance v2, Lcom/ali/watchmem/core/lowmem/DefaultLowMemoryCalculator;

    invoke-direct {v2}, Lcom/ali/watchmem/core/lowmem/DefaultLowMemoryCalculator;-><init>()V

    .line 37
    :cond_5
    invoke-interface {v2}, Lcom/ali/watchmem/core/lowmem/ILowMemoryCalculator;->getSystemLowMemoryValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculatorProxy;->mSystemLowMemoryValue:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/ali/watchmem/core/lowmem/LowMemoryCalculatorProxy$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculatorProxy;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static instance()Lcom/ali/watchmem/core/lowmem/LowMemoryCalculatorProxy;
    .locals 1

    .line 41
    sget-object v0, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculatorProxy$Holder;->INSTANCE:Lcom/ali/watchmem/core/lowmem/LowMemoryCalculatorProxy;

    return-object v0
.end method

.method private isRoot()Z
    .locals 6

    const-string v0, "/system/bin/su"

    const-string v1, "/system/xbin/su"

    const-string v2, "/system/sbin/su"

    const-string v3, "/sbin/su"

    const-string v4, "/vendor/bin/su"

    .line 51
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    :try_start_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 56
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v1
.end method


# virtual methods
.method public getSystemLowMemoryValue()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/ali/watchmem/core/lowmem/LowMemoryCalculatorProxy;->mSystemLowMemoryValue:J

    return-wide v0
.end method
