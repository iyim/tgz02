.class Lcom/alibaba/ailabs/systemui/StatusBarService$2;
.super Landroid/database/ContentObserver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/systemui/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/systemui/StatusBarService;Landroid/os/Handler;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$2;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 78
    invoke-static {}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEyeYieldOpenContentObserver onChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/systemui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$2;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    iget-object p1, p1, Lcom/alibaba/ailabs/systemui/StatusBarService;->service:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/alibaba/ailabs/systemui/StatusBarService$2$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/systemui/StatusBarService$2$1;-><init>(Lcom/alibaba/ailabs/systemui/StatusBarService$2;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
