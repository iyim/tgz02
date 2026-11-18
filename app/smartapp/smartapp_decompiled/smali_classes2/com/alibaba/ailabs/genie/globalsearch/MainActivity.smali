.class public Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$SearchInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"

.field static productMode:Ljava/lang/String;


# instance fields
.field private hasCacheData:Z

.field private hasOnResumed:Z

.field private loading:Landroid/view/View;

.field private searchHeader:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

.field private searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

.field private shouldReportUtOnResume:Z

.field private tabViewManager:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->hasCacheData:Z

    .line 47
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->hasOnResumed:Z

    .line 48
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->shouldReportUtOnResume:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;)Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchHeader:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;)Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->tabViewManager:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    return-object p0
.end method

.method private isApkInDebug(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 350
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 351
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private isChildrenModel()Z
    .locals 3

    .line 359
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->productMode:Ljava/lang/String;

    const-string v1, "unknown"

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "ro.product.model"

    .line 360
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->productMode:Ljava/lang/String;

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " productMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->productMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_1
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->productMode:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "AILABS_S7A02"

    .line 364
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method getHotList()V
    .locals 4

    .line 195
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->isChildrenModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchHeader:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->focusOnEdit()V

    .line 197
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->inputPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->setPageState(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)V

    goto :goto_1

    .line 199
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/request/FrontPageInfoRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/globalsearch/request/FrontPageInfoRequest;-><init>()V

    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/-$$Lambda$MainActivity$IpFLhfV0ev7qSzwSG5mdslKdcFg;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/-$$Lambda$MainActivity$IpFLhfV0ev7qSzwSG5mdslKdcFg;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/request/FrontPageInfoRequest;->request(Landroid/content/Context;Ljava/util/function/Function;)V

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "hotList"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    :try_start_0
    const-class v2, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;

    .line 225
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->hasCacheData:Z

    .line 226
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->showHotList(Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;)V
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cached Hot List JsonParseException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MAIN"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasCacheData: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->hasCacheData:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MainActivity"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->hasCacheData:Z

    if-nez v0, :cond_2

    .line 233
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->showLoading(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method getSearchResultTest()V
    .locals 2

    const-string v0, " start showSearchResult "

    .line 239
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->t(Ljava/lang/String;)V

    .line 240
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JsonDataUtil;->getSearchResult(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " read json over "

    .line 241
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->t(Ljava/lang/String;)V

    .line 242
    const-class v1, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    const-string v0, " parse json over "

    .line 243
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->t(Ljava/lang/String;)V

    return-void
.end method

.method initBackEvent()V
    .locals 2

    .line 66
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->icon_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/-$$Lambda$MainActivity$Rx9Ruc9EUVW6XmW9kTT4GrQjwsg;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/-$$Lambda$MainActivity$Rx9Ruc9EUVW6XmW9kTT4GrQjwsg;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method initPageStateChangedEvent()V
    .locals 2

    .line 120
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/-$$Lambda$MainActivity$dmsc3LK7VDu0AqrVTvpD1Va446k;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/-$$Lambda$MainActivity$dmsc3LK7VDu0AqrVTvpD1Va446k;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->addOnPageStateChanged(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$OnPageStateChanged;)V

    return-void
.end method

.method initSearchHeader()V
    .locals 2

    .line 88
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->searchHeader:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchHeader:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchHeader:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity$1;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->setSearchEvent(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$SearchEvent;)V

    return-void
.end method

.method public synthetic lambda$getHotList$24$MainActivity(Lcom/alibaba/ailabs/genie/globalsearch/response/FrontPageInfoResponse;)Ljava/lang/Void;
    .locals 2

    .line 200
    sget-boolean v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->isDebug:Z

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " FrontPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getPageState()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAIN"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getPageState()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->hotListPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->hasCacheData:Z

    if-nez v0, :cond_3

    .line 204
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getPageState()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->loading:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    if-ne v0, v1, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    .line 205
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/response/FrontPageInfoResponse;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 206
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/response/FrontPageInfoResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;

    .line 207
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->showHotList(Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;)V

    .line 208
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity$2;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 214
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->hasCacheData:Z

    if-nez p1, :cond_3

    .line 215
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JsonDataUtil;->getHotList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->showHotList(Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$initBackEvent$22$MainActivity(Landroid/view/View;)V
    .locals 1

    .line 67
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getPageState()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    move-result-object p1

    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->inputPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    if-ne p1, v0, :cond_1

    .line 68
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchHeader:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->hideInputMethod()V

    .line 69
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->isChildrenModel()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getLastPageState()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->isSearchResultPage(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->finish()V

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object p1

    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getLastPageState()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->setPageState(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->tabViewManager:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->canBackOnePage()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 77
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchHeader:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->setQueryWord(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchHeader:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->setTabListVisible(Z)V

    .line 79
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object p1

    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->hotListPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->setPageState(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->finish()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initPageStateChangedEvent$23$MainActivity(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->tabViewManager:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->refreshPageUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)V

    .line 122
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->isSearchResultPage(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    if-eqz p1, :cond_2

    .line 124
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getResult()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->setHasExposed(Z)V

    .line 128
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getDataList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 130
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->setHasExposed(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public synthetic lambda$searchByString$25$MainActivity(Lcom/alibaba/ailabs/genie/globalsearch/response/GlobalSearchResponse;)Ljava/lang/Void;
    .locals 2

    if-nez p1, :cond_0

    .line 293
    new-instance p1, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    .line 294
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    const/16 v0, 0xcc

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->setCode(I)V

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/response/GlobalSearchResponse;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    .line 297
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/response/GlobalSearchResponse;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->setCode(I)V

    .line 301
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->setFromVoice(Z)V

    .line 302
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->showSearchResult()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "MainActivity"

    const-string v0, "GlobalSearchActivity onCreate"

    .line 53
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->isApkInDebug(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->isDebug:Z

    .line 55
    sget p1, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_main_activity:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->setContentView(I)V

    .line 56
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->setSearchCallback(Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$SearchInterface;)V

    .line 57
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->init(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->initBackEvent()V

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->initSearchHeader()V

    .line 60
    new-instance p1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->searchRoot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p1, p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->tabViewManager:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->initPageStateChangedEvent()V

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->parseIntent()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "MainActivity"

    const-string v1, "GlobalSearchActivity onDestroy"

    .line 340
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 342
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->resetData()V

    .line 343
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->resetData()V

    .line 344
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->resetData(Landroid/content/Context;)V

    .line 345
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->resetData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 153
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 155
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->init(Landroid/content/Context;)V

    .line 156
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->isChildrenModel()Z

    move-result p1

    if-nez p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchHeader:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->hideInputMethod()V

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchHeader:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->setTabListVisible(Z)V

    .line 160
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->tabViewManager:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->setContentViewVisible(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->parseIntent()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 248
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->hasOnResumed:Z

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->shouldReportUtOnResume:Z

    .line 251
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->cancelAutoJump()V

    .line 252
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->pageLeave()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 144
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->hasOnResumed:Z

    .line 146
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->shouldReportUtOnResume:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->pageEnter()V

    :cond_0
    return-void
.end method

.method parseIntent()V
    .locals 3

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->shouldReportUtOnResume:Z

    .line 166
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->hasCacheData:Z

    .line 167
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 168
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->hasOnResumed:Z

    if-eqz v1, :cond_0

    .line 169
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->pageLeave()V

    .line 171
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->clearPageState()V

    const-string v1, "MainActivity"

    if-eqz v0, :cond_2

    const-string v2, "renderData"

    .line 173
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, ""

    .line 174
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, " show res Page from voice "

    .line 175
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :try_start_0
    const-class v1, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 179
    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    .line 180
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->setCode(I)V

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search Result JsonParseException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAIN"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->setFromVoice(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->showSearchResult()V

    goto :goto_1

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->getHotList()V

    goto :goto_1

    :cond_2
    const-string v0, " parseIntent intent is null. "

    .line 189
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->getHotList()V

    :goto_1
    return-void
.end method

.method public searchByDomain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->tabViewManager:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->getSearchPage(Ljava/lang/String;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchHeader:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->updateFocusDomain(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 312
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->tabViewManager:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->updateContentView(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->tabViewManager:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->showSearchPage(Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 317
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public searchByGroupBean(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;)V
    .locals 1

    .line 323
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getGroupType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchByDomain(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public searchByString(Ljava/lang/String;)V
    .locals 2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start searchByString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->cancelAutoJump()V

    const/4 v0, 0x1

    .line 283
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->showLoading(Z)V

    .line 284
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->tabViewManager:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->clearSearchPageMap()V

    .line 285
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->tabViewManager:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->setContentViewVisible(Z)V

    .line 286
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchHeader:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->setQueryWord(Ljava/lang/String;)V

    .line 291
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/alibaba/ailabs/genie/globalsearch/-$$Lambda$MainActivity$Hw1eloj0urC2n4PeVPbUTAf9u3E;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/-$$Lambda$MainActivity$Hw1eloj0urC2n4PeVPbUTAf9u3E;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;)V

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest;->request(Landroid/content/Context;Ljava/util/function/Function;)V

    return-void
.end method

.method showHotList(Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchHeader:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;->getShading()Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->setShading(Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V

    .line 273
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchHeader:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->setQueryWord(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->tabViewManager:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->showHotListPage(Lcom/alibaba/ailabs/genie/globalsearch/data/HotListBean;)V

    .line 275
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object p1

    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->hotListPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->setPageState(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)V

    const/4 p1, 0x0

    .line 276
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->showLoading(Z)V

    return-void
.end method

.method showLoading(Z)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->loading:Landroid/view/View;

    if-nez v0, :cond_0

    .line 328
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->loading_view_stub:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->loading:Landroid/view/View;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->loading:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 332
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchHeader:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->hideInputMethod()V

    .line 333
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->loading:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 334
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object p1

    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->loading:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->setPageState(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)V

    :cond_2
    return-void
.end method

.method showSearchResult()V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchHeader:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->setQueryWord(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchHeader:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getTabList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getDefaultDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->setTabList(Ljava/util/List;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->tabViewManager:Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getDefaultDomain()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/TabViewManager;->showSearchPage(Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getResult()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getAutoPlay()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->setAutoPlay(Z)V

    .line 261
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getDefaultDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->setTabName(Ljava/lang/String;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->searchResBean:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean;->getCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 264
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v0

    sget-object v2, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->searchResPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->setPageState(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)V

    goto :goto_0

    .line 266
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v0

    sget-object v2, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->searchEmptyPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->setPageState(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)V

    .line 268
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->showLoading(Z)V

    return-void
.end method
