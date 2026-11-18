.class Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1$1;
.super Ljava/lang/Object;
.source "WakeupTipsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getActionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->access$300(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getActionValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->skillAttempt(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getActionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JUMP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->access$300(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getActionValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method
