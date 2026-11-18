.class Lcom/alibaba/genie/webshopping/activity/TradePayActivity$3;
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

    .line 180
    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$3;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 183
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$3;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$600(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$3;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string/jumbo v2, "\u60a8\u6ca1\u6709\u5f00\u901a\u58f0\u7eb9\u652f\u4ed8\u5462\uff0c\u8bf7\u5230\u201c\u8bbe\u7f6e\u2014\u58f0\u7eb9\u8d26\u53f7\u201d\u8fdb\u884c\u5f00\u901a"

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    .line 188
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$3;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    const/4 v0, 0x1

    const-string/jumbo v1, "\u60a8\u6ca1\u6709\u5f00\u901a\u58f0\u7eb9\u652f\u4ed8\u5462\uff0c\u8bf7\u5230\u201c\u8bbe\u7f6e\u2014\u58f0\u7eb9\u8d26\u53f7\u201d\u8fdb\u884c\u5f00\u901a"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->getVoiceode()I

    :goto_0
    const/4 p1, 0x0

    const-string v0, "click_vpay"

    const-string v1, "a211mb.c1599726925708"

    const-string/jumbo v2, "shopping_pay_native"

    .line 197
    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/genie/tradepay/utils/UtUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
