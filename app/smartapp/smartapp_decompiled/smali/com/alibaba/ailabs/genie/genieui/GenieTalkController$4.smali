.class Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;
.super Ljava/lang/Object;
.source "GenieTalkController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->createWakeupTextView(Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;I)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

.field final synthetic val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;I)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    iput p3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 603
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->getUiService()Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->onGenieUiClick(I)V

    .line 604
    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4$1;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 614
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$1100(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->addStatisticCount(Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;Ljava/util/HashMap;)V

    .line 615
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 616
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getLogInfo()Ljava/lang/String;

    move-result-object v0

    const-string v2, "log_info"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;->val$position:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "position"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Genie_recommend"

    const-string v2, "Genie_ball"

    const-string v3, "a1z3lt.b90280894"

    .line 618
    invoke-static {v0, v2, v3, p1}, Lcom/alibaba/ailabs/genie/genieui/utils/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 620
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->getUiService()Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->onGenieUiClick(I)V

    .line 621
    new-instance p1, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;-><init>()V

    const/4 v0, 0x7

    .line 622
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setStatus(I)V

    .line 623
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->getInstance()Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->getBallController()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setWho(Ljava/lang/String;)V

    return-void
.end method
