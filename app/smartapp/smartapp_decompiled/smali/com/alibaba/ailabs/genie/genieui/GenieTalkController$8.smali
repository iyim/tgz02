.class Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;
.super Ljava/lang/Object;
.source "GenieTalkController.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->updateCorpus(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->val$pageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtop error ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GenieTalkController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponse;",
            ">;)V"
        }
    .end annotation

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieTalkController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/NetApi;->isChildMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "onSuccess: \u513f\u7ae5\u6a21\u5f0f\u6e05\u7a7a\u6570\u636e"

    .line 902
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->clean()V

    return-void

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$1402(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;)Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;

    .line 908
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$1502(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;I)I

    .line 909
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$1600(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)V

    .line 910
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$1700(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 911
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$1100(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 912
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$1400(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;->getPayload()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 913
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string v3, "disSize"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$1802(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;I)I

    .line 914
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string v3, "awDisSize"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$1902(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;I)I

    .line 915
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string/jumbo v3, "recallTimeLag"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2002(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J

    const-string v2, "extMap"

    .line 917
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 918
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string/jumbo v3, "tired_seconds"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2102(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J

    .line 920
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string v3, "display_seconds"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2202(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J

    .line 921
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string v3, "display_lag_seconds"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2302(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J

    .line 922
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string v3, "no_request_list"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2402(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    const-string/jumbo v2, "wakeup_delay_seconds"

    .line 923
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 924
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v2, v2, v4

    float-to-long v4, v2

    invoke-static {v3, v4, v5}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2502(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J

    const-string v2, "inside_app_params"

    .line 926
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 927
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string v3, "packageName"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2602(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/lang/String;)Ljava/lang/String;

    .line 928
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string v3, "pageName"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2702(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/lang/String;)Ljava/lang/String;

    .line 929
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string/jumbo v3, "tmjlColor"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2802(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/lang/String;)Ljava/lang/String;

    .line 930
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string/jumbo v3, "queryColor"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2902(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v2, "status"

    .line 931
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 932
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string v4, "disappearDelay"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$3002(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J

    .line 933
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string/jumbo v4, "startColor"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$3102(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/lang/String;)Ljava/lang/String;

    .line 934
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string v4, "endColor"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$3202(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/lang/String;)Ljava/lang/String;

    .line 936
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$3300(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->clear()V

    .line 937
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-string v4, "data"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$3302(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    .line 939
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$3000(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    const-wide/16 v7, 0x3e8

    const-wide/16 v9, 0x0

    cmp-long p1, v3, v9

    if-gtz p1, :cond_1

    .line 940
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1, v5, v6}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$3002(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J

    goto :goto_0

    .line 942
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$3000(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J

    move-result-wide v3

    mul-long v3, v3, v7

    invoke-static {p1, v3, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$3002(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J

    .line 944
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2500(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J

    move-result-wide v3

    const-wide/16 v11, 0x7d0

    cmp-long p1, v3, v11

    if-gez p1, :cond_2

    .line 945
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1, v11, v12}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2502(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J

    .line 947
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2000(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J

    move-result-wide v3

    cmp-long p1, v3, v9

    if-nez p1, :cond_3

    .line 948
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-wide/32 v3, 0x36ee80

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$3400(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Ljava/util/Random;

    move-result-object v11

    const/16 v12, 0x7530

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v11, v3

    invoke-static {p1, v11, v12}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2002(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J

    goto :goto_1

    .line 950
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2000(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J

    move-result-wide v3

    mul-long v3, v3, v7

    invoke-static {p1, v3, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2002(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J

    .line 952
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2100(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J

    move-result-wide v3

    cmp-long p1, v3, v9

    if-gtz p1, :cond_4

    .line 953
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-wide/32 v3, 0x493e0

    invoke-static {p1, v3, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2102(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J

    .line 954
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tiredSeconds <= 0"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2100(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 956
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2100(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J

    move-result-wide v3

    mul-long v3, v3, v7

    invoke-static {p1, v3, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2102(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J

    .line 957
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "else"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2100(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :goto_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2200(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J

    move-result-wide v3

    cmp-long p1, v3, v9

    if-gtz p1, :cond_5

    .line 960
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    const-wide/16 v3, 0x2ee0

    invoke-static {p1, v3, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2202(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J

    goto :goto_3

    .line 962
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2200(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J

    move-result-wide v3

    mul-long v3, v3, v7

    invoke-static {p1, v3, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2202(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J

    .line 964
    :goto_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2300(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J

    move-result-wide v3

    cmp-long p1, v3, v9

    if-gtz p1, :cond_6

    .line 965
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1, v5, v6}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2302(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J

    goto :goto_4

    .line 967
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2300(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J

    move-result-wide v3

    mul-long v3, v3, v7

    invoke-static {p1, v3, v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2302(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;J)J

    .line 970
    :goto_4
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager;->getInstance()Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager;

    move-result-object p1

    new-instance v3, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8$1;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8$1;-><init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;)V

    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager;->run(Ljava/lang/Runnable;)V

    if-eqz v2, :cond_8

    .line 981
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside status :"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "1"

    .line 982
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->val$packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2600(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->val$pageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2700(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->val$pageName:Ljava/lang/String;

    const-string v4, "com.alibaba.ailabs.genie.WakeUp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 983
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$3502(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/lang/String;)Ljava/lang/String;

    .line 984
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$3600(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 985
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show inside pkgAndActName: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0c"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->val$pageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    const-string p1, "0"

    .line 986
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 987
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$3502(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;Ljava/lang/String;)Ljava/lang/String;

    .line 991
    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$3600(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$8;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$2000(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
