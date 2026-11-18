.class Lcom/uc/webview/export/cyclone/update/UrlDownloader$2;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/uc/webview/export/cyclone/update/UrlDownloader;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/cyclone/update/UrlDownloader;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$2;->this$0:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$2;->this$0:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :try_start_1
    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$2;->this$0:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    invoke-static {v1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->access$100(Lcom/uc/webview/export/cyclone/update/UrlDownloader;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$2;->this$0:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    .line 165
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->access$200(Lcom/uc/webview/export/cyclone/update/UrlDownloader;)Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;

    move-result-object v2

    .line 164
    invoke-static {v1, v2}, Lcom/uc/webview/export/cyclone/update/Utils;->deleteAll(Ljava/io/File;Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;)V

    .line 166
    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$2;->this$0:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    invoke-static {v1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->access$300(Lcom/uc/webview/export/cyclone/update/UrlDownloader;)Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;

    move-result-object v1

    invoke-interface {v1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;->onDownloadFileDeleted()V

    .line 167
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 169
    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$2;->this$0:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    const-string v2, "delete failed"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->access$000(Lcom/uc/webview/export/cyclone/update/UrlDownloader;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
