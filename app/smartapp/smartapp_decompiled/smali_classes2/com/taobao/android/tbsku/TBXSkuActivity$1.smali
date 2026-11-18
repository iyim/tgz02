.class Lcom/taobao/android/tbsku/TBXSkuActivity$1;
.super Ljava/lang/Object;
.source "TBXSkuActivity.java"

# interfaces
.implements Lcom/taobao/android/tbsku/downgrade/IDowngrade;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/tbsku/TBXSkuActivity;->showSku(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;


# direct methods
.method constructor <init>(Lcom/taobao/android/tbsku/TBXSkuActivity;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$1;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downgrade(Ljava/lang/String;)V
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$1;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;

    invoke-static {v0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$700(Lcom/taobao/android/tbsku/TBXSkuActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$1;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;

    invoke-static {v0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$300(Lcom/taobao/android/tbsku/TBXSkuActivity;)Lcom/taobao/android/tbsku/model/IntentModel;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/tbsku/model/IntentModel;->mIgnoreToast:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$1;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;

    const/4 v1, 0x1

    const-string v2, "\u975e\u5e38\u62b1\u6b49\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5!"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$1;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;

    invoke-static {v0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$300(Lcom/taobao/android/tbsku/TBXSkuActivity;)Lcom/taobao/android/tbsku/model/IntentModel;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/tbsku/model/IntentModel;->mItemId:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$1;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;

    invoke-static {v1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$300(Lcom/taobao/android/tbsku/TBXSkuActivity;)Lcom/taobao/android/tbsku/model/IntentModel;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/android/tbsku/model/IntentModel;->mUrl:Ljava/lang/String;

    const-string v2, "taobao_sku"

    const-string v3, "UME_SKU_URL_003"

    invoke-static {v2, v3, p1, v0, v1}, Lcom/taobao/android/sku/utils/SkuLogUtils;->alarmUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$1;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$800(Lcom/taobao/android/tbsku/TBXSkuActivity;ILandroid/content/Intent;)V

    .line 349
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$1;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity;

    invoke-static {p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$300(Lcom/taobao/android/tbsku/TBXSkuActivity;)Lcom/taobao/android/tbsku/model/IntentModel;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/tbsku/model/IntentModel;->mDowngradeStr:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$900(Lcom/taobao/android/tbsku/TBXSkuActivity;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
