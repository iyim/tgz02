.class Lcom/alibaba/genie/shopping/activity/OrderPayActivity$11;
.super Ljava/lang/Object;
.source "OrderPayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$11;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 853
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$11;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$500(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 854
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$11;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$600(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$11;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$700(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "#999999"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 856
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$11;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$800(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "#2B3852"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 857
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$11;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$200(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$11;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$900(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/activity/WaveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/WaveView;->stop()V

    .line 859
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$11;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$1000(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch qrcode pay mPutOrderResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$11;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jesonma"

    invoke-static {v1, v0}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    new-instance v0, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$11;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$1100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;-><init>(Landroid/view/View;)V

    const/4 v1, 0x2

    .line 864
    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$11;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v2}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->qrPayCode:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
