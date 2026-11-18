.class Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;
.super Ljava/lang/Object;
.source "TradePayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 132
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$000(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 133
    new-instance p1, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;

    invoke-direct {p1}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;-><init>()V

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$100(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$100(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "code"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$200(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$200(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v1, "nickname"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1, v0}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->setArguments(Landroid/os/Bundle;)V

    .line 138
    new-instance v0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1$1;-><init>(Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 148
    new-instance v0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1$2;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1$2;-><init>(Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "pay"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 159
    :cond_2
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->userExit()V

    :goto_1
    const/4 p1, 0x0

    const-string v0, "click_cancel"

    const-string v1, "a211mb.c1599201812044"

    const-string/jumbo v2, "shopping_pay_native"

    .line 161
    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/genie/tradepay/utils/UtUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
