.class Lcom/alibaba/ailabs/genie/task/standby/StandByTask$1;
.super Ljava/lang/Object;
.source "StandByTask.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$DlgBtnNClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->showStandbyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/standby/StandByTask;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/standby/StandByTask;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask$1;->this$0:Lcom/alibaba/ailabs/genie/task/standby/StandByTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask$1;->this$0:Lcom/alibaba/ailabs/genie/task/standby/StandByTask;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->access$100(Lcom/alibaba/ailabs/genie/task/standby/StandByTask;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->access$002(Lcom/alibaba/ailabs/genie/task/standby/StandByTask;Z)Z

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask$1;->this$0:Lcom/alibaba/ailabs/genie/task/standby/StandByTask;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->access$200(Lcom/alibaba/ailabs/genie/task/standby/StandByTask;)V

    return-void
.end method

.method public onKnownClick()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask$1;->this$0:Lcom/alibaba/ailabs/genie/task/standby/StandByTask;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->access$300(Lcom/alibaba/ailabs/genie/task/standby/StandByTask;)V

    return-void
.end method
