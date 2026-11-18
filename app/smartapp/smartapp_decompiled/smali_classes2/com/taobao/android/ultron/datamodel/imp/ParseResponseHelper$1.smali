.class Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;
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


# instance fields
.field final synthetic this$0:Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

.field final synthetic val$contentStr:Ljava/lang/String;

.field final synthetic val$manager:Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

.field final synthetic val$templateId:Ljava/lang/String;

.field final synthetic val$templateKey:Ljava/lang/String;

.field final synthetic val$templateVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;->this$0:Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

    iput-object p2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;->val$manager:Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

    iput-object p3, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;->val$templateKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;->val$contentStr:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;->val$templateId:Ljava/lang/String;

    iput-object p6, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;->val$templateVersion:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 278
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;->val$manager:Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;->val$templateKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;->val$contentStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->saveTemplate(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "processCache save cache"

    .line 279
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "ParseResponseHelper"

    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    .line 282
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;->val$manager:Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->getTemplateIds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 285
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_\\$_"

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 287
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    .line 288
    aget-object v4, v2, v3

    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;->val$templateId:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    aget-object v2, v2, v4

    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;->val$templateVersion:Ljava/lang/String;

    .line 289
    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;->val$manager:Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

    invoke-virtual {v2, v1}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->deleteTemplateById(Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;->val$manager:Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

    invoke-virtual {v2, v1}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->deleteCacheDataResult(Ljava/lang/String;)V

    .line 292
    new-array v2, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCache deleteTemplateById:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
