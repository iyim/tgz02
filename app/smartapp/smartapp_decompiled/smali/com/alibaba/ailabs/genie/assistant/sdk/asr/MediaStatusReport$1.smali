.class final Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$1;
.super Ljava/lang/Object;
.source "MediaStatusReport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport;->setStatus(Landroid/content/Context;Ljava/lang/String;IILcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$info:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;

.field final synthetic val$pkgAlias:Ljava/lang/String;

.field final synthetic val$status:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IILcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$1;->val$pkgAlias:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$1;->val$type:I

    iput p4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$1;->val$status:I

    iput-object p5, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$1;->val$info:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.alibaba.ailabs.genie.assistant.provider/media"

    .line 105
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 106
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "pkg"

    .line 108
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$1;->val$pkgAlias:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "pkgAlias"

    .line 110
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$1;->val$pkgAlias:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "type"

    .line 112
    iget v5, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$1;->val$type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "status"

    .line 113
    iget v5, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$1;->val$status:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "ver"

    const/4 v5, 0x1

    .line 114
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$1;->val$info:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;

    if-eqz v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$1;->val$info:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;->access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;)Lorg/json/JSONObject;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 123
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    const-string v1, "data"

    .line 125
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 132
    :goto_0
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v0

    :catch_0
    move-object v2, v0

    :catch_1
    :goto_1
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-void
.end method
