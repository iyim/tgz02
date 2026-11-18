.class Lcom/alibaba/genie/webshopping/activity/TradePayActivity$2;
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

    .line 169
    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$2;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 172
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$2;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$400(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u5546\u54c1\u4fe1\u606f"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$2;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$400(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$402(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$2;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$500(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$2;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$500(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p1, v0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$502(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->usePhonepay()I

    const/4 p1, 0x0

    const-string v0, "click_sendtophone"

    const-string v1, "a211mb.c1599727664335"

    const-string/jumbo v2, "shopping_pay_native"

    .line 175
    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/genie/tradepay/utils/UtUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
