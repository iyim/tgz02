.class Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1$2;
.super Ljava/lang/Object;
.source "TradePayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1$2;->this$1:Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 151
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 152
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1$2;->this$1:Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;

    iget-object p1, p1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->userExit()V

    const-string p1, "pay_giveup"

    const-string v0, "a211mb.c1599201639508"

    const-string/jumbo v1, "shopping_pay_native"

    const/4 v2, 0x0

    .line 153
    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/genie/tradepay/utils/UtUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
