.class public Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIFastClickCheck;
.super Ljava/lang/Object;
.source "WidgetUIFastClickCheck.java"


# static fields
.field private static final SPACE_TIME_DEFAULT:I = 0x320

.field private static sBannerLastClickTime:J = 0x0L

.field private static sIconClickLastTime:J = 0x0L

.field private static sLastClickTime:J = 0x0L

.field private static sLastTime:J = 0x0L

.field private static sRequestDataLastTime:J = 0x0L

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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isBannerFastClick()Z
    .locals 7

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 53
    sget-wide v2, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIFastClickCheck;->sBannerLastClickTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIFastClickCheck;->sSpaceTime:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 54
    :goto_0
    sput-wide v0, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIFastClickCheck;->sBannerLastClickTime:J

    return v2
.end method

.method public static isFastClick()Z
    .locals 7

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 21
    sget-wide v2, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIFastClickCheck;->sLastClickTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIFastClickCheck;->sSpaceTime:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    sput-wide v0, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIFastClickCheck;->sLastClickTime:J

    return v2
.end method

.method public static isFastClick(J)Z
    .locals 5

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 29
    sget-wide v2, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIFastClickCheck;->sLastTime:J

    sub-long v2, v0, v2

    cmp-long v4, v2, p0

    if-gtz v4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    sput-wide v0, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIFastClickCheck;->sLastTime:J

    return p0
.end method

.method public static isIconFastClick(J)Z
    .locals 5

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    sget-wide v2, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIFastClickCheck;->sIconClickLastTime:J

    sub-long v2, v0, v2

    cmp-long v4, v2, p0

    if-gtz v4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 38
    :goto_0
    sput-wide v0, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIFastClickCheck;->sIconClickLastTime:J

    return p0
.end method

.method public static isRequstDataFastClick()Z
    .locals 7

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    sget-wide v2, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIFastClickCheck;->sRequestDataLastTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIFastClickCheck;->sSpaceTime:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 46
    :goto_0
    sput-wide v0, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIFastClickCheck;->sRequestDataLastTime:J

    return v2
.end method
