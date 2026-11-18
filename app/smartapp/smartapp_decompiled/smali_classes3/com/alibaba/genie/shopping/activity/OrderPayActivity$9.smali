.class Lcom/alibaba/genie/shopping/activity/OrderPayActivity$9;
.super Ljava/lang/Object;
.source "OrderPayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->isCosumenBackKey()Z
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

    .line 710
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 713
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object p1

    iget p1, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->payType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 715
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->voiceText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 716
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    const/4 v1, -0x1

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object p1

    iget-object v2, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->voiceText:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v6, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    :cond_0
    return-void
.end method
