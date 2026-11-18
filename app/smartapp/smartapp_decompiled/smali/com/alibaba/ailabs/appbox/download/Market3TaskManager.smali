.class public Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;
.super Ljava/lang/Object;
.source "Market3TaskManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Market3TaskManager-tag"

.field private static final instance:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;


# instance fields
.field private disconnectListener:Lcom/alibaba/genie/market/task/OnServerDisconnectListener;

.field private mBeanHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/appbox/download/DownloadBean;",
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

    .line 51
    new-instance v0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->instance:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadListener:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mBeanHashMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;ILjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->onInstallProgress(ILjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->installApk(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->installFailedCallback(Ljava/lang/String;ILjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)Ljava/util/HashMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mBeanHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->collect(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;ILjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->installSuccessCallback(ILjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)Ljava/util/HashMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadListener:Ljava/util/HashMap;

    return-object p0
.end method

.method private addListener(Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)Z
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadListener:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Market3TaskManager-tag"

    if-nez v1, :cond_1

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add to listeners url == "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\uff0clistener\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadListener:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1

    .line 191
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "skip listeners url == "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private checkStorage(Ljava/lang/String;ILcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;Ljava/lang/String;Z)Z
    .locals 1

    .line 164
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getDownloadInfo(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/download/DownloadBean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->isStorageNotEnough(Ljava/lang/String;ILcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "Market3TaskManager-tag"

    const-string v0, "check isStorageNotEnough is true return..."

    .line 167
    invoke-static {p3, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p4, p2}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportInstallStorageNotEnoughEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private collect(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;I)V
    .locals 3

    .line 362
    new-instance v0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$7;-><init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;I)V

    .line 382
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "market_action_install"

    .line 362
    invoke-static {p1, v0, p2, v1, v2}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->collectApplet2(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private downloadApk(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 8

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadListener:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 201
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "downloadApk url:"

    const-string v3, "Market3TaskManager-tag"

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 202
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/download/DownloadBean;

    .line 203
    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->getState()I

    move-result v1

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",status:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    .line 210
    iget-object p4, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/alibaba/ailabs/appbox/download/DownloadBean;

    invoke-virtual {p4}, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->getProgress()I

    move-result p4

    invoke-interface {p3, p4}, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;->onDownloadProgress(I)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    if-ne v1, v4, :cond_4

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 217
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    .line 218
    iget-object p4, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/alibaba/ailabs/appbox/download/DownloadBean;

    invoke-virtual {p4}, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->getProgress()I

    move-result p4

    invoke-interface {p3, p4}, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;->onDownloadProgress(I)V

    goto :goto_1

    :cond_2
    return-void

    .line 226
    :cond_3
    new-instance v0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;

    const/4 v1, -0x1

    invoke-direct {v0, p1, p2, v1, v4}, Lcom/alibaba/ailabs/appbox/download/DownloadBean;-><init>(Ljava/lang/String;III)V

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",add download info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->onInstallProgress(ILjava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->getInstance(Landroid/content/Context;)Lcom/alibaba/genie/market/task/MarketIpcClientMgr;

    move-result-object v0

    new-instance v7, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$4;-><init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-virtual {v0, p1, v7}, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->download(Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketDownloadListener;)V

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;
    .locals 1

    .line 54
    sget-object v0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->instance:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    return-object v0
.end method

.method private installApk(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 273
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->getInstance(Landroid/content/Context;)Lcom/alibaba/genie/market/task/MarketIpcClientMgr;

    move-result-object v0

    new-instance v8, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;-><init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-virtual {v0, p1, p3, v8}, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->installApk(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketInstallListener;)V

    return-void
.end method

.method private installFailedCallback(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installFailedCallback msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",retCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Market3TaskManager-tag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    new-instance v0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;-><init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private installSuccessCallback(ILjava/lang/String;)V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadListener:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 408
    new-instance v1, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$8;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$8;-><init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Ljava/util/ArrayList;Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isStorageNotEnough(Ljava/lang/String;ILcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;Ljava/lang/String;Z)Z
    .locals 4

    .line 316
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->getAllDownloadSize()I

    move-result v0

    add-int/2addr v0, p2

    .line 319
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isSdCardFreeEnough(I)Z

    move-result p2

    const/4 v1, 0x1

    const-string v2, "on finish is "

    const-string v3, "downloadAndInstallApk"

    if-nez p2, :cond_2

    if-eqz p3, :cond_0

    .line 321
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",listener:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p1, -0x186e7

    const-string/jumbo p2, "\u53ef\u7528\u7a7a\u95f4\u4e0d\u8db3"

    .line 322
    invoke-interface {p3, p2, p1}, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;->onInstallFailed(Ljava/lang/String;I)V

    :cond_0
    if-eqz p5, :cond_1

    .line 325
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->getInstance()Lcom/alibaba/ailabs/appbox/utils/AppManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->showSDCardNotenoughDialog()V

    :cond_1
    return v1

    :cond_2
    const-string p2, "false"

    .line 330
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 331
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isUserStorgeEnough(I)Z

    move-result p2

    if-nez p2, :cond_5

    if-eqz p3, :cond_3

    .line 333
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p1, -0x186f1

    const-string/jumbo p2, "\u7528\u6237\u7a7a\u95f4\u4e0d\u8db3"

    .line 334
    invoke-interface {p3, p2, p1}, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;->onInstallFailed(Ljava/lang/String;I)V

    :cond_3
    if-eqz p5, :cond_4

    .line 337
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->getInstance()Lcom/alibaba/ailabs/appbox/utils/AppManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->showSDCardNotenoughDialog()V

    :cond_4
    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private onInstallProgress(ILjava/lang/String;)V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadListener:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    new-instance v1, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$6;-><init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Ljava/util/ArrayList;I)V

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 357
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->setDownloadProgress(Ljava/lang/String;I)V

    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 358
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->setDownloadState(Ljava/lang/String;I)V

    return-void
.end method

.method private setDisconnectListener()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->disconnectListener:Lcom/alibaba/genie/market/task/OnServerDisconnectListener;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$3;-><init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->disconnectListener:Lcom/alibaba/genie/market/task/OnServerDisconnectListener;

    .line 160
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->getInstance(Landroid/content/Context;)Lcom/alibaba/genie/market/task/MarketIpcClientMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->disconnectListener:Lcom/alibaba/genie/market/task/OnServerDisconnectListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->setOnServerDisconnectListener(Lcom/alibaba/genie/market/task/OnServerDisconnectListener;)V

    return-void
.end method


# virtual methods
.method public clearAllListener()V
    .locals 2

    const-string v0, "Market3TaskManager-tag"

    const-string v1, "clearAllListener"

    .line 521
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadListener:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 525
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public downloadAndInstall(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;ZLcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V
    .locals 8

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mBeanHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getInstallSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getUninstallable()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object v5, p3

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->downloadAndInstall(Ljava/lang/String;ILcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;Ljava/lang/String;Z)V

    return-void
.end method

.method public downloadAndInstall(Ljava/lang/String;ILcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;Ljava/lang/String;Z)V
    .locals 6

    if-nez p3, :cond_0

    .line 120
    new-instance p3, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$2;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$2;-><init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)V

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->setDisconnectListener()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 139
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->checkStorage(Ljava/lang/String;ILcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 144
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->addListener(Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)Z

    move-result p3

    if-eqz p3, :cond_2

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 148
    :cond_2
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->downloadApk(Ljava/lang/String;ILjava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public downloadAndInstallOpen(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;ZLcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V
    .locals 1

    .line 62
    new-instance v0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$1;

    invoke-direct {v0, p0, p4, p2}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$1;-><init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p1, p3, v0}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->downloadAndInstall(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;ZLcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V

    return-void
.end method

.method public getAllDownloadSize()I
    .locals 5

    .line 489
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 493
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    .line 494
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 495
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 496
    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/download/DownloadBean;

    .line 497
    iget v3, v3, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->size:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v3

    goto :goto_0

    .line 503
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllDownloadSize is --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAllDownloadSize"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catch_0
    :cond_2
    :goto_1
    return v1
.end method

.method public getDownloadInfo(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/download/DownloadBean;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/download/DownloadBean;

    :goto_0
    return-object p1
.end method

.method public isUrlInDownload(Ljava/lang/String;)Z
    .locals 3

    .line 512
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 515
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUrlInDownload url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mDownloadInfo.get(url):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0cthread:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Market3TaskManager-tag"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onServerDisconnect()V
    .locals 6

    const-string v0, "Market3TaskManager-tag"

    :try_start_0
    const-string v1, "onServerDisconnect download process has been kill ... "

    .line 467
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 469
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 471
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/download/DownloadBean;

    const-string/jumbo v3, "\u4e0b\u8f7d\u5f02\u5e38"

    const v4, -0x186dd

    .line 472
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->installFailedCallback(Ljava/lang/String;ILjava/lang/String;)V

    .line 477
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportInstallServerDisconnectEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServerDisconnect download process has been kill call back Execption ... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public removeListener(Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V
    .locals 2

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeListener url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Market3TaskManager-tag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadListener:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadListener:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 534
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 537
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo p1, "removeListener -- "

    .line 538
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDownloadProgress(Ljava/lang/String;I)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/download/DownloadBean;

    if-eqz p1, :cond_0

    .line 461
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public setDownloadState(Ljava/lang/String;I)V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->mDownloadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/download/DownloadBean;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/appbox/download/DownloadBean;->setState(I)V

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDownloadState downloadUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",state:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",thread:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Market3TaskManager-tag"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
