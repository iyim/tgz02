.class Lcom/alibaba/genie/webshopping/activity/TradePayActivity$5;
.super Ljava/lang/Object;
.source "TradePayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->handleBaseMessage(Landroid/os/Message;)V
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

    .line 414
    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$5;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 417
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$5;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$400(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u5546\u54c1\u4fe1\u606f"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$5;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$400(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$402(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$5;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$500(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$5;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$500(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p1, v0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$502(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->usePhonepay()I

    return-void
.end method
