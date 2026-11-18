.class public Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;
.super Ljava/lang/Object;
.source "DinamicXViewHolderProvider.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;
    }
.end annotation


# static fields
.field public static final KEY_FESTRUE_COMPONT:Ljava/lang/String; = "componentRender"

.field public static final KEY_FESTRUE_VERSION:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "DinamicXViewHolderProvider"

.field public static final TAG_DINAMICX_VIEW_COMPONENT:Ljava/lang/String; = "DinamicXComponent"

.field private static final logRenderDuration:Ljava/lang/Boolean;


# instance fields
.field private mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

.field private mHandler:Landroid/os/Handler;

.field private mParentView:Landroid/view/ViewGroup;

.field private mViewTypeManager:Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->logRenderDuration:Ljava/lang/Boolean;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    .line 65
    new-instance v0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;

    invoke-direct {v0, p1}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mViewTypeManager:Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;

    .line 66
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getModuleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->templateManagerWithModule(Ljava/lang/String;)Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    move-result-object p1

    sget-object v0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;->STRATEGY_DEFAULT:Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    .line 67
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->setCacheStrategy(Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;)V

    .line 68
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->registerEventHandler()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;)Lcom/alibaba/android/ultron/vfw/core/ViewEngine;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    return-object p0
.end method

.method private calculateBindDurationEnd(JLcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V
    .locals 3

    .line 354
    sget-object v0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->logRenderDuration:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object p3, p3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 360
    invoke-static {}, Lcom/taobao/android/AliLogServiceFetcher;->getLogService()Lcom/taobao/android/AliLogInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "templateName: "

    .line 363
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n create duration -------> "

    .line 364
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ultron-view-kit"

    invoke-interface {p1, p3, p2}, Lcom/taobao/android/AliLogInterface;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private calculateRanderDurationEnd(JLcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 4

    .line 370
    sget-object v0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->logRenderDuration:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-interface {p3}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-interface {p3}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-interface {p3}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getContainerInfo()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3

    const-string v2, "name"

    .line 376
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 379
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "tag: "

    .line 380
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", type: "

    .line 381
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", templateName: "

    .line 382
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n bind duration --------> "

    .line 383
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    .line 384
    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "ultron-view-kit"

    invoke-static {p1, p2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->d(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private createViewHolderInternal(Landroid/view/ViewGroup;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/List;)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)",
            "Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v0, "createViewHolderInternal"

    const-string v5, "DinamicXViewHolderProvider"

    .line 108
    iget-object v6, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v6}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getDinamicXEngineManager()Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->getDxEngine()Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_7

    .line 114
    :try_start_0
    iget-object v9, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    if-eqz v9, :cond_0

    iget-object v9, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v9}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getPerfOpt()Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 115
    iget-object v9, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v9}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getPerfOpt()Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->takePreCreatedDinamic(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/DXResult;

    move-result-object v9

    if-nez v9, :cond_2

    .line 117
    iget-object v9, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v9}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getBizName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8, v3}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logInfoUltronTemplateRender(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v6, v9, v2, v3}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/DXResult;

    move-result-object v9

    goto :goto_1

    .line 121
    :cond_0
    iget-object v9, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    if-nez v9, :cond_1

    move-object v9, v8

    goto :goto_0

    :cond_1
    iget-object v9, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v9}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getBizName()Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-static {v9, v8, v3}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logInfoUltronTemplateRender(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v6, v9, v2, v3}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/DXResult;

    move-result-object v9

    .line 126
    :cond_2
    :goto_1
    invoke-virtual {v9}, Lcom/taobao/android/dinamicx/DXResult;->hasError()Z

    move-result v6

    if-nez v6, :cond_5

    .line 127
    iget-object v0, v9, Lcom/taobao/android/dinamicx/DXResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 128
    iget-object v5, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v5}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_3

    .line 129
    iget-object v5, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v5}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getMarkType()I

    move-result v5

    const/16 v6, 0x3e9

    if-ne v5, v6, :cond_3

    .line 130
    invoke-static {v0, v3}, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils;->addWatermark(Landroid/view/View;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 131
    iget-object v5, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v5}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getMarkType()I

    move-result v5

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_4

    .line 132
    invoke-static {v0, v3}, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils;->addDialogWatermark(Landroid/view/View;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Landroid/view/View;

    move-result-object v0

    :cond_4
    :goto_2
    move-object v8, v0

    goto/16 :goto_3

    :cond_5
    const/4 v6, 0x4

    .line 140
    new-array v6, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v6, v10

    const-string v11, "realTemplate"

    aput-object v11, v6, v7

    iget-object v11, v3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    const/4 v12, 0x2

    aput-object v11, v6, v12

    iget-wide v13, v3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x3

    aput-object v11, v6, v13

    invoke-static {v5, v6}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 141
    invoke-virtual {v9}, Lcom/taobao/android/dinamicx/DXResult;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/android/ultron/vfw/util/DinamicUtil;->dealDxError(Lcom/taobao/android/dinamicx/DXError;)Ljava/lang/String;

    move-result-object v6

    .line 142
    new-array v11, v13, [Ljava/lang/String;

    aput-object v0, v11, v10

    const-string v0, "errorDesc"

    aput-object v0, v11, v7

    aput-object v6, v11, v12

    invoke-static {v5, v11}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 143
    invoke-direct {v1, v3}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->downgrade2Preset(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 144
    invoke-direct {v1, v4, v7}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->setDegradeState(Ljava/util/List;Z)V

    .line 147
    :cond_6
    iget-object v0, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getBizName()Ljava/lang/String;

    move-result-object v13

    .line 148
    invoke-virtual {v9}, Lcom/taobao/android/dinamicx/DXResult;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/util/DinamicUtil;->dealDxError(Lcom/taobao/android/dinamicx/DXError;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "componentRender"

    const-string v11, "createViewHolderError"

    const-string v12, "1.0"

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createViewHolderError$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v0

    invoke-static/range {v10 .. v17}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->commitFailureStability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v5, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v5}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getBizName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8, v3}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logErrorUltronTemplateRender(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V

    .line 154
    iget-object v5, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v5}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v5}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getUseRenderErrorAlert()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 155
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v6}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    const-string v6, "\u6a21\u677fcreate\u9519\u8bef"

    .line 156
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6a21\u677f\uff1a "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 162
    invoke-direct {v1, v4, v7}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->setDegradeState(Ljava/util/List;Z)V

    .line 163
    iget-object v4, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v4}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getBizName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createViewHolderExp$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    const-string v9, "componentRender"

    const-string v10, "createViewHolderException"

    const-string v11, "1.0"

    .line 165
    invoke-static/range {v9 .. v16}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->commitFailureStability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getBizName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8, v3}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logErrorUltronTemplateRender(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V

    :cond_7
    :goto_3
    if-nez v8, :cond_8

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/util/ViewUtil;->createZeroHeightView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 174
    new-instance v2, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    invoke-direct {v2, v0}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;-><init>(Landroid/view/View;)V

    .line 175
    invoke-virtual {v2, v7}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->setDowngradeState(Z)V

    goto :goto_4

    .line 177
    :cond_8
    new-instance v2, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    invoke-direct {v2, v8}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;-><init>(Landroid/view/View;)V

    :goto_4
    return-object v2
.end method

.method private downgrade2Preset(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z
    .locals 7

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/util/ConfigUtils;->dxDowngrade2Preset(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getDinamicXEngineManager()Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->getDxEngine()Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    move-result-object v0

    .line 193
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils;->isV3Template(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 197
    :cond_1
    iget-wide v2, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    iget-boolean v2, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->isPreset:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 200
    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6a21\u677f\u6e32\u67d3\u5f02\u5e38\uff0c\u964d\u7ea7\u5230\u5185\u7f6e\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "DinamicXViewHolderProvider"

    invoke-static {v4, v3}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 203
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v3}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->templateManagerWithModule(Ljava/lang/String;)Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    move-result-object v3

    if-nez v3, :cond_3

    return v1

    .line 208
    :cond_3
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->transformTemplateToV2(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    move-result-object v1

    .line 209
    invoke-virtual {v3, v1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->getPresetTemplate(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->transformTemplateToV3(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    const-class v3, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;

    const-string v3, "dinamicx"

    .line 213
    invoke-virtual {v1, v3}, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;->getTemplateProvider(Ljava/lang/String;)Lcom/alibaba/android/ultron/vfw/template/ITemplateProvider;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;

    .line 214
    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->getTemplateMap()Ljava/util/Map;

    move-result-object v1

    iget-object v3, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$1;-><init>(Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getBizName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logErrorUltronTemplateDowngrade(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V

    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method private notifyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    const-class v1, Lcom/alibaba/android/ultron/vfw/event/ViewRenderErrorListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ultron/vfw/event/ViewRenderErrorListener;

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/android/ultron/vfw/event/ViewRenderErrorListener;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private registerEventHandler()V
    .locals 5

    const-string v0, "handleDinamicXEvent"

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getDinamicXEngineManager()Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    move-result-object v1

    invoke-static {v0}, Lcom/taobao/android/dinamicx/template/utils/DXHashUtil;->hash(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v4, Lcom/alibaba/android/ultron/vfw/event/DinamicXEventDispatcherV3;

    invoke-direct {v4}, Lcom/alibaba/android/ultron/vfw/event/DinamicXEventDispatcherV3;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->registerEventHandler(JLcom/taobao/android/dinamicx/DXAbsEventHandler;)V

    .line 75
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getDinamicXEngineManager()Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    move-result-object v1

    const-string v2, "handleDinamicXEventWithIndex"

    invoke-static {v2}, Lcom/taobao/android/dinamicx/template/utils/DXHashUtil;->hash(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v4, Lcom/alibaba/android/ultron/vfw/event/DinamicXWithIndexEventDispatcherV3;

    invoke-direct {v4}, Lcom/alibaba/android/ultron/vfw/event/DinamicXWithIndexEventDispatcherV3;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->registerEventHandler(JLcom/taobao/android/dinamicx/DXAbsEventHandler;)V

    .line 77
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getDinamicXEngineManager()Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ultron/vfw/event/DinamicXEventDispatcher;

    invoke-direct {v2}, Lcom/alibaba/android/ultron/vfw/event/DinamicXEventDispatcher;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->registerEventHandlerV2(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V
    :try_end_0
    .catch Lcom/taobao/android/dinamic/exception/DinamicException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 79
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/taobao/android/dinamic/exception/DinamicException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "registerEventHandler error"

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setDegradeState(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 239
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 240
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 241
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 242
    invoke-interface {v1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    .line 243
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "downgrade_state"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "errorDesc"

    const-string v4, "bindData"

    const-string v5, "DinamicXViewHolderProvider"

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 251
    invoke-interface/range {p2 .. p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getContainerInfo()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    const-string v9, ""

    if-eqz v8, :cond_0

    const-string v10, "name"

    .line 254
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_0
    move-object v10, v9

    :goto_0
    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 258
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v18

    .line 259
    invoke-interface/range {p2 .. p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getModifiedCount()I

    move-result v13

    .line 266
    iget-object v12, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v12}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->isNotContainerReuse()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->getComponentDataMap()Ljava/util/Map;

    move-result-object v12

    const-string v11, "DinamicXComponent"

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 267
    new-array v0, v15, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u4e0d\u9700\u8981\u91cd\u590dbind data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v14

    invoke-static {v5, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 271
    :cond_1
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->rebindComponentDataMap(Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/util/Map;

    move-result-object v11

    .line 272
    iget-object v12, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v12}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getDinamicContextMap()Ljava/util/Map;

    move-result-object v12

    .line 273
    invoke-interface {v11, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 274
    iget-object v12, v0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    .line 276
    iget-object v14, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v14}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getDinamicXEngineManager()Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->getDxEngine()Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    move-result-object v16

    .line 277
    invoke-static {}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultWidthSpec()I

    move-result v14

    .line 278
    invoke-static {}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultHeightSpec()I

    move-result v21

    .line 280
    invoke-static {v12}, Lcom/alibaba/android/ultron/vfw/util/DXViewUtils;->findDXRootView(Landroid/view/View;)Lcom/taobao/android/dinamicx/DXRootView;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v15, "\n"

    move-object/from16 v23, v9

    const-string v9, "\u6a21\u677f\uff1a "

    move/from16 v17, v14

    const-string v14, "\u6a21\u677fbind\u9519\u8bef"

    if-nez v12, :cond_3

    :try_start_1
    const-string v0, "bindData error, currDXRoot is null"

    .line 283
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 285
    iget-object v0, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getUseRenderErrorAlert()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v8}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 287
    invoke-virtual {v0, v14}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "DXRootView is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_2
    return-void

    .line 293
    :cond_3
    iget-object v2, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mParentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 294
    iget-object v2, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide/from16 v24, v6

    const/high16 v6, 0x40000000    # 2.0f

    :try_start_2
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move/from16 v20, v2

    goto :goto_1

    :cond_4
    move-wide/from16 v24, v6

    move/from16 v20, v17

    .line 298
    :goto_1
    iget-object v2, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v19, v12

    move-object/from16 v22, v11

    invoke-virtual/range {v16 .. v22}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->renderTemplate(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/android/dinamicx/DXRootView;IILjava/lang/Object;)Lcom/taobao/android/dinamicx/DXResult;

    move-result-object v2

    if-eqz v12, :cond_6

    .line 302
    iget-object v6, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v6}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/alibaba/android/ultron/vfw/util/AccessibilityUtils;->isAccessibilityOpen:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    .line 304
    invoke-virtual {v12, v6}, Lcom/taobao/android/dinamicx/DXRootView;->setImportantForAccessibility(I)V

    .line 306
    invoke-interface/range {p2 .. p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 307
    invoke-interface/range {p2 .. p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getId()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 309
    :cond_5
    invoke-interface/range {p2 .. p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 311
    :goto_2
    invoke-virtual {v12, v6}, Lcom/taobao/android/dinamicx/DXRootView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz v2, :cond_8

    .line 314
    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/DXResult;->hasError()Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v8, :cond_7

    .line 315
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_7
    move-object/from16 v6, v23

    :goto_3
    const/4 v7, 0x5

    .line 316
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const-string v8, "error component"

    const/4 v11, 0x1

    aput-object v8, v7, v11

    .line 317
    invoke-interface/range {p2 .. p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getTag()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x2

    aput-object v8, v7, v11

    invoke-interface/range {p2 .. p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getType()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x3

    aput-object v8, v7, v11

    const/4 v8, 0x4

    aput-object v6, v7, v8

    .line 316
    invoke-static {v5, v7}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 318
    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/DXResult;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/ultron/vfw/util/DinamicUtil;->dealDxError(Lcom/taobao/android/dinamicx/DXError;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    .line 319
    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v7, v6

    const/4 v6, 0x1

    aput-object v3, v7, v6

    const/4 v6, 0x2

    aput-object v2, v7, v6

    invoke-static {v5, v7}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 321
    iget-object v6, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v6}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getBizName()Ljava/lang/String;

    move-result-object v29

    const-string v26, "componentRender"

    const-string v27, "bindDataError"

    const-string v28, "1.0"

    const/16 v30, 0x0

    const/16 v31, 0x0

    .line 322
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindDataError$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v33, v2

    invoke-static/range {v26 .. v33}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->commitFailureStability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v6, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v6}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getBizName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Lcom/taobao/android/dinamicx/DXRootView;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v8, v7, v2}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logErrorUltronTemplateBindData(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v12}, Lcom/taobao/android/dinamicx/DXRootView;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->downgrade2Preset(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    .line 330
    iget-object v6, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v6}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v6}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getUseRenderErrorAlert()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 331
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v7}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 332
    invoke-virtual {v6, v14}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 333
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 334
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 337
    :cond_8
    invoke-virtual {v0, v13}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->setModifiedCount(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-wide/from16 v24, v6

    :goto_4
    const/4 v2, 0x3

    goto :goto_5

    :catch_2
    move-exception v0

    move-wide/from16 v24, v6

    const/4 v2, 0x3

    const/4 v12, 0x0

    .line 340
    :goto_5
    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v2, v6

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v5, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 342
    iget-object v2, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getBizName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindDataExp$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 344
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    const-string v13, "componentRender"

    const-string v14, "bindDataException"

    const-string v15, "1.0"

    .line 343
    invoke-static/range {v13 .. v20}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->commitFailureStability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_9

    .line 346
    iget-object v2, v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getBizName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/taobao/android/dinamicx/DXRootView;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v0}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logErrorUltronTemplateBindData(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;)V

    :cond_9
    :goto_6
    move-object/from16 v2, p2

    move-wide/from16 v3, v24

    .line 350
    invoke-direct {v1, v3, v4, v2}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->calculateRanderDurationEnd(JLcom/taobao/android/ultron/common/model/IDMComponent;)V

    return-void
.end method

.method public createViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;
    .locals 4

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 95
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mParentView:Landroid/view/ViewGroup;

    .line 96
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mViewTypeManager:Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;

    invoke-virtual {v2, p2}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->getDinamicTemplateByViewType(I)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v2

    .line 97
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mViewTypeManager:Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;

    invoke-virtual {v3, p2}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->getComponentsByViewType(I)Ljava/util/ArrayList;

    move-result-object p2

    .line 98
    invoke-direct {p0, p1, v2, p2}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->createViewHolderInternal(Landroid/view/ViewGroup;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/List;)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    move-result-object p1

    if-nez v2, :cond_0

    return-object p1

    .line 103
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->calculateBindDurationEnd(JLcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V

    return-object p1
.end method

.method public destroy()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getDinamicTemplateByViewType(I)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mViewTypeManager:Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->getDinamicTemplateByViewType(I)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(Lcom/taobao/android/ultron/common/model/IDMComponent;)I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->mViewTypeManager:Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->getItemViewType(Lcom/taobao/android/ultron/common/model/IDMComponent;)I

    move-result p1

    return p1
.end method
