.class Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity$1;
.super Ljava/lang/Object;
.source "SkillDetailsActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->init(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v1, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 73
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u60a8\u8fd8\u6ca1\u6709\u6dfb\u52a0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\uff0c\u6dfb\u52a0\u540e\u53ef\u4ee5\u53d1\u73b0\u66f4\u591a\u7cbe\u5f69\u5185\u5bb9\u54e6."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 73
    invoke-static/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->access$000(Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;Ljava/lang/String;)V

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/activity/SkillDetailsActivity;->finishLoadingView()V

    :cond_1
    return-void
.end method
