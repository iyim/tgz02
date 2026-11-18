.class public final Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;
.super Ljava/lang/Object;
.source "GenieDensityTimer.java"


# static fields
.field private static final INVALID_TIME:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "GenieDensityTimer"

.field private static sTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static report(Ljava/lang/String;)V
    .locals 5

    .line 23
    sget-wide v0, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->sTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->sTime:J

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "report() called."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " time = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->sTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GenieDensityTimer"

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/density/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static reset()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 31
    sput-wide v0, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->sTime:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static start()V
    .locals 2

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->sTime:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
