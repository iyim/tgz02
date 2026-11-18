.class Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$6;
.super Ljava/lang/Object;
.source "ShoppingSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 570
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->access$300(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)Lcom/alibaba/genie/shopping/view/CustomGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/CustomGridView;->getFirstVisiblePosition()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 571
    invoke-static {v2, v3, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    double-to-int v0, v0

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShoppingSearchActivity previous_page_dynamic; firstPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jesonma"

    invoke-static {v2, v1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->access$300(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)Lcom/alibaba/genie/shopping/view/CustomGridView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v3, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/genie/shopping/view/CustomGridView;->smoothScrollToPositionFromTop(III)V

    return-void
.end method
