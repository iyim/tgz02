.class Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public payFailure(Lcom/alibaba/fastjson/JSONObject;ILjava/lang/String;)V
    .locals 2

    .line 51
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pay failure; errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; errorMsg="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public paySuccess(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    .line 46
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pay success; paySuccessData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "null"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
