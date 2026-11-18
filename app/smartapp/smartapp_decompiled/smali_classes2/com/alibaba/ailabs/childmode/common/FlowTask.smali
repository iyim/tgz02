.class public abstract Lcom/alibaba/ailabs/childmode/common/FlowTask;
.super Ljava/lang/Object;
.source "FlowTask.java"


# instance fields
.field private mDuration:J

.field private mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTask;->mDuration:J

    .line 13
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/common/FlowTask;->mTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTask;->mDuration:J

    .line 17
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/common/FlowTask;->mTask:Ljava/lang/Runnable;

    .line 18
    iput-wide p2, p0, Lcom/alibaba/ailabs/childmode/common/FlowTask;->mDuration:J

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTask;->mDuration:J

    return-wide v0
.end method

.method public start()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTask;->mTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
