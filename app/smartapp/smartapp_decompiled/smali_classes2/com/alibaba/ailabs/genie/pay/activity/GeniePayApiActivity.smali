.class public Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity;
.super Landroid/app/Activity;
.source "GeniePayApiActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GeniePayApiActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$layout;->genie_pay_api_activity:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "payParam"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->init(Landroid/app/Application;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeniePayApiActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 42
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity$1;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayApiActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->pay(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;)V

    :cond_0
    return-void
.end method
