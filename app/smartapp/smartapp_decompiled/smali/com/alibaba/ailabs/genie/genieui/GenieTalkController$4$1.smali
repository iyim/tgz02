.class Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4$1;
.super Ljava/lang/Object;
.source "GenieTalkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 607
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getActionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$000(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getActionValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->skillAttempt(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getActionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JUMP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$000(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$4;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getActionValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method
