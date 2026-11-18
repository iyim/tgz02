.class Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$outItemId:Ljava/lang/String;

.field final synthetic val$outItemName:Ljava/lang/String;

.field final synthetic val$outOrderId:Ljava/lang/String;

.field final synthetic val$priKey:Ljava/lang/String;

.field final synthetic val$sellerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$sellerId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$outItemId:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$outItemName:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$outOrderId:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$priKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    .line 71
    invoke-static {}, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;->getInstance()Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;

    iget-object v3, v0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$sellerId:Ljava/lang/String;

    .line 72
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "3919645743"

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$sellerId:Ljava/lang/String;

    :goto_0
    const-wide/16 v4, 0x6

    iget-object v6, v0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$appId:Ljava/lang/String;

    .line 74
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "2019121169798623"

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$appId:Ljava/lang/String;

    :goto_1
    iget-object v7, v0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$outItemId:Ljava/lang/String;

    .line 75
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "1000001"

    goto :goto_2

    :cond_2
    iget-object v7, v0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$outItemId:Ljava/lang/String;

    :goto_2
    iget-object v8, v0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$outItemName:Ljava/lang/String;

    .line 76
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "\u8c46\u8150"

    goto :goto_3

    :cond_3
    iget-object v8, v0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$outItemName:Ljava/lang/String;

    :goto_3
    iget-object v9, v0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$outOrderId:Ljava/lang/String;

    .line 77
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "eebfce93-a760-415f-a6b5-4f0c9a1f3134"

    goto :goto_4

    :cond_4
    iget-object v9, v0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$outOrderId:Ljava/lang/String;

    .line 78
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x927c0

    add-long/2addr v10, v12

    iget-object v12, v0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$priKey:Ljava/lang/String;

    .line 79
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, ""

    goto :goto_5

    :cond_5
    iget-object v12, v0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->val$priKey:Ljava/lang/String;

    :goto_5
    iget-object v13, v0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;

    .line 80
    invoke-static {v13}, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->access$000(Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13

    iget-object v14, v0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;

    invoke-static {v14}, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->access$100(Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;)Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;

    move-result-object v14

    const/4 v15, 0x1

    .line 71
    invoke-virtual/range {v1 .. v15}, Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;->qrcode(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;Z)V

    return-void
.end method
