.class Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/cyclone/update/UrlDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadThread"
.end annotation


# static fields
.field private static final THREAD_NAME:Ljava/lang/String; = "UCBS-Update."


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mThread:Landroid/os/HandlerThread;

.field final synthetic this$0:Lcom/uc/webview/export/cyclone/update/UrlDownloader;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/cyclone/update/UrlDownloader;Ljava/lang/String;)V
    .locals 2

    .line 67
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;->this$0:Lcom/uc/webview/export/cyclone/update/UrlDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance p1, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UCBS-Update."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;->mThread:Landroid/os/HandlerThread;

    .line 70
    iget-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Thread;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;->mThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
