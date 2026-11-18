.class public Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;
.super Ljava/lang/Object;
.source "MarketClientTaskMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$DownloadTaskMgrHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadTaskMgr-l"

.field private static mContext:Landroid/content/Context;

.field private static final ourInstance:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;


# instance fields
.field disconnectListener:Lcom/alibaba/genie/market/task/OnServerDisconnectListener;

.field private mDownloadInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/genie/market/task/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    invoke-direct {v0}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;-><init>()V

    sput-object v0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->ourInstance:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mDownloadInfo:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mDownloadListener:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;)Ljava/util/HashMap;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mDownloadInfo:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->installFaildCallback(Ljava/lang/String;ILjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;ILjava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->onInstallProgress(ILjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->setDownloadState(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->installSuccessCallback(ILjava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 54
    sget-object v0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getCountInstallSize(I)I
    .locals 4

    const/4 v0, 0x0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mDownloadInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 191
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/genie/market/task/DownloadInfo;

    iget v3, v3, Lcom/alibaba/genie/market/task/DownloadInfo;->size:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    add-int/2addr v2, p1

    return v2

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;
    .locals 0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$DownloadTaskMgrHolder;->access$000()Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    move-result-object p0

    return-object p0
.end method

.method private installFaildCallback(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 203
    iget-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mDownloadListener:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    .line 204
    new-instance v0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$3;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$3;-><init>(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private installSuccessCallback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 220
    iget-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mDownloadListener:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    .line 221
    new-instance v0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$4;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$4;-><init>(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onInstallProgress(ILjava/lang/String;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mDownloadListener:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    new-instance v1, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$5;-><init>(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;Ljava/util/ArrayList;I)V

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 250
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->setDownloadProgress(Ljava/lang/String;I)V

    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 251
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->setDownloadState(Ljava/lang/String;I)V

    return-void
.end method

.method private setDownloadProgress(Ljava/lang/String;I)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mDownloadInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/market/task/DownloadInfo;

    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/market/task/DownloadInfo;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private setDownloadState(Ljava/lang/String;I)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mDownloadInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/market/task/DownloadInfo;

    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/market/task/DownloadInfo;->setState(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public downloadAndInstall(Ljava/lang/String;ILcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->disconnectListener:Lcom/alibaba/genie/market/task/OnServerDisconnectListener;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$1;-><init>(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;)V

    iput-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->disconnectListener:Lcom/alibaba/genie/market/task/OnServerDisconnectListener;

    .line 87
    :cond_0
    invoke-static {}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->getInstance(Landroid/content/Context;)Lcom/alibaba/genie/market/task/MarketIpcClientMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->disconnectListener:Lcom/alibaba/genie/market/task/OnServerDisconnectListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->setOnServerDisconnectListener(Lcom/alibaba/genie/market/task/OnServerDisconnectListener;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mDownloadListener:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const-string v1, "DownloadTaskMgr-l"

    if-eqz p3, :cond_6

    .line 93
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add to listeners url == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object p3, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mDownloadListener:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-direct {p0, p2}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->getCountInstallSize(I)I

    move-result p3

    invoke-static {p3}, Lcom/alibaba/genie/market/util/ClientTaskUtil;->isSdCardFreeEnough(I)Z

    move-result p3

    if-nez p3, :cond_2

    const p2, -0x186e7

    const-string p3, "\u7cfb\u7edf\u53ef\u7528\u7a7a\u95f4\u4e0d\u8db3"

    .line 105
    invoke-direct {p0, p3, p2, p1}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->installFaildCallback(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 109
    :cond_2
    iget-object p3, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mDownloadInfo:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const/4 v1, 0x1

    if-eqz p3, :cond_4

    .line 111
    iget-object p2, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mDownloadInfo:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/genie/market/task/DownloadInfo;

    invoke-virtual {p2}, Lcom/alibaba/genie/market/task/DownloadInfo;->getState()I

    move-result p2

    if-ne p2, v1, :cond_3

    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    .line 114
    iget-object v1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mDownloadInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/market/task/DownloadInfo;

    invoke-virtual {v1}, Lcom/alibaba/genie/market/task/DownloadInfo;->getProgress()I

    move-result v1

    invoke-interface {p3, v1}, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;->onDownloadProgress(I)V

    goto :goto_0

    .line 118
    :cond_3
    iget-object p2, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mDownloadInfo:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/genie/market/task/DownloadInfo;

    invoke-virtual {p2}, Lcom/alibaba/genie/market/task/DownloadInfo;->getState()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_5

    if-eqz v0, :cond_5

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    const/16 v0, 0x64

    .line 121
    invoke-interface {p3, v0}, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;->onDownloadProgress(I)V

    goto :goto_1

    .line 127
    :cond_4
    new-instance p3, Lcom/alibaba/genie/market/task/DownloadInfo;

    const/4 v0, -0x1

    invoke-direct {p3, p1, p2, v0, v1}, Lcom/alibaba/genie/market/task/DownloadInfo;-><init>(Ljava/lang/String;III)V

    .line 128
    iget-object p2, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->mDownloadInfo:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 130
    invoke-direct {p0, p2, p1}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->onInstallProgress(ILjava/lang/String;)V

    .line 133
    :cond_5
    invoke-static {}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->getInstance(Landroid/content/Context;)Lcom/alibaba/genie/market/task/MarketIpcClientMgr;

    move-result-object p2

    new-instance p3, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;

    invoke-direct {p3, p0, p1}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;-><init>(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;Ljava/lang/String;)V

    invoke-virtual {p2, p1, p3}, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->download(Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketDownloadListener;)V

    return-void

    .line 97
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "count is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "callback already in skip listeners url == "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public downloadAndInstall(Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V
    .locals 2

    .line 177
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "downloadUrl"

    .line 178
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "installSize"

    .line 179
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 180
    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->downloadAndInstall(Ljava/lang/String;ILcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const v0, -0x186c9

    const-string v1, "\u6dfb\u52a0\u4e0b\u8f7d\u4efb\u52a1\u5f02\u5e38"

    .line 182
    invoke-interface {p2, v1, v0}, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;->onInstallFailed(Ljava/lang/String;I)V

    .line 183
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
