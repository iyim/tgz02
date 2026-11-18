.class public Lcom/alibaba/android/ultron/vfw/core/ViewEngine;
.super Ljava/lang/Object;
.source "ViewEngine.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/core/IServiceManager;


# static fields
.field public static final ALL:I = 0x1f

.field public static final BODY:I = 0x2

.field private static final DEFAULT_MODULE_NAME:Ljava/lang/String; = "ultron"

.field public static final FOOTER:I = 0x4

.field public static final HEADER:I = 0x1

.field public static final KEY_VIEW_ENGINE:Ljava/lang/String; = "ViewEngine"

.field public static final STICKY_BOTTOM:I = 0x10

.field public static final STICKY_TOP:I = 0x8

.field public static final TAG:Ljava/lang/String; = "ViewEngine"

.field public static final TYPE_REFRESH_AFTER_DOWNLOAD:I = 0x2

.field public static final TYPE_REFRESH_NEXT_CREATE:I = 0x1

.field private static mUseRenderErrorAlert:Z = false

.field private static sWriteRenderData:Z = false


# instance fields
.field private final componentChangedListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/listener/IDMComponentChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private containerRefreshType:I

.field private mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

.field private mBizName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

.field private mDinamicContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDinamicTemplateDownloadListener:Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;

.field private mDinamicXEngineManager:Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

.field private mFooterView:Landroid/view/ViewGroup;

.field private mFooterViewHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderView:Landroid/view/ViewGroup;

.field private mHeaderViewCount:I

.field private mHeaderViewHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mILayoutExtend:Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;

.field public mInnerDXTemplateDownloadListener:Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;

.field private mMarkType:I

.field private mModuleName:Ljava/lang/String;

.field private mNotContainerReuse:Z

.field private mRawComponentIndexForFooter:I

.field private mRawComponentIndexForHeader:I

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mResumed:Z

.field private mServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mStickyComponentInFooter:Lcom/taobao/android/ultron/common/model/IDMComponent;

.field private mStickyComponentInHeader:Lcom/taobao/android/ultron/common/model/IDMComponent;

.field private mStickyComponentInitVisible:Z

.field private mStickyHolderInFooter:Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

.field private mStickyHolderInHeader:Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

.field private mTemplateProviderManager:Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;

.field private mViewHolderProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

.field private mViewRenderErrorListener:Lcom/alibaba/android/ultron/vfw/event/ViewRenderErrorListener;

.field private mWebBridgeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/vfw/web/IWebEventBridge;",
            ">;"
        }
    .end annotation
.end field

.field private final messageManager:Lcom/taobao/android/ultron/message/MessageManager;

.field private oldFirstPosition:I

.field private oldLastPosition:I

.field private perfOpt:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;

.field private stickyBottom:Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;

