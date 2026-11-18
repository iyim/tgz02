.class Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;
.super Landroid/os/AsyncTask;
.source "TemplateCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;->fetchTemplateFromRemote(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;)[B
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;

.field final synthetic val$finalBytes:[B

.field final synthetic val$perfInfo:Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;

.field final synthetic val$template:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

.field final synthetic val$templateId:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;Ljava/lang/String;Ljava/lang/String;[BLcom/taobao/android/dinamic/tempate/DinamicTemplate;Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;->this$0:Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;

    iput-object p2, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;->val$templateId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;->val$finalBytes:[B

    iput-object p5, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;->val$template:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    iput-object p6, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;->val$perfInfo:Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 189
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .line 193
    iget-object p1, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;->this$0:Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;

    iget-boolean p1, p1, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;->useTemplateIdAsFileName:Z

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;->val$templateId:Ljava/lang/String;

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;->val$url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 200
    :goto_0
    const-class v0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;

    monitor-enter v0

    .line 201
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;->this$0:Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;

    iget-object v2, v2, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;->rootDir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 203
    iget-object p1, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;->this$0:Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;

    iget-object v3, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;->val$finalBytes:[B

    iget-object v4, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;->val$template:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    iget-object v5, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;->val$perfInfo:Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;

    iget-object v5, v5, Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;->module:Ljava/lang/String;

    invoke-static {p1, v3, v1, v4, v5}, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;->access$600(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;[BLjava/io/File;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Ljava/lang/String;)Ljava/io/File;

    .line 207
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    .line 211
    :try_start_1
    iget-object p1, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;->this$0:Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;

    iget-object p1, p1, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;->fileCache:Lcom/taobao/android/dinamic/tempate/db/FileCache;

    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;->val$templateId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/taobao/android/dinamic/tempate/db/FileCache;->store(Ljava/lang/String;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "TemplateCache"

    const-string v1, "File cache store exception"

    .line 213
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object v2

    .line 205
    :cond_2
    :try_start_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 207
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
