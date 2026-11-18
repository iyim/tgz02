.class Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;
.super Ljava/lang/Object;
.source "GenieProductsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 89
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->access$200(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->access$000(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    iput-object v0, p1, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    .line 90
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    const-string v0, "GeniePay"

    if-nez p1, :cond_0

    const-string p1, "select modelBean == null"

    .line 91
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select modelBean:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->setCurrentPayModelBean(Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;)V

    .line 96
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->getBuyAmount()I

    move-result p1

    .line 97
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 100
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->getName()Ljava/lang/String;

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " price:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " totalPrice:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " extend:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->getExtendInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "pay_price"

    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->getItemId()J

    move-result-wide v0

    const-string v2, "pay_item_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->getBuyAmount()I

    move-result v0

    const-string v1, "pay_amount"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->getExtendInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pay_extend"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pay_title"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->finish()V

    return-void
.end method
