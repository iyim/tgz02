.class public Lcom/alibaba/ailabs/genie/musicplayer/utils/ClickUtils;
.super Ljava/lang/Object;
.source "ClickUtils.java"


# static fields
.field private static final MIN_CLICK_DELAY_TIME:I = 0x1f4

.field private static final MIN_SEEK_DELAY_TIME:I = 0x320

.field private static final TAG:Ljava/lang/String; = "ClickUtils"

.field private static lastClickTime:J

.field private static lastSeekTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isFastClick()Z
    .locals 8

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 21
    sget-wide v2, Lcom/alibaba/ailabs/genie/musicplayer/utils/ClickUtils;->lastClickTime:J

    sub-long v2, v0, v2

    const-string v4, "ClickUtils"

    const-wide/16 v5, 0x1f4

    cmp-long v7, v2, v5

    if-ltz v7, :cond_0

    const-string v2, "isFastClick-click"

    .line 22
    invoke-static {v4, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sput-wide v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/ClickUtils;->lastClickTime:J

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "isFastClick"

    .line 24
    invoke-static {v4, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static isFastSeek()Z
    .locals 7

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 34
    sget-wide v2, Lcom/alibaba/ailabs/genie/musicplayer/utils/ClickUtils;->lastSeekTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x320

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "ClickUtils"

    const-string v3, "isFastSeek"

    .line 37
    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 40
    :goto_0
    sput-wide v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/ClickUtils;->lastSeekTime:J

    return v2
.end method
