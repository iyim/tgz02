.class Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$6;
.super Ljava/lang/Object;
.source "GenieTalkController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->createInsideTextView(Lcom/alibaba/fastjson/JSONObject;I)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

.field final synthetic val$corpus:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Lcom/alibaba/fastjson/JSONObject;I)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$6;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$6;->val$corpus:Lcom/alibaba/fastjson/JSONObject;

    iput p3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 694
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$6;->val$corpus:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v0, "way"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MOCK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "mock_q"

    if-eqz p1, :cond_0

    .line 695
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$6;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$000(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$6;->val$corpus:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->skillAttempt(Landroid/content/Context;Ljava/lang/String;)V

    .line 697
    :cond_0
    new-instance p1, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;-><init>()V

    const/4 v1, 0x7

    .line 698
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setStatus(I)V

    .line 699
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->getInstance()Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->getBallController()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setWho(Ljava/lang/String;)V

    .line 701
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$6;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$6;->val$corpus:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$1100(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->addStatisticCount(Lcom/alibaba/fastjson/JSONObject;Ljava/util/HashMap;)V

    .line 702
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 703
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$6;->val$corpus:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "log_info"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$6;->val$position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Genie_app"

    const-string v1, "Genie_ball"

    const-string v2, "a1z3lt.b90280894"

    .line 705
    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/ailabs/genie/genieui/utils/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
