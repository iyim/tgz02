.class Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$5;
.super Ljava/lang/Object;
.source "GenieTalkController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->createTalkTextView(Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;I)Landroid/widget/TextView;
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

    .line 647
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$5;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$5;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    iput p3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 650
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$5;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getActionType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MOCK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 651
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$5;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$000(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$5;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getActionValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->skillAttempt(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 652
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$5;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getActionType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JUMP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 653
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$5;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$000(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$5;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getActionValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 655
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->getUiService()Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->onGenieUiClick(I)V

    .line 656
    new-instance p1, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;-><init>()V

    const/4 v1, 0x7

    .line 657
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setStatus(I)V

    .line 658
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->getInstance()Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->getBallController()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setWho(Ljava/lang/String;)V

    .line 659
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->getUiService()Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->onGenieUiClick(I)V

    .line 660
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$5;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$5;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$1100(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->addStatisticCount(Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;Ljava/util/HashMap;)V

    .line 661
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 662
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$5;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getLogInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "log_info"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$5;->val$position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Genie_talk"

    const-string v1, "Genie_ball"

    const-string v2, "a1z3lt.b90280894"

    .line 664
    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/ailabs/genie/genieui/utils/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
