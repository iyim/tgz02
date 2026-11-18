.class public Lcom/uc/base/net/metrics/HttpConnectionMetricsConfig;
.super Ljava/lang/Object;
.source "HttpConnectionMetricsConfig.java"


# static fields
.field private static METRICS_LEVEL:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static disableMetricsLevel(I)V
    .locals 1

    .line 12
    sget v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConfig;->METRICS_LEVEL:I

    xor-int/lit8 p0, p0, -0x1

    and-int/2addr p0, v0

    sput p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConfig;->METRICS_LEVEL:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static enableMetricsLevel(I)V
    .locals 1

    .line 8
    sget v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConfig;->METRICS_LEVEL:I

    or-int/2addr p0, v0

    sput p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConfig;->METRICS_LEVEL:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getMetricsLevel()I
    .locals 1

    .line 20
    sget v0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConfig;->METRICS_LEVEL:I

    return v0
.end method

.method public static setMetricsLevel(I)V
    .locals 0

    .line 16
    sput p0, Lcom/uc/base/net/metrics/HttpConnectionMetricsConfig;->METRICS_LEVEL:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
