.class final Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$11;
.super Ljava/lang/Object;
.source "GenieApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->sendTextMsgToGw(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$attachmentCnt:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$eventNs:Ljava/lang/String;

.field final synthetic val$payload_json:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$11;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$11;->val$eventNs:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$11;->val$eventName:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$11;->val$attachmentCnt:I

    iput-object p5, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$11;->val$payload_json:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 606
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$11;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi"

    .line 608
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 609
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 611
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 612
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "eventNs"

    .line 614
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$11;->val$eventNs:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "eventName"

    .line 615
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$11;->val$eventName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "attachmentCnt"

    .line 616
    iget v5, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$11;->val$attachmentCnt:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "payload"

    .line 617
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$11;->val$payload_json:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "param"

    .line 619
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "method"

    const/16 v4, 0x11

    .line 620
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 624
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    :goto_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method
