.class Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;
.super Ljava/lang/Object;
.source "TransitionPageActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->getNetDetail()V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetDetail getMarketInfoById onError errorCode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\uff0cmsg\uff1a"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TransitionPageActivity"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->finishLoadingView()V

    .line 161
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "\u62b1\u6b49\uff0c\u6253\u5f00\u51fa\u9519\u3002"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 162
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$000(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->finishLoadingView()V

    .line 164
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->finish()V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetDetail getMarketInfoById onSuccess apiResponse\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransitionPageActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->finishLoadingView()V

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$202(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 128
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$300(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$300(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 130
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$200(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$200(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    .line 135
    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$400(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Lcom/alibaba/ailabs/appbox/view/RounderImageView;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 136
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$500(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$200(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$200(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getVoiceDisposition()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertStr2FastJA(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p1

    if-lt p1, v0, :cond_1

    .line 140
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$600(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$200(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getVoiceDisposition()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertStr2FastJA(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$600(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6253\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$200(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$200(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getVoiceDisposition()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertStr2FastJA(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p1

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-lt p1, v2, :cond_2

    .line 145
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$700(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$200(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getVoiceDisposition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertStr2FastJA(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 147
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$700(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$200(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getVoiceDisposition()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertStr2FastJA(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_3

    .line 150
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$800(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$200(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getVoiceDisposition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertStr2FastJA(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 152
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$800(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :goto_2
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$100(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)V

    return-void
.end method
