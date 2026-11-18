.class public final Lcom/alibaba/ailabs/genie/utils/FastClickUtils;
.super Ljava/lang/Object;
.source "FastClickUtils.java"


# static fields
.field private static final SPACE_TIME_DEFAULT:I = 0x320

.field private static sCustomLastClickTime:J = 0x0L

.field private static sLastClickTime:J = 0x0L

.field private static sLastTime:J = 0x0L

.field private static sSpaceTime:I = 0x320


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isCustomFastClick(J)Z
    .locals 5

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 41
    sget-wide v2, Lcom/alibaba/ailabs/genie/utils/FastClickUtils;->sCustomLastClickTime:J

    sub-long v2, v0, v2

    cmp-long v4, v2, p0

    if-gtz v4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 42
    :goto_0
    sput-wide v0, Lcom/alibaba/ailabs/genie/utils/FastClickUtils;->sCustomLastClickTime:J

    return p0
.end method

.method public static isFastClick()Z
    .locals 7

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 25
    sget-wide v2, Lcom/alibaba/ailabs/genie/utils/FastClickUtils;->sLastClickTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/alibaba/ailabs/genie/utils/FastClickUtils;->sSpaceTime:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 26
    :goto_0
    sput-wide v0, Lcom/alibaba/ailabs/genie/utils/FastClickUtils;->sLastClickTime:J

    return v2
.end method

.method public static isFastClick(J)Z
    .locals 5

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 33
    sget-wide v2, Lcom/alibaba/ailabs/genie/utils/FastClickUtils;->sLastTime:J

    sub-long v2, v0, v2

    cmp-long v4, v2, p0

    if-gtz v4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    sput-wide v0, Lcom/alibaba/ailabs/genie/utils/FastClickUtils;->sLastTime:J

    return p0
.end method
