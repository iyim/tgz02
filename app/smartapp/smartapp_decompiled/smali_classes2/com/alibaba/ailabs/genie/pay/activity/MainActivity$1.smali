.class Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 44
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/pay/R$layout;->genie_pay_pay_result_tips:I

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/pay/R$string;->tv_pay_success:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/pay/R$drawable;->genie_pay_success:I

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;->show(Landroid/content/Context;ILjava/lang/String;I)V

    return-void
.end method
