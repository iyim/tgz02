.class public Lcom/alibaba/appmonitor/sample/CounterConfig;
.super Lcom/alibaba/appmonitor/sample/AMConifg;
.source "CounterConfig.java"


# annotations
.annotation runtime Lcom/alibaba/analytics/core/db/annotation/TableName;
    value = "ap_counter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/alibaba/appmonitor/sample/AMConifg;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
