.class public Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;
.super Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
.source "MediaListModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$ReverseRequestData;,
        Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CurrentRequestData;,
        Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CollectRequestData;,
        Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$HistoryRequestData;
    }
.end annotation


# static fields
.field public static final API_VER:Ljava/lang/String; = "1.0"


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private API_NAME_CLEAR:Ljava/lang/String;

.field private API_NAME_COLLECT:Ljava/lang/String;

.field private API_NAME_CURRENT:Ljava/lang/String;

.field private API_NAME_REVERSE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private collectMutableLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentMutableLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
            ">;>;"
        }
    .end annotation
.end field

.field private historyMutableLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
            ">;>;"
        }
    .end annotation
.end field

.field public reverseStatus:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private totalCount:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;-><init>()V

    const-string v0, "MediaListModel"

    .line 46
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->TAG:Ljava/lang/String;

    const-string v0, "mtop.alibaba.aicloud.t.videoSource.getAllUserPlayerHistoryV3"

    .line 47
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->API_NAME:Ljava/lang/String;

    const-string v0, "mtop.alibaba.aicloud.t.content.getAllFavoriteListV2"

    .line 48
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->API_NAME_COLLECT:Ljava/lang/String;

    const-string v0, "mtop.alibaba.aicloud.t.music.playlist.getPlayinglist"

    .line 49
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->API_NAME_CURRENT:Ljava/lang/String;

    const-string v0, "mtop.alibaba.aicloud.t.music.playlist.setReverseOrder"

    .line 50
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->API_NAME_REVERSE:Ljava/lang/String;

    const-string v0, "mtop.alibaba.aicloud.t.content.deleteAllHistoryByParam"

    .line 54
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->API_NAME_CLEAR:Ljava/lang/String;

    .line 58
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->historyMutableLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 64
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->currentMutableLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 74
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->totalCount:Landroid/arch/lifecycle/MutableLiveData;

    .line 81
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->collectMutableLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 91
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->reverseStatus:Landroid/arch/lifecycle/MutableLiveData;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->API_NAME:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->historyMutableLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->API_NAME_COLLECT:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->collectMutableLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->totalCount:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->API_NAME_CURRENT:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->currentMutableLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->API_NAME_CLEAR:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->API_NAME_REVERSE:Ljava/lang/String;

    return-object p0
.end method

.method private requestMusicCollect(ILjava/lang/String;)V
    .locals 3

    .line 238
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 239
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->API_NAME_COLLECT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 240
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 242
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CollectRequestData;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CollectRequestData;-><init>()V

    .line 243
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CollectRequestData;->authInfo:Ljava/lang/String;

    const-string v2, "program"

    .line 244
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "story"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "CONTENT"

    .line 247
    iput-object v2, v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CollectRequestData;->packageType:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "ALBUM"

    .line 245
    iput-object v2, v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CollectRequestData;->packageType:Ljava/lang/String;

    .line 249
    :goto_1
    iput-object p2, v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CollectRequestData;->audioType:Ljava/lang/String;

    .line 250
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CollectRequestData;->pageNum:Ljava/lang/String;

    const-string p2, "30"

    .line 251
    iput-object p2, v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CollectRequestData;->pageSize:Ljava/lang/String;

    .line 252
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CollectRequestData;->pageNum:Ljava/lang/String;

    const-string p2, "tmallGenie"

    .line 253
    iput-object p2, v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CollectRequestData;->favBizCode:Ljava/lang/String;

    .line 254
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 255
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestData = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "MediaListModel"

    invoke-static {v2, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "requestMusicCollect"

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance p2, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p2, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;I)V

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 294
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method private requestMusicCurrent(ILjava/lang/String;)V
    .locals 3

    .line 299
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 300
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->API_NAME_CURRENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 301
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 303
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CurrentRequestData;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CurrentRequestData;-><init>()V

    .line 304
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CurrentRequestData;->authInfo:Ljava/lang/String;

    .line 305
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CurrentRequestData;->pageNum:Ljava/lang/String;

    const-string p1, "30"

    .line 306
    iput-object p1, v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CurrentRequestData;->pageSize:Ljava/lang/String;

    .line 307
    iput-object p2, v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$CurrentRequestData;->type:Ljava/lang/String;

    .line 308
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 309
    new-instance p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$4;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$4;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 348
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 349
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method private requestMusicHistory(ILjava/lang/String;)V
    .locals 3

    .line 183
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->API_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 185
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 187
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$HistoryRequestData;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$HistoryRequestData;-><init>()V

    .line 188
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$HistoryRequestData;->authInfo:Ljava/lang/String;

    const-string v2, "content-audio"

    .line 189
    iput-object v2, v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$HistoryRequestData;->firstType:Ljava/lang/String;

    .line 190
    iput-object p2, v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$HistoryRequestData;->audioType:Ljava/lang/String;

    const-string p2, "30"

    .line 191
    iput-object p2, v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$HistoryRequestData;->pageSize:Ljava/lang/String;

    .line 192
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$HistoryRequestData;->pageNum:Ljava/lang/String;

    .line 193
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestData = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "MediaListModel"

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance p2, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p2, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;I)V

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 233
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method


