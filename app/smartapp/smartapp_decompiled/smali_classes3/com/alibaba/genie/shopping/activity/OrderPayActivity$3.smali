.class Lcom/alibaba/genie/shopping/activity/OrderPayActivity$3;
.super Ljava/lang/Object;
.source "OrderPayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 328
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 331
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object p1

    iget-boolean p1, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->openVoiceBuy:Z

    if-nez p1, :cond_0

    .line 333
    new-instance p1, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

    invoke-direct {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;-><init>()V

    .line 334
    sget-object v0, Lcom/alibaba/genie/shopping/utils/ConstData;->VOICEPRINT_COME_FROM_PAY_PAGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->setComeFrom(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "open_guide_dialog"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->orderCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->payOrderCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    const v3, 0x186a7

    invoke-static {p1, v0, v1, v2, v3}, Lcom/alibaba/genie/shopping/voiceprint/mtop/VoicePrintRequestManager;->getVoicePrintPayCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    .line 341
    :goto_0
    iget-object v4, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    const/4 v9, 0x1

    const-string v5, "Voiceprint_payment"

    const-string v6, "shopping_payment pages"

    const-string v7, "a1z3lt.12157879"

    const-string v8, "1"

    invoke-static/range {v4 .. v9}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$400(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
