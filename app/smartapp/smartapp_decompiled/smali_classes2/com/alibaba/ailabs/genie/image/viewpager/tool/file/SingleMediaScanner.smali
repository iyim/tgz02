.class public Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner;
.super Ljava/lang/Object;
.source "SingleMediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner$ScanListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner$ScanListener;

.field private mMs:Landroid/media/MediaScannerConnection;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner$ScanListener;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner;->path:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner;->listener:Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner$ScanListener;

    .line 23
    new-instance p2, Landroid/media/MediaScannerConnection;

    invoke-direct {p2, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner;->mMs:Landroid/media/MediaScannerConnection;

    .line 24
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner;->mMs:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner;->mMs:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner;->path:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner;->mMs:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 35
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner;->listener:Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner$ScanListener;

    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/SingleMediaScanner$ScanListener;->onScanFinish()V

    :cond_0
    return-void
.end method
