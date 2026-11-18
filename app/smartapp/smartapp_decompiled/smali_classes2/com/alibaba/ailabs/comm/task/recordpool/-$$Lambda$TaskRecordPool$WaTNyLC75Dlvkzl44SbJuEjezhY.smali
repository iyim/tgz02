.class public final synthetic Lcom/alibaba/ailabs/comm/task/recordpool/-$$Lambda$TaskRecordPool$WaTNyLC75Dlvkzl44SbJuEjezhY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/recordpool/-$$Lambda$TaskRecordPool$WaTNyLC75Dlvkzl44SbJuEjezhY;->f$0:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/-$$Lambda$TaskRecordPool$WaTNyLC75Dlvkzl44SbJuEjezhY;->f$0:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecordPool;->lambda$update$1$TaskRecordPool()V

    return-void
.end method
