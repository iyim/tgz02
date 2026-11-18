.class final Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$13;
.super Ljava/lang/Object;
.source "GenieApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->userHistoryReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dataDetail:Lorg/json/JSONObject;

.field final synthetic val$extendInfo:Lorg/json/JSONObject;

.field final synthetic val$firstType:Ljava/lang/String;

.field final synthetic val$secondType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .line 1184
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$13;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$13;->val$firstType:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$13;->val$secondType:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$13;->val$dataDetail:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$13;->val$extendInfo:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 1190
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$13;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi"

    .line 1192
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1193
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 1195
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "firstType"

    .line 1197
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$13;->val$firstType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1198
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$13;->val$secondType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "secondType"

    .line 1199
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$13;->val$secondType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1202
    :cond_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$13;->val$dataDetail:Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    const-string v3, "dataDetail"

    .line 1203
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$13;->val$dataDetail:Lorg/json/JSONObject;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1205
    :cond_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$13;->val$extendInfo:Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    const-string v3, "extendInfo"

    .line 1206
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$13;->val$extendInfo:Lorg/json/JSONObject;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1209
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "data"

    .line 1210
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "method"

    const/16 v4, 0x14

    .line 1211
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1213
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1216
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1218
    :goto_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method
