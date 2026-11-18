.class public Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;
.super Ljava/lang/Object;
.source "UltronInstance.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$RenderListener;,
        Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x1f

.field public static final BODY:I = 0x2

.field public static final FOOTER:I = 0x4

.field public static final HEADER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UltronInstance"

.field public static final TYPE_DIALOG_MARK:I = 0x3ea

.field public static final TYPE_NONE_MARK:I = 0x0

.field public static final TYPE_WATER_MARK:I = 0x3e9


# instance fields
.field private bizDXContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final extraMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCustomLoadRenderParsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomSubscriberParsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/event/base/CustomSubscriberParser;",
            ">;"
        }
    .end annotation
.end field

.field private mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

.field mDataLoadManager:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;

.field mDataLoaderConfig:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;

.field mDataLoaderContext:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

.field mDataLoaderListener:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

.field private mEventHandler:Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

.field mItemCreateStrategy:Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemCreateStrategy;

.field private mResponseHelper:Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

.field private mUltronEngine:Lcom/alibaba/android/ultron/engine/UltronEngine;

.field private mUltronInstanceConfig:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;

.field private mUtParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

.field private mViewInited:Z

.field private mWindow:Landroid/app/Dialog;

.field renderListener:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$RenderListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mCustomSubscriberParsers:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mCustomLoadRenderParsers:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->extraMap:Ljava/util/Map;

    .line 116
    new-instance v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;-><init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDataLoadManager:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewInited:Z

    .line 118
    new-instance v0, Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemCreateStrategy;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemCreateStrategy;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mItemCreateStrategy:Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemCreateStrategy;

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->bizDXContextMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mResponseHelper:Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewInited:Z

    return p0
.end method

