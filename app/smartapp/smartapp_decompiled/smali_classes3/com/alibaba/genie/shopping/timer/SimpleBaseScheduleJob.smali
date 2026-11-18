.class public abstract Lcom/alibaba/genie/shopping/timer/SimpleBaseScheduleJob;
.super Ljava/lang/Object;
.source "SimpleBaseScheduleJob.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/timer/ScheduleJob;


# static fields
.field public static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/alibaba/genie/shopping/timer/SimpleTimer;->getInstance()Lcom/alibaba/genie/shopping/timer/SimpleTimer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/timer/SimpleBaseScheduleJob;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/timer/SimpleTimer;->removeJob(I)V

    return-void
.end method

.method public final getId()I
    .locals 1

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 2

    .line 33
    invoke-static {}, Lcom/alibaba/genie/shopping/timer/SimpleTimer;->getInstance()Lcom/alibaba/genie/shopping/timer/SimpleTimer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/timer/SimpleBaseScheduleJob;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/timer/SimpleTimer;->removeJob(I)V

    .line 34
    invoke-static {}, Lcom/alibaba/genie/shopping/timer/SimpleTimer;->getInstance()Lcom/alibaba/genie/shopping/timer/SimpleTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/genie/shopping/timer/SimpleTimer;->addJob(Lcom/alibaba/genie/shopping/timer/ScheduleJob;)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/timer/SimpleBaseScheduleJob;->work()V

    .line 26
    invoke-static {}, Lcom/alibaba/genie/shopping/timer/SimpleTimer;->getInstance()Lcom/alibaba/genie/shopping/timer/SimpleTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/genie/shopping/timer/SimpleTimer;->addJob(Lcom/alibaba/genie/shopping/timer/ScheduleJob;)V

    return-void
.end method