# virtual methods
.method public clearHistory(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 356
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->showLoading(Z)V

    .line 357
    new-instance v1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 358
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->API_NAME_CLEAR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 359
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 361
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$HistoryRequestData;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$HistoryRequestData;-><init>()V

    .line 362
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$HistoryRequestData;->authInfo:Ljava/lang/String;

    const-string v3, "content-audio"

    .line 363
    iput-object v3, v2, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$HistoryRequestData;->firstType:Ljava/lang/String;

    .line 364
    iput-object p1, v2, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$HistoryRequestData;->audioType:Ljava/lang/String;

    .line 365
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 366
    new-instance p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p1, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$5;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$5;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)V

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    .line 379
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 380
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public createList(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;)V
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "MediaListModel"

    const-string p2, "createList, metadataCompat is null, return"

    .line 108
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;-><init>()V

    .line 112
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 113
    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_HISTORY:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    const-string v3, "pos"

    const-string v4, "source"

    const-string v5, "audioType"

    if-ne p3, v2, :cond_1

    .line 114
    invoke-virtual {v1, v5, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getFirstType()Ljava/lang/String;

    move-result-object p2

    const-string p3, "firstType"

    invoke-virtual {v1, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getSecondType()Ljava/lang/String;

    move-result-object p2

    const-string p3, "secondType"

    invoke-virtual {v1, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPlayFrom()Ljava/lang/String;

    move-result-object p2

    const-string p3, "playFrom"

    invoke-virtual {v1, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getSource()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v4, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 120
    :cond_1
    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    if-ne p3, v2, :cond_2

    .line 121
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/PlayByIndex;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/PlayByIndex;-><init>()V

    .line 123
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 124
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/PlayByIndex;->play(I)V

    return-void

    .line 126
    :cond_2
    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_COLLECT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    if-ne p3, v2, :cond_3

    const-string p3, "type"

    const-string v2, "playFavorite"

    .line 127
    invoke-virtual {v1, p3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPackageType()Ljava/lang/String;

    move-result-object p3

    const-string v2, "packageType"

    invoke-virtual {v1, v2, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getSource()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v4, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPosition()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, v3, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {v1, v5, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getRawId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "itemId"

    invoke-virtual {v1, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)V

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;->createList(Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method

.method public getCollectMutableLiveData()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
            ">;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->collectMutableLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCurrentMutableLiveData()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
            ">;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->currentMutableLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getHistoryMutableLiveData()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
            ">;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->historyMutableLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getReverseStatus()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->reverseStatus:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTotalCount()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->totalCount:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public requestData(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;ILjava/lang/String;)V
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",pageNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",itemType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestData"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_HISTORY:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    if-ne p1, v0, :cond_0

    .line 98
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->requestMusicHistory(ILjava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    if-ne p1, v0, :cond_1

    .line 100
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->requestMusicCurrent(ILjava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_COLLECT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    if-ne p1, v0, :cond_2

    .line 102
    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->requestMusicCollect(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reverse(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 387
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->showLoading(Z)V

    .line 388
    new-instance v1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 389
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->API_NAME_REVERSE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 390
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 392
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$ReverseRequestData;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$ReverseRequestData;-><init>()V

    .line 393
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$ReverseRequestData;->authInfo:Ljava/lang/String;

    .line 394
    iput-object p1, v2, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$ReverseRequestData;->type:Ljava/lang/String;

    .line 395
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 396
    new-instance p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p1, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$6;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$6;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;)V

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    .line 435
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 436
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public setTotalCount(Landroid/arch/lifecycle/MutableLiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->totalCount:Landroid/arch/lifecycle/MutableLiveData;

    return-void
.end method
