.class Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$8;
.super Ljava/lang/Object;
.source "ApiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$8;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlowTaskManager mGotoEyeYieldModeTipFlow begin isChildMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isChildMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isEyeYieldMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isEyeYieldMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApiActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$8;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "\u62a4\u773c\u6a21\u5f0f\u5df2\u5f00\u542f"

    .line 277
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$8;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/util/List;)V

    .line 279
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$8;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->hideUi(Landroid/content/Context;)V

    .line 280
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->finishCurrentFlow()V

    return-void
.end method
