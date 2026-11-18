.class Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3$1;
.super Ljava/lang/Object;
.source "MarketDetailsFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    const-string v1, "itemCollectClickError"

    const-string v2, "MarketItem"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportItemEvent(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collect onError appid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",s1:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "collectApplet"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collect onSuccess model:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",appid:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "collectApplet"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$600(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/widget/TextView;

    move-result-object p1

    const-string/jumbo v0, "\u5df2\u6dfb\u52a0\u81f3 \u6211\u7684 >"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$600(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "#7383A2"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$600(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/appbox/R$drawable;->conner_rect_bg_gray:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 361
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$600(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method
