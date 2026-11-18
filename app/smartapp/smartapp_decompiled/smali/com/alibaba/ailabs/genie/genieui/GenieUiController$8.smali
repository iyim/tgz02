.class Lcom/alibaba/ailabs/genie/genieui/GenieUiController$8;
.super Ljava/lang/Object;
.source "GenieUiController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->addWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)V
    .locals 0

    .line 855
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 858
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->getUiService()Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->onGenieUiClick(I)V

    .line 859
    new-instance p1, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;-><init>()V

    const/4 v0, 0x7

    .line 860
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setStatus(I)V

    .line 861
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->getInstance()Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->getBallController()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;->setWho(Ljava/lang/String;)V

    .line 862
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->getInstance()Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->scheduleList(Lcom/alibaba/ailabs/genie/client/data/ChangeStatusReqData;)V

    return-void
.end method