.field private stickyTop:Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ultron"

    .line 147
    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;)V
    .locals 3

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mServiceMap:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mHeaderViewHolders:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mFooterViewHolders:Ljava/util/List;

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mStickyComponentInitVisible:Z

    const/4 v1, -0x1

    .line 108
    iput v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRawComponentIndexForHeader:I

    .line 109
    iput v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRawComponentIndexForFooter:I

    const-string v1, "ultron"

    .line 113
    iput-object v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mModuleName:Ljava/lang/String;

    const-string v1, "default"

    .line 120
    iput-object v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mBizName:Ljava/lang/String;

    const/4 v1, 0x1

    .line 125
    iput v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->containerRefreshType:I

    .line 138
    new-instance v2, Lcom/taobao/android/ultron/message/MessageManager;

    invoke-direct {v2}, Lcom/taobao/android/ultron/message/MessageManager;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->messageManager:Lcom/taobao/android/ultron/message/MessageManager;

    .line 139
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->componentChangedListenerMap:Ljava/util/Map;

    .line 141
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mResumed:Z

    .line 143
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mNotContainerReuse:Z

    .line 144
    iput v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mHeaderViewCount:I

    .line 788
    new-instance v2, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$6;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    iput-object v2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mInnerDXTemplateDownloadListener:Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;

    .line 155
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mContext:Landroid/content/Context;

    .line 156
    invoke-direct {p0, p2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->initDebug(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 158
    new-instance p1, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;

    invoke-direct {p1, p0, p3}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;)V

    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->perfOpt:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;

    .line 161
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 162
    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mModuleName:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mBizName:Ljava/lang/String;

    .line 167
    :cond_1
    invoke-static {p0}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->create(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDinamicXEngineManager:Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    .line 169
    new-instance p1, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-direct {p1, p0}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mViewHolderProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    .line 170
    const-class p1, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mViewHolderProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->registerService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 172
    new-instance p1, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;

    invoke-direct {p1, p0}, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mTemplateProviderManager:Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;

    .line 173
    const-class p1, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;

    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mTemplateProviderManager:Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->registerService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 175
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDinamicContextMap:Ljava/util/Map;

    .line 176
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDinamicContextMap:Ljava/util/Map;

    const-string p2, "ViewEngine"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance p1, Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-direct {p1}, Lcom/alibaba/android/ultron/vfw/core/DataSource;-><init>()V

    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    .line 179
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->initSwitch()V

    .line 182
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->registerIDMComponentChangedListeners()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p3, 0x2

    .line 184
    new-array p3, p3, [Ljava/lang/String;

    const-string v2, "registerIDMComponentChangedListeners"

    aput-object v2, p3, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-static {p2, p3}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 186
    :goto_0
    new-instance p1, Lcom/alibaba/android/ultron/vfw/layout/DefaultLayoutExtend;

    invoke-direct {p1}, Lcom/alibaba/android/ultron/vfw/layout/DefaultLayoutExtend;-><init>()V

    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mILayoutExtend:Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mStickyComponentInitVisible:Z

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRawComponentIndexForHeader:I

    return p0
.end method

.method static synthetic access$1000(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->initComponentVisibility()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1100(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDinamicTemplateDownloadListener:Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/lang/Object;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->handleMessage(Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mStickyHolderInHeader:Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->showStickyView(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->hideStickyView(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRawComponentIndexForFooter:I

    return p0
.end method

.method static synthetic access$600(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mStickyHolderInFooter:Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Landroid/support/v7/widget/LinearLayoutManager;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->handleVisibilityChangedComponent(Landroid/support/v7/widget/LinearLayoutManager;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$800(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Lcom/alibaba/android/ultron/vfw/core/DataSource;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method private downloadTemplates()V
    .locals 5

    .line 759
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getBizName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logInfoUltronTemplateDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getDynamicTemplateList()Ljava/util/List;

    move-result-object v0

    .line 762
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 763
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 765
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 766
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    .line 767
    iget-object v3, v2, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->containerType:Ljava/lang/String;

    const-string v4, "native"

    .line 768
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 769
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 770
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 772
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 773
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 780
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 781
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 782
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mTemplateProviderManager:Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mInnerDXTemplateDownloadListener:Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;

    invoke-virtual {v2, v3, v1, v4}, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;->downloadTemplates(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private handleMessage(Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/lang/Object;)V
    .locals 3

    .line 1056
    instance-of v0, p2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 1057
    nop

    nop

    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->handleUpdateMessage(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/fastjson/JSONObject;)V

    return-void

    .line 1061
    :cond_0
    instance-of v0, p2, Ljava/util/Map;

    if-nez v0, :cond_1

    return-void

    .line 1066
    :cond_1
    :try_start_0
    check-cast p2, Ljava/util/Map;

    .line 1068
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/util/IDMComponentUtils;->getListener(Lcom/taobao/android/ultron/common/model/IDMComponent;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v1, "postModel"

    .line 1073
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 1074
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v1, "type"

    .line 1079
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1080
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    .line 1084
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->componentChangedListenerMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/listener/IDMComponentChangedListener;

    if-eqz v1, :cond_5

    const-string v2, "fields"

    .line 1087
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1086
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/ultron/listener/IDMComponentChangedListener;->onIDMComponentChanged(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 1090
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "ViewEngine"

    invoke-static {p1, p2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private handleUpdateMessage(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    const-string v0, "type"

    .line 1095
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateItem"

    .line 1096
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1097
    invoke-static {p1}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getComponentPosition(Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stickyTop"

    .line 1099
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "stickyBottom"

    if-nez v2, :cond_0

    .line 1100
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const-string v2, "message"

    .line 1101
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1103
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1105
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    const/4 p2, 0x0

    .line 1106
    invoke-interface {p1, v2, p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->writeBackData(Lcom/alibaba/fastjson/JSONObject;Z)V

    .line 1109
    :cond_1
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    .line 1110
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->refresh(I)V

    goto :goto_0

    .line 1111
    :cond_2
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x10

    .line 1112
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->refresh(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleVisibilityChangedComponent(Landroid/support/v7/widget/LinearLayoutManager;I)V
    .locals 6

    .line 291
    invoke-static {}, Lcom/alibaba/android/ultron/vfw/util/ConfigUtils;->disableScrollVisibilityCheck()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {p2}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getBodyList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 301
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 302
    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 306
    iget v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->oldFirstPosition:I

    const/4 v2, 0x0

    if-le v1, v0, :cond_4

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v0

    .line 308
    :goto_0
    iget v4, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->oldFirstPosition:I

    if-ge v3, v4, :cond_3

    if-ltz v3, :cond_2

    .line 309
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 310
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_2

    :cond_4
    if-ge v1, v0, :cond_6

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 315
    iget v3, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->oldFirstPosition:I

    :goto_1
    if-ge v3, v0, :cond_7

    if-ltz v3, :cond_5

    .line 316
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 317
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    move-object v1, v2

    .line 322
    :cond_7
    :goto_2
    iget v3, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->oldLastPosition:I

    if-ge v3, p1, :cond_a

    if-nez v2, :cond_8

    .line 324
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 326
    :cond_8
    iget v3, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->oldLastPosition:I

    :goto_3
    if-ge v3, p1, :cond_d

    if-ltz v3, :cond_9

    .line 327
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 328
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    if-le v3, p1, :cond_d

    if-nez v1, :cond_b

    .line 333
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    move v3, p1

    .line 335
    :goto_4
    iget v4, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->oldLastPosition:I

    if-ge v3, v4, :cond_d

    if-ltz v3, :cond_c

    .line 336
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    .line 337
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    if-eqz v2, :cond_e

    .line 342
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 343
    invoke-direct {p0, v2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->onComponentDisplay(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    goto :goto_5

    :cond_e
    if-eqz v1, :cond_f

    .line 347
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 348
    invoke-direct {p0, v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->onComponentDismiss(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    goto :goto_6

    .line 352
    :cond_f
    iput v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->oldFirstPosition:I

    .line 353
    iput p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->oldLastPosition:I

    return-void
.end method

.method private hideStickyView(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 745
    iget-object v0, p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 746
    iget-object p1, p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initComponentVisibility()V
    .locals 5

    .line 360
    invoke-static {}, Lcom/alibaba/android/ultron/vfw/util/ConfigUtils;->disableScrollVisibilityCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 364
    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_1

    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getBodyList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 373
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 374
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 375
    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 376
    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    const/4 v3, 0x0

    .line 378
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    if-lt v3, v2, :cond_3

    if-gt v3, v1, :cond_3

    .line 380
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 381
    invoke-direct {p0, v4}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->onComponentDisplay(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    goto :goto_1

    .line 383
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 384
    invoke-direct {p0, v4}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->onComponentDismiss(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private initDebug(Ljava/lang/String;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    new-instance v0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$1;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->addLogCallback(Ljava/lang/String;Lcom/taobao/android/ultron/common/utils/UnifyLog$LogCallback;)V

    .line 204
    invoke-static {p1}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->init(Landroid/content/Context;)V

    return-void
.end method

.method private initSwitch()V
    .locals 5

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/util/ConfigUtils;->downloadRefresh(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    .line 209
    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadRefresh: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "ViewEngine"

    invoke-static {v3, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 210
    :cond_0
    iput v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->containerRefreshType:I

    return-void
.end method

.method private modifyStickyStatus(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 3

    .line 616
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "status"

    const-string v2, "normal"

    .line 617
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 619
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->refreshComponents(Ljava/util/List;)V

    return-void
.end method

.method private onComponentDismiss(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 3

    .line 416
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getEventMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 419
    :cond_0
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getEventMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "dismiss"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    return-void

    .line 424
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/ultron/common/model/IDMEvent;

    .line 425
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "target"

    .line 427
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->messageManager:Lcom/taobao/android/ultron/message/MessageManager;

    invoke-virtual {v2, v1, v0}, Lcom/taobao/android/ultron/message/MessageManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private onComponentDisplay(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 3

    .line 394
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getEventMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getEventMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "display"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    return-void

    .line 402
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/ultron/common/model/IDMEvent;

    .line 403
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "target"

    .line 405
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->messageManager:Lcom/taobao/android/ultron/message/MessageManager;

    invoke-virtual {v2, v1, v0}, Lcom/taobao/android/ultron/message/MessageManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private rebuildBody()V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getBodyList()Ljava/util/List;

    move-result-object v0

    .line 625
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mILayoutExtend:Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;->useCustomLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mILayoutExtend:Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-interface {v0, v1}, Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;->rebuildBody(Lcom/alibaba/android/ultron/vfw/core/DataSource;)V

    goto :goto_0

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->setData(Ljava/util/List;)V

    .line 630
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private rebuildFooter()V
    .locals 5

    .line 634
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mFooterView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 635
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mFooterView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mFooterViewHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mFooterViewHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getFooterList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 645
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 646
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 647
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mViewHolderProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->getItemViewType(Lcom/taobao/android/ultron/common/model/IDMComponent;)I

    move-result v2

    .line 648
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mViewHolderProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mFooterView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    move-result-object v2

    .line 650
    iget-object v3, v2, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 652
    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mFooterView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 653
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mFooterViewHolders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mViewHolderProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {v3, v2, v1}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->bindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    .line 656
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mStickyComponentInFooter:Lcom/taobao/android/ultron/common/model/IDMComponent;

    if-ne v1, v3, :cond_2

    .line 657
    iput-object v2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mStickyHolderInFooter:Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    .line 658
    invoke-direct {p0, v2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->hideStickyView(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private rebuildHeader()V
    .locals 5

    .line 574
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mHeaderView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 577
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mHeaderView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mHeaderViewHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mHeaderViewHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getHeaderList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 587
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 590
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 591
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mViewHolderProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->getItemViewType(Lcom/taobao/android/ultron/common/model/IDMComponent;)I

    move-result v2

    .line 592
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mViewHolderProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mHeaderView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    move-result-object v2

    .line 594
    iget-object v3, v2, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 596
    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mHeaderView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 597
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mHeaderViewHolders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mViewHolderProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {v3, v2, v1}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->bindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    .line 600
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mStickyComponentInHeader:Lcom/taobao/android/ultron/common/model/IDMComponent;

    if-ne v1, v3, :cond_4

    .line 601
    iput-object v2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mStickyHolderInHeader:Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    .line 603
    invoke-interface {v1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getStatus()I

    move-result v3

    if-nez v3, :cond_6

    .line 605
    invoke-direct {p0, v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->modifyStickyStatus(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    .line 606
    invoke-direct {p0, v2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->hideStickyView(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    .line 608
    iput-boolean v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mStickyComponentInitVisible:Z

    goto :goto_0

    :cond_7
    :goto_1
    return-void
.end method

.method private refreshBody()V
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private refreshFooter()V
    .locals 5

    .line 702
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getFooterList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 703
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 704
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mFooterViewHolders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    .line 705
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 706
    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mViewHolderProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->bindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private refreshHeader()V
    .locals 5

    .line 689
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getHeaderList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 690
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 691
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mHeaderViewHolders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    .line 692
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 693
    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mViewHolderProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->bindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private registerIDMComponentChangedListeners()V
    .locals 2

    .line 1130
    new-instance v0, Lcom/alibaba/android/ultron/listener/CheckMutexListener;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/listener/CheckMutexListener;-><init>()V

    const-string v1, "check_mutex"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->registerIDMComponentChangedListener(Ljava/lang/String;Lcom/alibaba/android/ultron/listener/IDMComponentChangedListener;)V

    .line 1131
    new-instance v0, Lcom/alibaba/android/ultron/listener/CheckHiddenListener;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/listener/CheckHiddenListener;-><init>()V

    const-string v1, "check_hidden"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->registerIDMComponentChangedListener(Ljava/lang/String;Lcom/alibaba/android/ultron/listener/IDMComponentChangedListener;)V

    return-void
.end method

.method private setupMessageChannel(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1033
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 1034
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1035
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1039
    :cond_1
    new-instance v2, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$7;

    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->messageManager:Lcom/taobao/android/ultron/message/MessageManager;

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$7;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Ljava/lang/String;Lcom/taobao/android/ultron/message/MessageManager;Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    .line 1050
    invoke-interface {v0, v2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->setMessageChannel(Lcom/taobao/android/ultron/message/MessageChannel;)V

    .line 1051
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->messageManager:Lcom/taobao/android/ultron/message/MessageManager;

    invoke-virtual {v0, v2}, Lcom/taobao/android/ultron/message/MessageManager;->registerChannel(Lcom/taobao/android/ultron/message/MessageChannel;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private showStickyView(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 739
    iget-object v0, p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 740
    iget-object p1, p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addDinamicContextData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDinamicContextMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addViewHolderProvider(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;)V
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mViewHolderProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->addViewHolderProvider(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;)V

    return-void
.end method

.method public bindSticky(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 2

    .line 434
    invoke-static {}, Lcom/alibaba/android/ultron/vfw/util/ConfigUtils;->disableScrollVisibilityCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 437
    :cond_0
    new-instance v0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$3;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mViewHolderProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-direct {v0, p0, p1, v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$3;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Landroid/view/ViewGroup;Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->stickyTop:Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;

    .line 444
    new-instance p1, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$4;

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mViewHolderProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-direct {p1, p0, p2, v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$4;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Landroid/view/ViewGroup;Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;)V

    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->stickyBottom:Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;

    return-void
.end method

.method public bindViewTree(Landroid/widget/LinearLayout;Landroid/support/v7/widget/RecyclerView;Landroid/widget/LinearLayout;)V
    .locals 1
    .param p2    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 245
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mHeaderView:Landroid/view/ViewGroup;

    .line 246
    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 247
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mILayoutExtend:Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;->useCustomLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mILayoutExtend:Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mContext:Landroid/content/Context;

    invoke-interface {p2, v0}, Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;->getLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$2;

    invoke-direct {p2, p0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$2;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 282
    iput-object p3, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mFooterView:Landroid/view/ViewGroup;

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 831
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mResumed:Z

    .line 834
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mViewHolderProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->destroy()V

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->perfOpt:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;

    if-eqz v0, :cond_1

    .line 838
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->destroy()V

    .line 840
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 841
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mModuleName:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->removeLogCallback(Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mModuleName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->destroy()V

    :cond_2
    return-void
.end method

.method public getAdapter()Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    return-object v0
.end method

.method public getBizName()Ljava/lang/String;
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mBizName:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerRefreshType()I
    .locals 1

    .line 803
    iget v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->containerRefreshType:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDataSource()Lcom/alibaba/android/ultron/vfw/core/DataSource;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    return-object v0
.end method

.method public getDinamicContextMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDinamicContextMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDinamicXEngineManager()Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDinamicXEngineManager:Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    return-object v0
.end method

.method public getMarkType()I
    .locals 1

    .line 882
    iget v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mMarkType:I

    return v0
.end method

.method public getMessageManager()Lcom/taobao/android/ultron/message/MessageManager;
    .locals 1

    .line 1135
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->messageManager:Lcom/taobao/android/ultron/message/MessageManager;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getPerfOpt()Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->perfOpt:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;

    return-object v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mServiceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTemplateProviderManager()Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mTemplateProviderManager:Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;

    return-object v0
.end method

.method public getUseRenderErrorAlert()Z
    .locals 1

    .line 877
    sget-boolean v0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mUseRenderErrorAlert:Z

    return v0
.end method

.method public getWebBridge(Ljava/lang/String;)Lcom/alibaba/android/ultron/vfw/web/IWebEventBridge;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mWebBridgeMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/ultron/vfw/web/IWebEventBridge;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public idmComponentChangedListener(Ljava/lang/String;)Lcom/alibaba/android/ultron/listener/IDMComponentChangedListener;
    .locals 1

    .line 1126
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->componentChangedListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/ultron/listener/IDMComponentChangedListener;

    return-object p1
.end method

.method public insertComponents(Ljava/util/List;Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1003
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getBodyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 1012
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mHeaderViewCount:I

    add-int/2addr v1, p2

    .line 1014
    :cond_1
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->notifyItemRangeInserted(II)V

    .line 1015
    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1016
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->setData(Ljava/util/List;)V

    .line 1017
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {p2}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getBodyList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, v1, p2}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->notifyItemRangeChanged(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isNotContainerReuse()Z
    .locals 1

    .line 1139
    iget-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mNotContainerReuse:Z

    return v0
.end method

.method public onCreate()V
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mModuleName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->onCreate()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 811
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mResumed:Z

    .line 812
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mModuleName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 818
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mResumed:Z

    .line 819
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mModuleName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->onResume()V

    :cond_0
    return-void
.end method

.method public rebuild(I)V
    .locals 3

    .line 511
    iget-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mResumed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 512
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mResumed:Z

    .line 513
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mModuleName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->onResume()V

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mBizName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logInfoUltronPageRefresh(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "viewengine rebuild start"

    const-string v1, "ultronProfile"

    .line 519
    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->stage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ViewEngine.rebuild"

    .line 520
    invoke-static {v2, v0}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->start(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "downloadTemplates"

    .line 522
    invoke-static {v0}, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->beginSection(Ljava/lang/String;)V

    .line 523
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->downloadTemplates()V

    .line 524
    invoke-static {v0}, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->endSection(Ljava/lang/String;)V

    const-string v0, "download template"

    .line 525
    invoke-static {v2, v0}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->stage(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 527
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->rebuildHeader()V

    :cond_1
    const-string v0, "rebuildHeader"

    .line 529
    invoke-static {v2, v0}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->stage(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 531
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->rebuildBody()V

    :cond_2
    const-string v0, "rebuildBody"

    .line 533
    invoke-static {v2, v0}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->stage(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3

    .line 535
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->rebuildFooter()V

    :cond_3
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    .line 539
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->stickyTop:Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;

    if-eqz v0, :cond_4

    .line 540
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->rebuildView()V

    const-string v0, "rebuildStickyTop"

    .line 541
    invoke-static {v2, v0}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->stage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    .line 545
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->stickyBottom:Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;

    if-eqz p1, :cond_5

    .line 546
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->rebuildView()V

    const-string p1, "rebuildStickyBottom"

    .line 547
    invoke-static {v2, p1}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->stage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string p1, "rebuildFooter"

    .line 551
    invoke-static {v2, p1}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->end(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "viewengine rebuild end"

    .line 552
    invoke-static {v1, p1}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->stage(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 556
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$5;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_6
    return-void
.end method

.method public refresh(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 668
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->refreshHeader()V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 671
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->refreshBody()V

    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 674
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->refreshFooter()V

    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    .line 677
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->stickyTop:Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;

    if-eqz v0, :cond_3

    .line 678
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->refreshView()V

    :cond_3
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    .line 682
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->stickyBottom:Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;

    if-eqz p1, :cond_4

    .line 683
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->refreshView()V

    :cond_4
    return-void
.end method

.method public refreshComponents(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 929
    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_1

    return-void

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getBodyList()Ljava/util/List;

    move-result-object v0

    .line 935
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    const-string p1, "refreshComponents\uff0c\u5dee\u91cf\u5237\u65b0\u5bb9\u5668\u6570\u636e\u4e0e\u6700\u65b0\u6570\u636e\u6e90\u6570\u636e\u4e0d\u5339\u914d\uff01"

    .line 937
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewEngine"

    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    const/16 p1, 0x1f

    .line 938
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->rebuild(I)V

    return-void

    .line 941
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->setData(Ljava/util/List;)V

    .line 942
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getHeaderList()Ljava/util/List;

    move-result-object v1

    .line 943
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v2}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getFooterList()Ljava/util/List;

    move-result-object v2

    .line 944
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v3}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getStickyTopList()Ljava/util/List;

    move-result-object v3

    .line 945
    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v4}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getStickyBottomList()Ljava/util/List;

    move-result-object v4

    .line 950
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 951
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 952
    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 953
    invoke-interface {v0, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 954
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    :cond_4
    invoke-interface {v1, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v7, 0x1

    .line 960
    :cond_5
    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v8, 0x1

    :cond_6
    if-eqz v3, :cond_7

    .line 963
    invoke-interface {v3, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v9, 0x1

    :cond_7
    if-eqz v4, :cond_3

    .line 966
    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v10, 0x1

    goto :goto_0

    .line 970
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 971
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 972
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 973
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/2addr v1, v12

    .line 974
    iget v2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mHeaderViewCount:I

    if-lez v2, :cond_9

    add-int v2, p1, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mHeaderViewCount:I

    add-int/2addr v0, v3

    if-ge v2, v0, :cond_9

    .line 976
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    add-int/2addr v1, v3

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->notifyItemRangeChanged(II)V

    goto :goto_1

    .line 978
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->notifyItemRangeChanged(II)V

    :cond_a
    :goto_1
    if-eqz v8, :cond_b

    const/4 p1, 0x4

    goto :goto_2

    :cond_b
    const/4 p1, 0x0

    :goto_2
    or-int/2addr p1, v7

    if-eqz v9, :cond_c

    const/16 v0, 0x8

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    :goto_3
    or-int/2addr p1, v0

    if-eqz v10, :cond_d

    const/16 v6, 0x10

    :cond_d
    or-int/2addr p1, v6

    .line 984
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->refresh(I)V

    return-void
.end method

.method public registerDynamicEventListener(Lcom/alibaba/android/ultron/vfw/event/OnDynamicEventListener;)V
    .locals 1

    .line 751
    const-class v0, Lcom/alibaba/android/ultron/vfw/event/OnDynamicEventListener;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->registerService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public registerIDMComponentChangedListener(Ljava/lang/String;Lcom/alibaba/android/ultron/listener/IDMComponentChangedListener;)V
    .locals 1

    .line 1119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->componentChangedListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public registerNativeViewHolderCreator(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderCreator;)V
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mViewHolderProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->registerNativeViewHolder(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderCreator;)V

    return-void
.end method

.method public registerService(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mServiceMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerTemplateService(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/template/ITemplateProvider;)V
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mTemplateProviderManager:Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;->register(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/template/ITemplateProvider;)V

    return-void
.end method

.method public registerViewRenderErrorListener(Lcom/alibaba/android/ultron/vfw/event/ViewRenderErrorListener;)V
    .locals 1

    .line 225
    const-class v0, Lcom/alibaba/android/ultron/vfw/event/ViewRenderErrorListener;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->registerService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public registerWebBridge(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/web/IWebEventBridge;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mWebBridgeMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mWebBridgeMap:Ljava/util/Map;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mWebBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeComponents(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 988
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getBodyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 993
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mHeaderViewCount:I

    add-int/2addr v1, v2

    .line 995
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->notifyItemRangeRemoved(II)V

    .line 996
    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 997
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->setData(Ljava/util/List;)V

    .line 998
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getBodyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->notifyItemRangeChanged(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method public scrollToPosition(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 2

    .line 893
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getBodyList()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 894
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 897
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 898
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAdapter(Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mILayoutExtend:Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;->useCustomLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mILayoutExtend:Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;

    invoke-interface {p1}, Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;->getRecyclerViewAdapter()Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    goto :goto_0

    .line 459
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    .line 462
    :goto_0
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void

    .line 454
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The bindViewTree method must be called before setAdapter method."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBizName(Ljava/lang/String;)V
    .locals 0

    .line 918
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mBizName:Ljava/lang/String;

    return-void
.end method

.method public setBodyViewHeaderCount(I)V
    .locals 0

    .line 1147
    iput p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mHeaderViewCount:I

    return-void
.end method

.method public setComponentLifecycleCallback(Lcom/alibaba/android/ultron/vfw/event/ComponentLifecycleCallback;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mViewHolderProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->setComponentLifecycleCallback(Lcom/alibaba/android/ultron/vfw/event/ComponentLifecycleCallback;)V

    return-void
.end method

.method public setDataSource(Lcom/alibaba/android/ultron/vfw/core/DataSource;)V
    .locals 4

    .line 477
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    .line 480
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getAllList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->setupMessageChannel(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    .line 482
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "setDataSource"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "ViewEngine"

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 486
    :goto_0
    sget-boolean v0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->sWriteRenderData:Z

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/alibaba/android/ultron/vfw/util/WriteRenderDataUtil;->writeRenderFile(Lcom/alibaba/android/ultron/vfw/core/DataSource;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setDinamicTemplateDownloaderCallback(Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mDinamicTemplateDownloadListener:Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;

    return-void
.end method

.method public setDowngradeSupport(Lcom/alibaba/android/ultron/vfw/downgrade/IDowngradeSupport;)V
    .locals 1

    .line 496
    const-class v0, Lcom/alibaba/android/ultron/vfw/downgrade/IDowngradeSupport;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->registerService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public setFooterStickyInfo(ILcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 0

    .line 734
    iput p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRawComponentIndexForFooter:I

    .line 735
    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mStickyComponentInFooter:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-void
.end method

.method public setHeaderStickyInfo(ILcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 0

    .line 729
    iput p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mRawComponentIndexForHeader:I

    .line 730
    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mStickyComponentInHeader:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-void
.end method

.method public setILayoutExtend(Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mILayoutExtend:Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;

    .line 215
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mILayoutExtend:Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;

    if-eqz p1, :cond_0

    .line 216
    invoke-interface {p1, p0}, Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;->init(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    :cond_0
    return-void
.end method

.method public setMarkType(I)V
    .locals 0

    .line 869
    iput p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mMarkType:I

    return-void
.end method

.method public setNotContainerReuse(Z)V
    .locals 0

    .line 1143
    iput-boolean p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mNotContainerReuse:Z

    return-void
.end method

.method public setUseRenderErrorAlert(Z)V
    .locals 0

    .line 873
    sput-boolean p1, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->mUseRenderErrorAlert:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
