.class Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$2;
.super Landroid/os/AsyncTask;
.source "ParseResponseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->processCache(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

.field final synthetic val$cacheFields:Lcom/alibaba/fastjson/JSONArray;

.field final synthetic val$manager:Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

.field final synthetic val$templateKey:Ljava/lang/String;

.field final synthetic val$ultronData:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$2;->this$0:Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

    iput-object p2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$2;->val$ultronData:Lcom/alibaba/fastjson/JSONObject;

    iput-object p3, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$2;->val$cacheFields:Lcom/alibaba/fastjson/JSONArray;

    iput-object p4, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$2;->val$manager:Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

    iput-object p5, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$2;->val$templateKey:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;
    .locals 3

    const-string p1, "parseCacheData async running"

    .line 308
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "ParseResponseHelper"

    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    .line 309
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$2;->this$0:Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$2;->val$ultronData:Lcom/alibaba/fastjson/JSONObject;

    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$2;->val$cacheFields:Lcom/alibaba/fastjson/JSONArray;

    invoke-static {p1, v1, v2}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->access$100(Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;)Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->access$002(Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;)Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    .line 310
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$2;->this$0:Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

    invoke-static {p1}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->access$000(Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;)Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$2;->val$manager:Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$2;->val$templateKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$2;->this$0:Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

    invoke-static {v2}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->access$000(Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;)Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->saveCacheDataResult(Ljava/lang/String;Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;)V

    :cond_0
    const-string p1, " parseCacheData done"

    .line 313
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    .line 314
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$2;->this$0:Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

    invoke-static {p1}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->access$000(Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;)Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 305
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$2;->doInBackground([Ljava/lang/Void;)Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    move-result-object p1

    return-object p1
.end method
