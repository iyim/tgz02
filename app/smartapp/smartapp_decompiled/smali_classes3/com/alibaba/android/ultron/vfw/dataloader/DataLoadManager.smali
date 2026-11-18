.class public Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;
.super Ljava/lang/Object;
.source "DataLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;
    }
.end annotation


# static fields
.field public static final KEY_DATA_PARSER_RESULT:Ljava/lang/String; = "DataParseResult"

.field private static final TAG:Ljava/lang/String; = "DataLoadManager"


# instance fields
.field currPendingTask:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;",
            "Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;",
            ">;"
        }
    .end annotation
.end field

.field mDataLoaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoader;",
            ">;"
        }
    .end annotation
.end field

.field mDataParseHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoaderParser;",
            ">;"
        }
    .end annotation
.end field

.field mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->mDataLoaderMap:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->mDataParseHandlerMap:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->currPendingTask:Ljava/util/Map;

    .line 24
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;Z)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->realLoadData(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getDefaultDataLoader(Ljava/lang/String;)Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoader;
    .locals 1

    const-string v0, "dataLoaderTypeClient"

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    new-instance p1, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderEngineImpl;

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-direct {p1, v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderEngineImpl;-><init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDefaultDataParser(Ljava/lang/String;)Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoaderParser;
    .locals 1

    const-string v0, "dataLoaderParserScript"

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    new-instance p1, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl;

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-direct {p1, v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl;-><init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private realLoadData(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;Z)V
    .locals 5

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getDataLoaderConfig()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->getDataLoadType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataLoadManager"

    if-nez v0, :cond_0

    const-string p1, "dataLoaderType is null"

    .line 137
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->mDataLoaderMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoader;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 142
    invoke-direct {p0, v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->getDefaultDataLoader(Ljava/lang/String;)Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoader;

    move-result-object v2

    if-nez v2, :cond_1

    .line 144
    new-array p1, v3, [Ljava/lang/String;

    const/4 p2, 0x0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataloader is null, type: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {v1, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 147
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->mDataLoaderMap:Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-static {p1, v2, p2, v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->create(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoader;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;

    move-result-object p1

    .line 152
    new-instance p2, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$2;

    invoke-direct {p2, p0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$2;-><init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;)V

    const-string v0, "dataloader task start step4"

    .line 158
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 161
    invoke-virtual {p1, v3}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->setCallbackOnCurrThread(Z)V

    .line 162
    invoke-virtual {p1, p2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->execute(Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;)V

    goto :goto_0

    .line 164
    :cond_3
    new-instance p3, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;-><init>(Lcom/alibaba/android/ultron/vfw/dataloader/IDataRequest;Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;)V

    .line 165
    invoke-virtual {p3}, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->start()V

    :goto_0
    return-void
.end method

.method private renderWithContextImpl(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;Z)V
    .locals 4

    const-string v0, "renderWithContext step1"

    .line 45
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataLoadManager"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getDataLoaderConfig()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "DataLoaderConfig is null"

    .line 52
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 55
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->getDataParseType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "dataParseType is null"

    .line 57
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 60
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->mDataParseHandlerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoaderParser;

    if-nez v2, :cond_4

    .line 62
    invoke-direct {p0, v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->getDefaultDataParser(Ljava/lang/String;)Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoaderParser;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 p1, 0x1

    .line 64
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataLoaderParser is null, type: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {v1, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 67
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->mDataParseHandlerMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_4
    new-instance v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;-><init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Z)V

    .line 71
    invoke-static {p1, v2, v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;->create(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoaderParser;Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;)Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;

    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;->setDataParserRequest(Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;)V

    const-string p2, "dataLoaderParser task start step2"

    .line 75
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p3, :cond_5

    .line 78
    new-instance p2, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$1;

    invoke-direct {p2, p0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$1;-><init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;->execute(Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;)V

    goto :goto_0

    .line 85
    :cond_5
    new-instance p2, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;

    invoke-direct {p2, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;-><init>(Lcom/alibaba/android/ultron/vfw/dataloader/IDataRequest;)V

    .line 86
    invoke-virtual {p2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->start()V

    .line 87
    iget-object p3, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->currPendingTask:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 184
    invoke-static {}, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask;->removeAllTask()V

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->currPendingTask:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public registerDataLoaderHander(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoader;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->mDataLoaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerDataParserHander(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoaderParser;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->mDataParseHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public renderWithContext(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->renderWithContextImpl(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public renderWithContextInCurrThread(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->renderWithContextImpl(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
