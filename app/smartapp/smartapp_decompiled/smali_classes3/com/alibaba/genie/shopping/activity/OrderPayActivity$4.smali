.class Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;
.super Ljava/lang/Object;
.source "OrderPayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 344
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 347
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$500(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$600(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$700(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v2, "#999999"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 350
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$800(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v2, "#2B3852"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$200(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 354
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->exitSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 356
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->cancelVoicePay()V

    .line 358
    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-virtual {v3}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_aipay_tips:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "87fa86ae-d34a-48f2-b098-92973292cc94"

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    .line 364
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$900(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/activity/WaveView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/activity/WaveView;->stop()V

    .line 365
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$1000(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 370
    new-instance p1, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;

    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v3}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$1100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;-><init>(Landroid/view/View;)V

    const/4 v3, 0x2

    .line 371
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v4}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->qrPayCode:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p1, v3}, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 373
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    invoke-virtual {p1, v2}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 375
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x7d1

    .line 376
    iput v2, p1, Landroid/os/Message;->what:I

    .line 377
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v2}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v2

    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 378
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    iget-object v2, v2, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, p1, v3, v4}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 381
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v2, -0x3eb

    .line 382
    iput v2, p1, Landroid/os/Message;->what:I

    .line 383
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    iget-object v2, v2, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    const-wide/32 v3, 0x2bf20

    invoke-virtual {v2, p1, v3, v4}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 386
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$1200(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$1300(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$1200(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4$1;-><init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\u60a8\u53ef\u4ee5\u8bf4\"\u5929\u732b\u7cbe\u7075\uff0c\u53d1\u9001\u5230\u624b\u673a\""

    .line 405
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u60a8\u53ef\u4ee5\u8bf4\"\u5929\u732b\u7cbe\u7075\uff0c\u53d1\u9001\u5230\u624b\u673a\u652f\u4ed8\""

    .line 406
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u60a8\u53ef\u4ee5\u8bf4\"\u5929\u732b\u7cbe\u7075\uff0c\u53d1\u9001\u5230\u624b\u673a\u5929\u732b\u7cbe\u7075APP\""

    .line 407
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u60a8\u53ef\u4ee5\u8bf4\"\u5929\u732b\u7cbe\u7075\uff0c\u53d1\u9001\u5230\u624b\u673a\u5929\u732b\u7cbe\u7075APP\u652f\u4ed8\""

    .line 408
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 411
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    const/16 v1, 0x2712

    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/util/List;)V

    .line 413
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    const-string v3, "Scan_code_payment"

    const-string v4, "shopping_payment pages"

    const-string v5, "a1z3lt.12157879"

    const-string v6, "1"

    const/4 v7, 0x2

    invoke-static/range {v2 .. v7}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$400(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
