.class Lcom/taobao/android/tbsku/TBXSkuActivity$SkuActionCallback;
.super Landroid/content/BroadcastReceiver;
.source "TBXSkuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/tbsku/TBXSkuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkuActionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;


# direct methods
.method private constructor <init>(Lcom/taobao/android/tbsku/TBXSkuActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$SkuActionCallback;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/android/tbsku/TBXSkuActivity;Lcom/taobao/android/tbsku/TBXSkuActivity$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuActivity$SkuActionCallback;-><init>(Lcom/taobao/android/tbsku/TBXSkuActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string p1, "uniqueId"

    .line 59
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$SkuActionCallback;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;

    invoke-static {v0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$000(Lcom/taobao/android/tbsku/TBXSkuActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "inputMode"

    .line 63
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "BUYNOW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "CONFIRM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "ADDCART_AND_BUYNOW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string v1, "ADDCART"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "addCart"

    .line 78
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 80
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const-string p2, "itemId"

    .line 83
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "skuId"

    .line 84
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "quantity"

    .line 85
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "resultCode"

    const-string v6, "5"

    .line 87
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-interface {v4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$SkuActionCallback;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;

    invoke-static {p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$000(Lcom/taobao/android/tbsku/TBXSkuActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v4}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$100(Lcom/taobao/android/tbsku/TBXSkuActivity;Ljava/lang/String;Ljava/util/Map;)V

    nop

    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x19a3b8df -> :sswitch_3
        0x2dfcbdf6 -> :sswitch_2
        0x637c72a0 -> :sswitch_1
        0x75774a90 -> :sswitch_0
    .end sparse-switch
.end method
