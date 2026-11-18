.class Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;
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

    .line 202
    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 205
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$700(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$800(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$900(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v2, "#999999"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$1000(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v2, "#2B3852"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$300(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 212
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->exitSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->cancelVpay()I

    .line 216
    iget-object v3, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-virtual {v3}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lcom/alibaba/ailabs/genie/shoppingsdk/R$string;->tv_shopping_aipay_tips:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "87fa86ae-d34a-48f2-b098-92973292cc94"

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    .line 218
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$1100(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Lcom/alibaba/genie/tradepay/activity/WaveView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/activity/WaveView;->stop()V

    .line 219
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$1200(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    new-instance p1, Lcom/alibaba/genie/tradepay/utils/BitmapWorkerTask;

    iget-object v3, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v3}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$1300(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/alibaba/genie/tradepay/utils/BitmapWorkerTask;-><init>(Landroid/view/View;)V

    const/4 v3, 0x2

    .line 221
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {v4}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$1400(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p1, v3}, Lcom/alibaba/genie/tradepay/utils/BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 225
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$1500(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$1600(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->access$1500(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4$1;-><init>(Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "click_qrpay"

    const-string v0, "a211mb.c1599726798969"

    const-string/jumbo v1, "shopping_pay_native"

    .line 245
    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/genie/tradepay/utils/UtUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
