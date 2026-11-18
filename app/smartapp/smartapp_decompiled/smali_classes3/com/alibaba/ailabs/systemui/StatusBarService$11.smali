.class Lcom/alibaba/ailabs/systemui/StatusBarService$11;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/systemui/StatusBarService;->realUpdateBattery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/systemui/StatusBarService;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$11;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 452
    invoke-static {}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realUpdateBattery batteryFloat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$11;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-static {v2}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$1300(Lcom/alibaba/ailabs/systemui/StatusBarService;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/systemui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realUpdateBattery batteryPctInt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$11;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-static {v2}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$1300(Lcom/alibaba/ailabs/systemui/StatusBarService;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/systemui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getInstance()Lcom/alibaba/ailabs/systemui/StatusNavManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$11;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-static {v1}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$1400(Lcom/alibaba/ailabs/systemui/StatusBarService;)Z

    move-result v1

    iget-object v2, p0, Lcom/alibaba/ailabs/systemui/StatusBarService$11;->this$0:Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-static {v2}, Lcom/alibaba/ailabs/systemui/StatusBarService;->access$1300(Lcom/alibaba/ailabs/systemui/StatusBarService;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->updateBattery(ZI)V

    return-void
.end method
