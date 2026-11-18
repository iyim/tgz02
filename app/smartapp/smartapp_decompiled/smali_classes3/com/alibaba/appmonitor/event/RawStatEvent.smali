.class public Lcom/alibaba/appmonitor/event/RawStatEvent;
.super Lcom/alibaba/appmonitor/event/Event;
.source "RawStatEvent.java"

# interfaces
.implements Lcom/alibaba/appmonitor/event/IRawEvent;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/alibaba/appmonitor/event/Event;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public clean()V
    .locals 0

    .line 45
    invoke-super {p0}, Lcom/alibaba/appmonitor/event/Event;->clean()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public dumpToUTEvent()Lcom/alibaba/appmonitor/event/UTEvent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDimensionValues()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeasureValues()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setDimensionValues(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setMeasureValues(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
