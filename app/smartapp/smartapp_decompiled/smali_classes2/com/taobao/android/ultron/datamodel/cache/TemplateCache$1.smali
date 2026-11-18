.class Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$1;
.super Landroid/os/AsyncTask;
.source "TemplateCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;->saveTemplate(Ljava/lang/String;[B)V
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
.field final synthetic this$0:Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;

.field final synthetic val$finalBytes:[B

.field final synthetic val$templateId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;Ljava/lang/String;[B)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$1;->this$0:Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;

    iput-object p2, p0, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$1;->val$templateId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$1;->val$finalBytes:[B

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 147
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .line 150
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$1;->val$templateId:Ljava/lang/String;

    .line 153
    const-class v0, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;

    monitor-enter v0

    .line 154
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$1;->this$0:Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;

    iget-object v2, v2, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;->rootDir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 156
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$1;->this$0:Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;

    iget-object v3, p0, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$1;->val$finalBytes:[B

    invoke-static {p1, v3, v1}, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;->access$600(Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;[BLjava/io/File;)Ljava/io/File;

    .line 160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_0

    .line 164
    :try_start_1
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$1;->this$0:Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;

    iget-object p1, p1, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache;->fileCache:Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;

    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/TemplateCache$1;->val$templateId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->store(Ljava/lang/String;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TemplateCache"

    const-string v1, "File cache store exception"

    .line 166
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v2

    .line 158
    :cond_1
    :try_start_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 160
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
