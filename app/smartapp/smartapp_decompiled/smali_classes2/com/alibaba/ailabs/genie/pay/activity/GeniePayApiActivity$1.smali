.class Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity$1;
.super Lcom/alibaba/ailabs/genie/pay/GeniePayCallbackImp;
.source "GeniePayApiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity$1;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayCallbackImp;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, " json is null"

    .line 46
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeniePayApiActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "payResult"

    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity$1;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity;->setResult(ILandroid/content/Intent;)V

    .line 50
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity$1;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity;->finish()V

    return-void
.end method
