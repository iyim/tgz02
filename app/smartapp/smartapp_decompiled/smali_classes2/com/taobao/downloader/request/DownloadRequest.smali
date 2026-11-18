.class public Lcom/taobao/downloader/request/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# instance fields
.field public downloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/downloader/request/Item;",
            ">;"
        }
    .end annotation
.end field

.field public downloadParam:Lcom/taobao/downloader/request/Param;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/taobao/downloader/request/Item;

    invoke-direct {v0}, Lcom/taobao/downloader/request/Item;-><init>()V

    .line 24
    iput-object p1, v0, Lcom/taobao/downloader/request/Item;->url:Ljava/lang/String;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/taobao/downloader/request/DownloadRequest;->downloadList:Ljava/util/List;

    .line 26
    iget-object p1, p0, Lcom/taobao/downloader/request/DownloadRequest;->downloadList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance p1, Lcom/taobao/downloader/request/Param;

    invoke-direct {p1}, Lcom/taobao/downloader/request/Param;-><init>()V

    iput-object p1, p0, Lcom/taobao/downloader/request/DownloadRequest;->downloadParam:Lcom/taobao/downloader/request/Param;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/downloader/request/DownloadRequest;->downloadList:Ljava/util/List;

    .line 34
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 35
    new-instance v3, Lcom/taobao/downloader/request/Item;

    invoke-direct {v3}, Lcom/taobao/downloader/request/Item;-><init>()V

    .line 36
    iput-object v2, v3, Lcom/taobao/downloader/request/Item;->url:Ljava/lang/String;

    .line 37
    iget-object v2, p0, Lcom/taobao/downloader/request/DownloadRequest;->downloadList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Lcom/taobao/downloader/request/Param;

    invoke-direct {p1}, Lcom/taobao/downloader/request/Param;-><init>()V

    iput-object p1, p0, Lcom/taobao/downloader/request/DownloadRequest;->downloadParam:Lcom/taobao/downloader/request/Param;

    return-void
.end method


# virtual methods
.method public validate()Z
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/taobao/downloader/request/DownloadRequest;->downloadParam:Lcom/taobao/downloader/request/Param;

    const-string v1, "downloader"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/taobao/downloader/request/DownloadRequest;->downloadList:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/taobao/downloader/request/DownloadRequest;->downloadParam:Lcom/taobao/downloader/request/Param;

    iget-object v0, v0, Lcom/taobao/downloader/request/Param;->fileStorePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "lack of store path"

    invoke-static {v1, v3, v0}, Lcom/taobao/downloader/util/LogUtil;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/taobao/downloader/request/DownloadRequest;->downloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/downloader/request/Item;

    .line 58
    iget-object v3, v3, Lcom/taobao/downloader/request/Item;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "lack of download url"

    invoke-static {v1, v3, v0}, Lcom/taobao/downloader/util/LogUtil;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 64
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/taobao/downloader/request/DownloadRequest;->downloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/downloader/request/Item;

    .line 66
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 67
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_5
    iput-object v0, p0, Lcom/taobao/downloader/request/DownloadRequest;->downloadList:Ljava/util/List;

    const/4 v0, 0x1

    return v0

    .line 48
    :cond_6
    :goto_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "param is not complete"

    invoke-static {v1, v3, v0}, Lcom/taobao/downloader/util/LogUtil;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
