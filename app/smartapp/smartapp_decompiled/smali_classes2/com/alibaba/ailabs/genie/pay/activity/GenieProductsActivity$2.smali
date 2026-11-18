.class Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$2;
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

    .line 72
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$2;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 75
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$2;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->finish()V

    .line 76
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/GeniePayError;

    const-string v1, "-2"

    const-string v2, "cancle"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/ailabs/genie/pay/GeniePayError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V

    return-void
.end method
