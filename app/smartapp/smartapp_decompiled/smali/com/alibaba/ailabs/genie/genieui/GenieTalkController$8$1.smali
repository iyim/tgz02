.class Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8$1;
.super Ljava/lang/Object;
.source "GenieTalkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;)V
    .locals 0

    .line 970
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 973
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string/jumbo v2, "wakeup"

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->getShowCorpus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$1202(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/util/List;)Ljava/util/List;

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onSuccess wakeup mNextShowCorpus.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$1200(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieTalkController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$1302(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Z)Z

    return-void
.end method
