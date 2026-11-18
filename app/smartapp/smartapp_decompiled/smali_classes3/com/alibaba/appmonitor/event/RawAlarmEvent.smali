.class public Lcom/alibaba/appmonitor/event/RawAlarmEvent;
.super Lcom/alibaba/appmonitor/event/Event;
.source "RawAlarmEvent.java"

# interfaces
.implements Lcom/alibaba/appmonitor/event/IRawEvent;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/alibaba/appmonitor/event/Event;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public clean()V
    .locals 0

    .line 34
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

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getFailCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSuccessCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setSuccess()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
