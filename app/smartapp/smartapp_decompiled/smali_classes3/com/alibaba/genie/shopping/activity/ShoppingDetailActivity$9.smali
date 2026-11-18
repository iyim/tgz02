.class Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$9;
.super Ljava/lang/Object;
.source "ShoppingDetailActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->queryTaobaoDetail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError() called with: errorCode = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], msg = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "circus"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;)V
    .locals 12

    if-eqz p1, :cond_8

    .line 747
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$202(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 749
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$200(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 750
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$600(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryTaobaoDetail, response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$200(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$200(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u9886\u5238\u8d2d\u4e70"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, "\u7acb\u5373\u8d2d\u4e70"

    if-eqz p1, :cond_0

    .line 753
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$200(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$202(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 756
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$200(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u7279\u8272\u670d\u52a1"

    const-string v3, "\u7279\u8272\u670d\u52a1(\u6682\u4e0d\u652f\u6301)"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$202(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 769
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$200(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v0, "data"

    .line 771
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v3, "apiStack"

    .line 773
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v4, 0x0

    .line 775
    :goto_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 776
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v6, "name"

    .line 778
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 779
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "esi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v3, "value"

    .line 780
    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v6, "skuVertical"

    .line 782
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, "installment"

    .line 784
    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 787
    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v6, "services"

    .line 792
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "trade"

    .line 795
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    const-string v7, "buyText"

    if-eqz v6, :cond_2

    .line 797
    invoke-virtual {v6, v7, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v6, "skuCore"

    .line 800
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v8, "sku2info"

    .line 802
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 824
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 825
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 826
    invoke-virtual {v6, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v10, ""

    const-string v11, "skuPromTip"

    .line 828
    invoke-virtual {v9, v11, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "itemApplyParams"

    .line 829
    invoke-virtual {v9, v11, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    invoke-virtual {v9, v7, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 837
    :cond_4
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 846
    :cond_6
    :goto_2
    invoke-virtual {p1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    :cond_7
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$400(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Lcom/taobao/android/tbsku/TBXSkuCore;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->initData(Ljava/lang/String;)V

    .line 855
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$400(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Lcom/taobao/android/tbsku/TBXSkuCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->getSkuCore()Lcom/taobao/android/sku/AliXSkuCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/sku/AliXSkuCore;->getHandlerCenter()Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$400(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Lcom/taobao/android/tbsku/TBXSkuCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->getSkuCore()Lcom/taobao/android/sku/AliXSkuCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/sku/AliXSkuCore;->getHandlerCenter()Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->getUltronEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 856
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$400(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Lcom/taobao/android/tbsku/TBXSkuCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->getSkuCore()Lcom/taobao/android/sku/AliXSkuCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/sku/AliXSkuCore;->getHandlerCenter()Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->getUltronEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    move-result-object p1

    const-string v0, "toast"

    new-instance v1, Lcom/alibaba/genie/shopping/activity/GenieCommonToastSubscriber;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/activity/GenieCommonToastSubscriber;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->replaceSubscriber(Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/ISubscriber;)V

    .line 857
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$9;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$400(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Lcom/taobao/android/tbsku/TBXSkuCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->getSkuCore()Lcom/taobao/android/sku/AliXSkuCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/sku/AliXSkuCore;->getHandlerCenter()Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;

    move-result-object p1

    const-string v0, "sku_toast"

    new-instance v1, Lcom/alibaba/genie/shopping/activity/GenieSkuToastHandler;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/activity/GenieSkuToastHandler;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;->replaceSubscriber(Ljava/lang/String;Lcom/taobao/android/sku/handler/IAliXSkuHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 860
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_3
    return-void
.end method
