.class Lcom/taobao/rxm/produce/BaseChainProducer$1;
.super Lcom/taobao/rxm/schedule/ScheduledAction;
.source "BaseChainProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/rxm/produce/BaseChainProducer;->scheduleConductingResult(Lcom/taobao/rxm/schedule/Scheduler;Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/rxm/produce/BaseChainProducer;


# direct methods
.method constructor <init>(Lcom/taobao/rxm/produce/BaseChainProducer;ILcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Z)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/taobao/rxm/produce/BaseChainProducer$1;->this$0:Lcom/taobao/rxm/produce/BaseChainProducer;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/taobao/rxm/schedule/ScheduledAction;-><init>(ILcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Z)V

    return-void
.end method


# virtual methods
.method public run(Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/taobao/rxm/produce/BaseChainProducer$1;->this$0:Lcom/taobao/rxm/produce/BaseChainProducer;

    invoke-static {v0, p1, p2, p0}, Lcom/taobao/rxm/produce/BaseChainProducer;->access$000(Lcom/taobao/rxm/produce/BaseChainProducer;Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;Lcom/taobao/rxm/schedule/ScheduledAction;)V

    return-void
.end method
