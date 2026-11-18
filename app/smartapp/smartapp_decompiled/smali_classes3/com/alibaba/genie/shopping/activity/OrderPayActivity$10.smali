.class Lcom/alibaba/genie/shopping/activity/OrderPayActivity$10;
.super Ljava/lang/Object;
.source "OrderPayActivity.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/utils/DialogUtils$OnBindContentView;


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

    .line 723
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$10;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/view/View;)V
    .locals 7

    .line 727
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_orderId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 728
    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_nikeName:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 729
    iget-object v4, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$10;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v4}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 730
    iget-object v4, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$10;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-virtual {v4}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_voice_pay_cancel_content1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$10;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v6}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->orderCode:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$10;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v6}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->orderCode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p1, :cond_3

    .line 733
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$10;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 734
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$10;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_voice_pay_cancel_content2:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$10;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v4}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->tbNickname:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$10;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->tbNickname:Ljava/lang/String;

    :cond_2
    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
