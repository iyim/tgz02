.class public Lcom/taobao/downloader/adpater/impl/SimpleDownloadFactory;
.super Ljava/lang/Object;
.source "SimpleDownloadFactory.java"

# interfaces
.implements Lcom/taobao/downloader/adpater/DownloadFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDownloader(Lcom/taobao/downloader/request/Param;)Lcom/taobao/downloader/download/IDownloader;
    .locals 1

    .line 17
    iget p1, p1, Lcom/taobao/downloader/request/Param;->downloadStrategy:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 18
    new-instance p1, Lcom/taobao/downloader/download/impl/DMDownloader;

    invoke-direct {p1}, Lcom/taobao/downloader/download/impl/DMDownloader;-><init>()V

    return-object p1

    .line 20
    :cond_0
    new-instance p1, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;

    invoke-direct {p1}, Lcom/taobao/downloader/download/impl2/DefaultDownloader2;-><init>()V

    return-object p1
.end method
