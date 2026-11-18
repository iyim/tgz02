.class Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1$1;
.super Ljava/lang/Object;
.source "OrderPayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1$1;->this$1:Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 156
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 157
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1$1;->this$1:Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$200(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 159
    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1$1;->this$1:Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->orderCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1$1;->this$1:Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;

    iget-object v1, v1, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->payOrderCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1$1;->this$1:Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;

    iget-object v2, v2, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    const v3, 0x186a7

    invoke-static {p1, v0, v1, v2, v3}, Lcom/alibaba/genie/shopping/voiceprint/mtop/VoicePrintRequestManager;->getVoicePrintPayCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    :cond_0
    return-void
.end method
