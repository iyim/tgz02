.class Lcom/taobao/downloader/download/impl/DMDownloader$1;
.super Landroid/database/ContentObserver;
.source "DMDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/downloader/download/impl/DMDownloader;->download(Lcom/taobao/downloader/request/task/SingleTask;Lcom/taobao/downloader/download/IListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/downloader/download/impl/DMDownloader;


# direct methods
.method constructor <init>(Lcom/taobao/downloader/download/impl/DMDownloader;Landroid/os/Handler;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/taobao/downloader/download/impl/DMDownloader$1;->this$0:Lcom/taobao/downloader/download/impl/DMDownloader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/taobao/downloader/download/impl/DMDownloader$1;->this$0:Lcom/taobao/downloader/download/impl/DMDownloader;

    invoke-static {p1}, Lcom/taobao/downloader/download/impl/DMDownloader;->access$000(Lcom/taobao/downloader/download/impl/DMDownloader;)V

    return-void
.end method
