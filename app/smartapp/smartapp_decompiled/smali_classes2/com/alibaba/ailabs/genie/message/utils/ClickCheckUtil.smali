.class public Lcom/alibaba/ailabs/genie/message/utils/ClickCheckUtil;
.super Ljava/lang/Object;
.source "ClickCheckUtil.java"


# static fields
.field private static sLastTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isFastClick(J)Z
    .locals 5

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 10
    sget-wide v2, Lcom/alibaba/ailabs/genie/message/utils/ClickCheckUtil;->sLastTime:J

    sub-long v2, v0, v2

    cmp-long v4, v2, p0

    if-gtz v4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    sput-wide v0, Lcom/alibaba/ailabs/genie/message/utils/ClickCheckUtil;->sLastTime:J

    return p0
.end method
