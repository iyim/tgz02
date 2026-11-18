.class public Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;
.super Ljava/lang/Object;
.source "PageStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$OnPageStateChanged;,
        Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;


# instance fields
.field private fromVoice:Z

.field private lastPageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$OnPageStateChanged;",
            ">;"
        }
    .end annotation
.end field

.field private pageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

.field private tabName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->fromVoice:Z

    const-string v0, "all"

    .line 11
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->tabName:Ljava/lang/String;

    .line 12
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->idle:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->pageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    .line 13
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->idle:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->lastPageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->listeners:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;
    .locals 2

    .line 18
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    return-object v0
.end method

.method public static isSearchResultPage(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)Z
    .locals 1

    .line 87
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->searchResPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->searchEmptyPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static resetData()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public addOnPageStateChanged(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$OnPageStateChanged;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearPageState()V
    .locals 1

    .line 108
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->idle:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->pageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    .line 109
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->idle:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->lastPageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    return-void
.end method

.method public getLastPageState()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->lastPageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    return-object v0
.end method

.method public getPageState()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->pageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    return-object v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->tabName:Ljava/lang/String;

    return-object v0
.end method

.method public pageEnter()V
    .locals 3

    const-string v0, "setPageState pageEnter"

    .line 113
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->pageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->loading:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->pageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->idle:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    if-eq v0, v1, :cond_2

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->pageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->isSearchResultPage(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->fromVoice:Z

    if-eqz v1, :cond_0

    const-string v1, "voice"

    goto :goto_0

    :cond_0
    const-string v1, "touch"

    :goto_0
    const-string v2, "enter_way"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->tabName:Ljava/lang/String;

    const-string v2, "tab_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->pageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->pageUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;ZLjava/util/Map;)V

    :cond_2
    return-void
.end method

.method public pageLeave()V
    .locals 3

    const-string v0, "setPageState pageLeave"

    .line 125
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->pageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->loading:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->pageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->idle:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    if-eq v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->pageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->pageUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;ZLjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setFromVoice(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->fromVoice:Z

    return-void
.end method

.method public setPageState(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)V
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setPageState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PageState"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->pageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    if-eq v0, p1, :cond_4

    .line 67
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->lastPageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->pageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$OnPageStateChanged;

    .line 70
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->lastPageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    invoke-interface {v1, v2, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$OnPageStateChanged;->onPageStateChanged(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->lastPageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->loading:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->lastPageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->idle:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    if-eq v0, v1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->lastPageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->pageUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;ZLjava/util/Map;)V

    .line 75
    :cond_1
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->loading:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->idle:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    if-eq p1, v0, :cond_4

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->isSearchResultPage(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->fromVoice:Z

    if-eqz v1, :cond_2

    const-string v1, "voice"

    goto :goto_1

    :cond_2
    const-string v1, "touch"

    :goto_1
    const-string v2, "enter_way"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->tabName:Ljava/lang/String;

    const-string v2, "tab_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v1, 0x1

    .line 81
    invoke-static {p1, v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->pageUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;ZLjava/util/Map;)V

    :cond_4
    return-void
.end method

.method public setTabName(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->tabName:Ljava/lang/String;

    return-void
.end method
