.class Lcom/alibaba/ailabs/genie/time/service/TimerService$1;
.super Ljava/lang/Object;
.source "TimerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/time/service/TimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/time/service/TimerService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/time/service/TimerService;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService$1;->this$0:Lcom/alibaba/ailabs/genie/time/service/TimerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 147
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getInstance()Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getOrangeConfig()V

    .line 148
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getInstance()Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getReportInterval()I

    move-result v0

    if-lez v0, :cond_0

    .line 150
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->access$002(I)I

    .line 153
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getInstance()Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getReportVideoTimeInterval()I

    move-result v1

    if-lez v1, :cond_1

    .line 155
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService$1;->this$0:Lcom/alibaba/ailabs/genie/time/service/TimerService;

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->access$102(Lcom/alibaba/ailabs/genie/time/service/TimerService;I)I

    .line 157
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportInterval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",videoReportInterval:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimerService2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
