.class public Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;
.super Ljava/lang/Object;
.source "DinamicXTemplateProvider.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/template/ITemplateProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "DinamicXTemplateProvider"


# instance fields
.field private mDownloadListener:Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;

.field private mDxEngineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

.field private mNotificationListener:Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;

.field private mTemplateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;"
        }
    .end annotation
.end field

.field private mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider$1;-><init>(Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mNotificationListener:Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mTemplateMap:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    .line 46
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getDinamicXEngineManager()Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->getDxEngine()Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mDxEngineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    .line 47
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mDxEngineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mNotificationListener:Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->registerNotificationListener(Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->componentRenderError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;)Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mDownloadListener:Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;)Lcom/alibaba/android/ultron/vfw/core/ViewEngine;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;Ljava/util/List;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->updateFinishedTemplateMap(Ljava/util/List;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;Ljava/util/List;)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->updateTemplateMap(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private componentRenderError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x4

    .line 51
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "componenet render error, name: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, "reason"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const-string v1, "DinamicXTemplateProvider"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    const-class v1, Lcom/alibaba/android/ultron/vfw/event/ViewRenderErrorListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ultron/vfw/event/ViewRenderErrorListener;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/android/ultron/vfw/event/ViewRenderErrorListener;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getBizName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renderError$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v1, "componentRender"

    const-string v2, "renderError"

    const-string v3, "1.0"

    invoke-static/range {v1 .. v8}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->commitFailureStability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateFinishedTemplateMap(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\u66f4\u65b0\u4e0b\u8f7d\u5b8c\u6210\u6a21\u677f\u4fe1\u606f"

    .line 170
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "DinamicXTemplateProvider"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 171
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 175
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updata: name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mTemplateMap:Ljava/util/Map;

    iget-object v3, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateTemplateMap(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "\u66f4\u65b0\u9700\u8981\u66f4\u65b0\u7684\u6a21\u677f"

    .line 184
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "DinamicXTemplateProvider"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;

    if-eqz v4, :cond_0

    .line 187
    iget-object v5, v4, Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;->item:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    if-nez v5, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    new-array v5, v0, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DXTemplateUpdateRequest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v1, v5}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 192
    iget v5, v4, Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;->reason:I

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_2

    goto :goto_0

    .line 196
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mDxEngineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    iget-object v4, v4, Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;->item:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    invoke-virtual {v5, v4}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->fetchTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 200
    :cond_3
    new-array v5, v0, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u91cd\u65b0fetch\uff0cDXTemplateItem: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v1, v5}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 203
    iget-object v5, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mTemplateMap:Ljava/util/Map;

    iget-object v6, v4, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 206
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mTemplateMap:Ljava/util/Map;

    iget-object v5, v4, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v3}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getBizName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logErrorUltronTemplateDowngrade(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method


# virtual methods
.method public checkTemplate(Lcom/taobao/android/ultron/common/model/IDMComponent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public downloadTemplates(Ljava/util/List;Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;",
            "Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 124
    :cond_0
    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mDownloadListener:Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;

    .line 126
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    .line 129
    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/convert/TemplateEntityConvert;->convertToDXTemplateItem(Lcom/taobao/android/ultron/common/model/DynamicTemplate;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v0

    .line 130
    iget-wide v1, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mDxEngineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->fetchTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v1

    if-nez v1, :cond_2

    .line 137
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_2
    iget-wide v2, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    iget-wide v4, v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 143
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_3
    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mTemplateMap:Ljava/util/Map;

    iget-object v2, v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mTemplateMap:Ljava/util/Map;

    iget-object v2, v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 154
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 155
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mDxEngineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->downLoadTemplates(Ljava/util/List;)V

    :cond_6
    return-void
.end method

.method public getDinamicTemplate(Ljava/lang/String;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mTemplateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    return-object p1
.end method

.method public getTemplateMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->mTemplateMap:Ljava/util/Map;

    return-object v0
.end method
