.class public Lcom/ut/mini/extend/TLogExtend;
.super Ljava/lang/Object;
.source "TLogExtend.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerTLog()V
    .locals 1

    .line 14
    sget-boolean v0, Lcom/ut/mini/extend/UTExtendSwitch;->bTlogExtend:Z

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/ut/mini/internal/LogAdapter;

    invoke-direct {v0}, Lcom/ut/mini/internal/LogAdapter;-><init>()V

    invoke-static {v0}, Lcom/alibaba/analytics/utils/Logger;->setLogger(Lcom/alibaba/analytics/utils/ILogger;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
