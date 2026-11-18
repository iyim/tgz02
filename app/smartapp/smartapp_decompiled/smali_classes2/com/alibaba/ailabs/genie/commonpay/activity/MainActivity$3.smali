.class Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;
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

.field final synthetic val$sellerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;->this$0:Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;->val$sellerId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;->val$appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;->val$outItemId:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;->val$outItemName:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;->val$outOrderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 89
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;->this$0:Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;->val$sellerId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide v2, 0xe9a10c2fL

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;->val$sellerId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, 0x6

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;->val$appId:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "2019121169798623"

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;->val$appId:Ljava/lang/String;

    :goto_1
    move-object v6, p1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;->val$outItemId:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "1000001"

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;->val$outItemId:Ljava/lang/String;

    :goto_2
    move-object v7, p1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;->val$outItemName:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "\u8c46\u8150"

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;->val$outItemName:Ljava/lang/String;

    :goto_3
    move-object v8, p1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;->val$outOrderId:Ljava/lang/String;

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "eebfce93-a760-415f-a6b5-4f0c9a1f3134"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity$3;->val$outOrderId:Ljava/lang/String;

    :goto_4
    move-object v9, p1

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x927c0

    add-long/2addr v10, v12

    const-string v12, ""

    move-object v0, v1

    .line 89
    invoke-static/range {v0 .. v12}, Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;->access$200(Lcom/alibaba/ailabs/genie/commonpay/activity/MainActivity;Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
