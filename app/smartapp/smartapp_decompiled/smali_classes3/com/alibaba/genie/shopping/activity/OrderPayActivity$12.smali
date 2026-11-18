.class Lcom/alibaba/genie/shopping/activity/OrderPayActivity$12;
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

    .line 871
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$12;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$12;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$1400(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 876
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$12;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$1400(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$12;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->finish()V

    return-void
.end method