.method public static createUltronInstance(Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;Landroid/content/Context;)Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 129
    new-instance v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;-><init>()V

    .line 130
    iput-object p0, v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mUltronInstanceConfig:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;

    .line 131
    iput-object p1, v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mContext:Landroid/content/Context;

    .line 132
    invoke-direct {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->init()V

    return-object v0

    .line 127
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "UltronInstance params can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private init()V
    .locals 3

    .line 140
    new-instance v0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mUltronInstanceConfig:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;

    invoke-virtual {v2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mUltronInstanceConfig:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->setBizName(Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;-><init>(Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mEventHandler:Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    .line 143
    new-instance v0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mUltronInstanceConfig:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->getGzip()Z

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;-><init>(ZLandroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    .line 144
    new-instance v0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-direct {v0, v1}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;-><init>(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mResponseHelper:Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mUltronInstanceConfig:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->getComponentDebugMark()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->setMarkType(I)V

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mUltronInstanceConfig:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->isUseRenderErrorAlert()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->setUseRenderErrorAlert(Z)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mEventHandler:Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->registerDynamicEventListener(Lcom/alibaba/android/ultron/vfw/event/OnDynamicEventListener;)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mUltronInstanceConfig:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->getHeaderViewCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->setBodyViewHeaderCount(I)V

    .line 151
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->initSubsriber()V

    .line 152
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->initLifecycleCallback()V

    .line 153
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->registerDefaultViewHolder()V

    return-void
.end method

.method private initEngine()V
    .locals 5

    .line 671
    new-instance v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$4;-><init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V

    .line 679
    new-instance v1, Lcom/alibaba/android/ultron/engine/UltronEngine;

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDataLoaderConfig:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;

    invoke-virtual {p0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getBizName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/alibaba/android/ultron/engine/UltronEngine;-><init>(Landroid/content/Context;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;Ljava/lang/String;Lcom/alibaba/android/ultron/engine/UltronEngine$ExceptionListener;)V

    iput-object v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mUltronEngine:Lcom/alibaba/android/ultron/engine/UltronEngine;

    return-void
.end method

.method private initLifecycleCallback()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mUltronInstanceConfig:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->getExposureStrategy()Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    move-result-object v2

    .line 158
    invoke-static {v0, v1, v2}, Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemExposureStrategy;->bindExposureEvent(Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Lcom/alibaba/android/ultron/event/base/UltronEventHandler;)V

    return-void
.end method

.method private initSubsriber()V
    .locals 4

    .line 163
    invoke-static {}, Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;->getEventsToSubscribe()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 169
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mEventHandler:Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/event/base/ISubscriber;

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->addSubscriber(Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/ISubscriber;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method private registerDefaultViewHolder()V
    .locals 2

    .line 189
    sget-object v0, Lcom/alibaba/android/ultron/vfw/viewholder/BundleLineViewHolder;->CREATOR:Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderCreator;

    const-string v1, "bundleLine"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->registerNativeViewHolderCreator(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderCreator;)V

    return-void
.end method

.method private setDataSource(Lcom/alibaba/android/ultron/vfw/core/DataSource;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->setDataSource(Lcom/alibaba/android/ultron/vfw/core/DataSource;)V

    .line 181
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getAllList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->setupMessageChannel(Ljava/util/List;)V

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

    .line 558
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 559
    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/util/IDMComponentUtils;->getListener(Lcom/taobao/android/ultron/common/model/IDMComponent;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 564
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 565
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getDataContext()Lcom/taobao/android/ultron/datamodel/IDMContext;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/taobao/android/ultron/datamodel/IDMContext;->getComponentByName(Ljava/lang/String;)Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 566
    invoke-interface {v2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getMessageChannel()Lcom/taobao/android/ultron/message/MessageChannel;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 567
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getMessageChannel()Lcom/taobao/android/ultron/message/MessageChannel;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 568
    invoke-interface {v2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getMessageChannel()Lcom/taobao/android/ultron/message/MessageChannel;

    move-result-object v2

    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getMessageChannel()Lcom/taobao/android/ultron/message/MessageChannel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/android/ultron/message/MessageChannel;->addObserver(Lcom/taobao/android/ultron/message/MessageChannel;)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public addViewHolderProvider(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderCreator;)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-interface {p2, v0}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderCreator;->create(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;

    move-result-object p2

    .line 483
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->addViewHolderProvider(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDataLoadManager:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->destroy()V

    .line 218
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->destroy()V

    .line 219
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mUltronEngine:Lcom/alibaba/android/ultron/engine/UltronEngine;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/engine/UltronEngine;->destroy()V

    :cond_0
    return-void
.end method

.method public getBizName()Ljava/lang/String;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getBizName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "default"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCustomLoadRenderParser(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mCustomLoadRenderParsers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser;

    return-object p1
.end method

.method public getCustomSubscriberParser(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/CustomSubscriberParser;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mCustomSubscriberParsers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/ultron/event/base/CustomSubscriberParser;

    return-object p1
.end method

.method public getDataContext()Lcom/taobao/android/ultron/datamodel/IDMContext;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    return-object v0
.end method

.method public getDataLoaderConfig()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDataLoaderConfig:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;

    return-object v0
.end method

.method public getDataLoaderListener()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDataLoaderListener:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

    return-object v0
.end method

.method public getDataSource()Lcom/alibaba/android/ultron/vfw/core/DataSource;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getDataSource()Lcom/alibaba/android/ultron/vfw/core/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public getEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mEventHandler:Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    return-object v0
.end method

.method public getExtraMap()Ljava/util/Map;
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

    .line 622
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->extraMap:Ljava/util/Map;

    return-object v0
.end method

.method public getLastLoaderContext()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDataLoaderContext:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    return-object v0
.end method

.method public getMessageManager()Lcom/taobao/android/ultron/message/MessageManager;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getMessageManager()Lcom/taobao/android/ultron/message/MessageManager;

    move-result-object v0

    return-object v0
.end method

.method public getRenderListener()Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$RenderListener;
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->renderListener:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$RenderListener;

    return-object v0
.end method

.method public getUltronEngine()Lcom/alibaba/android/ultron/engine/UltronEngine;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mUltronEngine:Lcom/alibaba/android/ultron/engine/UltronEngine;

    return-object v0
.end method

.method public getUtParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mUtParams:Ljava/util/Map;

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mEventHandler:Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->handleActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public hideLoading()V
    .locals 3

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mWindow:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mWindow:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mWindow:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 617
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "UltronInstance"

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public initView(Landroid/widget/LinearLayout;Landroid/support/v7/widget/RecyclerView;Landroid/widget/LinearLayout;)V
    .locals 1
    .param p2    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->bindViewTree(Landroid/widget/LinearLayout;Landroid/support/v7/widget/RecyclerView;Landroid/widget/LinearLayout;)V

    .line 196
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    new-instance p2, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    invoke-direct {p2, p1}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->setAdapter(Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;)V

    const/4 p1, 0x1

    .line 197
    iput-boolean p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewInited:Z

    return-void
.end method

.method public insertComponents(Ljava/util/List;Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 1
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

    .line 462
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->insertComponents(Ljava/util/List;Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->onCreate()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->onResume()V

    return-void
.end method

.method public parseUltronProtocol(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V
    .locals 0

    .line 375
    iget-object p3, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {p3, p2}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setRootComponentKey(Ljava/lang/String;)V

    .line 376
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mResponseHelper:Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

    invoke-virtual {p2, p1}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->parseResponse(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public processDataSource(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V
    .locals 3

    .line 380
    new-instance v0, Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;-><init>()V

    if-nez p1, :cond_0

    .line 384
    new-instance p1, Lcom/alibaba/android/ultron/vfw/instance/strategy/DefaultDataProcessStrategy;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-direct {p1, v1}, Lcom/alibaba/android/ultron/vfw/instance/strategy/DefaultDataProcessStrategy;-><init>(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getComponents()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-interface {p1, v1, v0, v2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;->onProcess(Ljava/util/List;Lcom/alibaba/android/ultron/vfw/core/DataSource;Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V

    .line 388
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getDynamicTemplateList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->setDynamicTemplateList(Ljava/util/List;)V

    .line 389
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->setDmContext(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V

    .line 390
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mItemCreateStrategy:Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemCreateStrategy;

    invoke-virtual {p1, v0, p0}, Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemCreateStrategy;->createItemEvent(Lcom/alibaba/android/ultron/vfw/core/DataSource;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V

    .line 391
    invoke-direct {p0, v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->setDataSource(Lcom/alibaba/android/ultron/vfw/core/DataSource;)V

    return-void
.end method

.method public rebuild(I)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->rebuild(I)V

    return-void
.end method

.method public refresh(I)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->refresh(I)V

    return-void
.end method

.method public refreshComponents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->refreshComponents(Ljava/util/List;)V

    return-void
.end method

.method public refreshCurrentContainer()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->refresh(I)V

    return-void
.end method

.method public registerCustomLoadRenderParser(Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mCustomLoadRenderParsers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerCustomSubscriberParser(Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/CustomSubscriberParser;)V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mCustomSubscriberParsers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerDataLoaderHander(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoader;)V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDataLoadManager:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->registerDataLoaderHander(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoader;)V

    return-void
.end method

.method public registerDataParserHander(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoaderParser;)V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDataLoadManager:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->registerDataParserHander(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoaderParser;)V

    return-void
.end method

.method public registerDynamicEventListener(Lcom/alibaba/android/ultron/vfw/event/OnDynamicEventListener;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->registerDynamicEventListener(Lcom/alibaba/android/ultron/vfw/event/OnDynamicEventListener;)V

    return-void
.end method

.method public registerNativeViewHolderCreator(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderCreator;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->registerNativeViewHolderCreator(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderCreator;)V

    return-void
.end method

.method public removeComponents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->removeComponents(Ljava/util/List;)V

    return-void
.end method

.method public renderData(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mResponseHelper:Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

    invoke-virtual {v0, p1}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->parseResponse(Lcom/alibaba/fastjson/JSONObject;)V

    .line 366
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {p0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getDataSource()Lcom/alibaba/android/ultron/vfw/core/DataSource;

    move-result-object v0

    invoke-static {p1, v0, p2, p0}, Lcom/alibaba/android/ultron/vfw/instance/strategy/RenderDataSourceStrategy;->render(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/android/ultron/vfw/core/DataSource;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V

    return-void

    .line 362
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "response can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public renderData(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v0, p2}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setRootComponentKey(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->renderData(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V

    return-void
.end method

.method public renderRequestData(Lcom/taobao/android/ultron/datamodel/IDMRequester;Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/IRequestCallback;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 339
    new-instance v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$1;

    invoke-direct {v0, p0, p3, p4}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$1;-><init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;Lcom/taobao/android/ultron/datamodel/IRequestCallback;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V

    invoke-interface {p1, p2, v0}, Lcom/taobao/android/ultron/datamodel/IDMRequester;->execute(Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 337
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "requester can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public renderWithContext(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;)V
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDataLoaderConfig:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->isLoadDataInCurrThread()Z

    move-result v0

    .line 496
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDataLoaderContext:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    .line 497
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->getOpType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initial"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mItemCreateStrategy:Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemCreateStrategy;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemCreateStrategy;->resetState()V

    .line 500
    :cond_0
    new-instance v1, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$2;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$2;-><init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;)V

    if-eqz v0, :cond_1

    .line 538
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDataLoadManager:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;

    invoke-virtual {p2, p1, v1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->renderWithContextInCurrThread(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;)V

    goto :goto_0

    .line 540
    :cond_1
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDataLoadManager:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;

    invoke-virtual {p2, p1, v1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->renderWithContext(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;)V

    :goto_0
    return-void
.end method

.method public resetDMContext()V
    .locals 3

    .line 330
    new-instance v0, Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mUltronInstanceConfig:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->getGzip()Z

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;-><init>(ZLandroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    .line 331
    new-instance v0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-direct {v0, v1}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;-><init>(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mResponseHelper:Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

    return-void
.end method

.method public respondToLinkage(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public respondToLinkage(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->scrollToPosition(I)V

    return-void
.end method

.method public scrollToPosition(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->scrollToPosition(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    return-void
.end method

.method public setBizDXParams(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->bizDXContextMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->bizDXContextMap:Ljava/util/Map;

    const-string v0, "bizParams"

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->addDinamicContextData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setComponentLifecycleCallback(Lcom/alibaba/android/ultron/vfw/event/ComponentLifecycleCallback;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->setComponentLifecycleCallback(Lcom/alibaba/android/ultron/vfw/event/ComponentLifecycleCallback;)V

    return-void
.end method

.method public setDMContextMode(I)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setStructureMergeMode(I)V

    :cond_0
    return-void
.end method

.method public setDataLoaderConfig(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;)V
    .locals 3

    .line 659
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDataLoaderConfig:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;

    .line 662
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->initEngine()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x2

    .line 664
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "initEngine exception: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "UltronInstance"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getBizName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logErrorEnvInit(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setDataLoaderListener(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mDataLoaderListener:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

    return-void
.end method

.method public setILayoutExtend(Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->setILayoutExtend(Lcom/alibaba/android/ultron/vfw/layout/ILayoutExtend;)V

    return-void
.end method

.method public setMarkType(I)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->setMarkType(I)V

    return-void
.end method

.method public setRenderListener(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$RenderListener;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->renderListener:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$RenderListener;

    return-void
.end method

.method public setUtParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 692
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mUtParams:Ljava/util/Map;

    return-void
.end method

.method public showLoading(Ljava/lang/String;)V
    .locals 4

    .line 577
    :try_start_0
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alibaba/android/ultron/vfw/R$style;->Dialog_Status_Container:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mWindow:Landroid/app/Dialog;

    .line 578
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mWindow:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alibaba/android/ultron/vfw/R$layout;->ultron_loading:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 579
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mWindow:Landroid/app/Dialog;

    sget v1, Lcom/alibaba/android/ultron/vfw/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    :cond_0
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mWindow:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 583
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    .line 584
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 585
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 586
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, 0x0

    .line 587
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 588
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 591
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/util/ViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    .line 592
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/util/ViewUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    sub-int v2, p1, v0

    if-lez p1, :cond_1

    if-lez v0, :cond_1

    if-lez v2, :cond_1

    .line 595
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mWindow:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 598
    :cond_1
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mWindow:Landroid/app/Dialog;

    new-instance v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$3;-><init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 604
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mWindow:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 606
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "UltronInstance"

    invoke-static {p1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public v2RegisterDinamicXHanlder(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V
    .locals 3
    .param p2    # Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getDinamicXEngineManager()Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->getDxEngine()Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->v2RegisterEventHandler(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V
    :try_end_0
    .catch Lcom/taobao/android/dinamic/exception/DinamicException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 265
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v2RegisterDinamicXHanlder error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/exception/DinamicException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "UltronInstance"

    invoke-static {p1, p2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public v2RegisterDinamicXParser(Ljava/lang/String;Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;)V
    .locals 3
    .param p2    # Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getDinamicXEngineManager()Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->getDxEngine()Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->v2RegisterParser(Ljava/lang/String;Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;)V
    :try_end_0
    .catch Lcom/taobao/android/dinamic/exception/DinamicException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 297
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v2RegisterDinamicXParser error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/exception/DinamicException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "UltronInstance"

    invoke-static {p1, p2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public v2registerDinamicXView(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;)V
    .locals 3
    .param p2    # Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getDinamicXEngineManager()Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->getDxEngine()Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->v2RegisterView(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;)V
    :try_end_0
    .catch Lcom/taobao/android/dinamic/exception/DinamicException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 311
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v2registerDinamicXView error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/exception/DinamicException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "UltronInstance"

    invoke-static {p1, p2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public v3RegisterDinamicXHanlder(JLcom/taobao/android/dinamicx/IDXEventHandler;)V
    .locals 1
    .param p3    # Lcom/taobao/android/dinamicx/IDXEventHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getDinamicXEngineManager()Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->getDxEngine()Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->registerEventHandler(JLcom/taobao/android/dinamicx/IDXEventHandler;)Z

    return-void
.end method

.method public v3RegisterDinamicXParser(JLcom/taobao/android/dinamicx/expression/parser/IDXDataParser;)V
    .locals 1
    .param p3    # Lcom/taobao/android/dinamicx/expression/parser/IDXDataParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getDinamicXEngineManager()Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->getDxEngine()Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->registerDataParser(JLcom/taobao/android/dinamicx/expression/parser/IDXDataParser;)Z

    return-void
.end method

.method public v3RegisterDinamicXView(JLcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;)V
    .locals 1
    .param p3    # Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 285
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getDinamicXEngineManager()Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->getDxEngine()Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->registerWidget(JLcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;)Z

    return-void
.end method
