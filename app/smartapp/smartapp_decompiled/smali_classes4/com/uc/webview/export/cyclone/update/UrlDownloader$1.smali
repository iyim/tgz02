.class Lcom/uc/webview/export/cyclone/update/UrlDownloader$1;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/cyclone/update/UrlDownloader;Ljava/lang/Runnable;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$1;->this$0:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    iput-object p2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$1;->this$0:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :try_start_1
    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 149
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

    .line 151
    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$1;->this$0:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    const-string v2, "stopWith failed"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->access$000(Lcom/uc/webview/export/cyclone/update/UrlDownloader;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
