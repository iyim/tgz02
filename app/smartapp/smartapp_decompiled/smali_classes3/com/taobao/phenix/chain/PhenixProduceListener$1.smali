.class Lcom/taobao/phenix/chain/PhenixProduceListener$1;
.super Lcom/taobao/rxm/schedule/ScheduledAction;
.source "PhenixProduceListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/phenix/chain/PhenixProduceListener;->callMemMissListenerIfNeed(Ljava/lang/Class;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/phenix/chain/PhenixProduceListener;


# direct methods
.method constructor <init>(Lcom/taobao/phenix/chain/PhenixProduceListener;ILcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/taobao/phenix/chain/PhenixProduceListener$1;->this$0:Lcom/taobao/phenix/chain/PhenixProduceListener;

    invoke-direct {p0, p2, p3, p4}, Lcom/taobao/rxm/schedule/ScheduledAction;-><init>(ILcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/taobao/rxm/consume/Consumer;Lcom/taobao/rxm/schedule/ScheduleResultWrapper;)V
    .locals 0

    .line 132
    new-instance p1, Lcom/taobao/phenix/intf/event/MemCacheMissPhenixEvent;

    iget-object p2, p0, Lcom/taobao/phenix/chain/PhenixProduceListener$1;->this$0:Lcom/taobao/phenix/chain/PhenixProduceListener;

    invoke-static {p2}, Lcom/taobao/phenix/chain/PhenixProduceListener;->access$000(Lcom/taobao/phenix/chain/PhenixProduceListener;)Lcom/taobao/phenix/request/ImageRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/phenix/request/ImageRequest;->getPhenixTicket()Lcom/taobao/phenix/intf/PhenixTicket;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/taobao/phenix/intf/event/MemCacheMissPhenixEvent;-><init>(Lcom/taobao/phenix/intf/PhenixTicket;)V

    .line 133
    iget-object p2, p0, Lcom/taobao/phenix/chain/PhenixProduceListener$1;->this$0:Lcom/taobao/phenix/chain/PhenixProduceListener;

    invoke-static {p2}, Lcom/taobao/phenix/chain/PhenixProduceListener;->access$000(Lcom/taobao/phenix/chain/PhenixProduceListener;)Lcom/taobao/phenix/request/ImageRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/phenix/request/ImageRequest;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/taobao/phenix/intf/event/MemCacheMissPhenixEvent;->setUrl(Ljava/lang/String;)V

    .line 134
    iget-object p2, p0, Lcom/taobao/phenix/chain/PhenixProduceListener$1;->this$0:Lcom/taobao/phenix/chain/PhenixProduceListener;

    invoke-static {p2}, Lcom/taobao/phenix/chain/PhenixProduceListener;->access$100(Lcom/taobao/phenix/chain/PhenixProduceListener;)Lcom/taobao/phenix/intf/event/IPhenixListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/taobao/phenix/intf/event/IPhenixListener;->onHappen(Lcom/taobao/phenix/intf/event/PhenixEvent;)Z

    return-void
.end method
