.class Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$3;
.super Ljava/lang/Object;
.source "TimeCounter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->goStandby()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$3;->this$0:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$3;->this$0:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->access$200(Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;)Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$TimeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$3;->this$0:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->access$200(Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;)Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$TimeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$TimeListener;->onGoStandBy()V

    :cond_0
    return-void
.end method
