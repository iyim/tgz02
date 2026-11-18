.class Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;
.super Ljava/lang/Object;
.source "WakeupTipsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;

.field final synthetic val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

.field final synthetic val$holderPos:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;I)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    iput p3, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;->val$holderPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->access$200(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;)Lcom/alibaba/ailabs/genie/genieui/utils/StatisticListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->access$200(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;)Lcom/alibaba/ailabs/genie/genieui/utils/StatisticListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;->val$corpus:Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    iget v2, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;->val$holderPos:I

    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/genie/genieui/utils/StatisticListener;->onItemClick(Ljava/lang/Object;I)V

    .line 81
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->getUiService()Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->onGenieUiClick(I)V

    .line 82
    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1$1;-><init>(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
