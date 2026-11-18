.class Lcom/taobao/android/tbsku/TBXSkuActivity$SkuUpdateDataReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TBXSkuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/tbsku/TBXSkuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkuUpdateDataReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;


# direct methods
.method private constructor <init>(Lcom/taobao/android/tbsku/TBXSkuActivity;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$SkuUpdateDataReceiver;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/android/tbsku/TBXSkuActivity;Lcom/taobao/android/tbsku/TBXSkuActivity$1;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuActivity$SkuUpdateDataReceiver;-><init>(Lcom/taobao/android/tbsku/TBXSkuActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 104
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$SkuUpdateDataReceiver;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;

    invoke-static {p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$200(Lcom/taobao/android/tbsku/TBXSkuActivity;)Lcom/taobao/android/tbsku/TBXSkuCore;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$SkuUpdateDataReceiver;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;

    invoke-static {p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$200(Lcom/taobao/android/tbsku/TBXSkuActivity;)Lcom/taobao/android/tbsku/TBXSkuCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->getItemId()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "originalItemId"

    .line 117
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p1, "targetItemId"

    .line 121
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "areaId"

    .line 123
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addressId"

    .line 124
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "params"

    .line 125
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 127
    new-instance v5, Ljava/util/HashMap;

    iget-object v6, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$SkuUpdateDataReceiver;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;

    invoke-static {v6}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$300(Lcom/taobao/android/tbsku/TBXSkuActivity;)Lcom/taobao/android/tbsku/model/IntentModel;

    move-result-object v6

    iget-object v6, v6, Lcom/taobao/android/tbsku/model/IntentModel;->mQueryMap:Ljava/util/Map;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 130
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 133
    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 136
    invoke-interface {v5, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_5
    iget-object p2, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$SkuUpdateDataReceiver;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;

    const/4 v0, 0x0

    invoke-static {p2, p1, v5, v0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$400(Lcom/taobao/android/tbsku/TBXSkuActivity;Ljava/lang/String;Ljava/util/Map;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 140
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$SkuUpdateDataReceiver;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;

    invoke-static {p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$200(Lcom/taobao/android/tbsku/TBXSkuActivity;)Lcom/taobao/android/tbsku/TBXSkuCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->getSkuCore()Lcom/taobao/android/sku/AliXSkuCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/sku/AliXSkuCore;->presentLoading()V

    :cond_6
    return-void
.end method
