.class public Lcom/taobao/android/sku/AliXSkuCore;
.super Ljava/lang/Object;
.source "AliXSkuCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/sku/AliXSkuCore$IErrorListener;,
        Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AliXSkuCore"

.field public static final MARK_SHARED_PREFERENCES_KEY:Ljava/lang/String; = "type"

.field public static final MARK_SHARED_PREFERENCES_NAME:Ljava/lang/String; = "sku_mark_type"

.field public static final ULTRON_CONFIG_MODULE_NAME:Ljava/lang/String; = "sku"


# instance fields
.field private mBizType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

.field private mErrorListener:Lcom/taobao/android/sku/AliXSkuCore$IErrorListener;

.field private mHandlerCenter:Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;

.field private mJSCore:Lcom/taobao/android/sku/JSCore;

.field private mMarkType:I

.field private mScrollerLayoutOffsets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSkuPresenterEngine:Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;

.field private mStartTime:J

.field private mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

.field private mUniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/android/sku/AliXSkuCore;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3ea

    .line 41
    iput v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mMarkType:I

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mScrollerLayoutOffsets:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mStartTime:J

    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "sku"

    :goto_0
    iput-object p2, p0, Lcom/taobao/android/sku/AliXSkuCore;->mBizType:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/taobao/android/sku/AliXSkuCore;->mContext:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUniqueId:Ljava/lang/String;

    .line 75
    new-instance p2, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;

    invoke-direct {p2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;-><init>()V

    const/4 p3, 0x0

    .line 76
    invoke-virtual {p2, p3}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->useRenderErrorAlert(Z)Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;

    .line 77
    iget-object p3, p0, Lcom/taobao/android/sku/AliXSkuCore;->mBizType:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->moduleName(Ljava/lang/String;)Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;

    .line 78
    invoke-direct {p0, p1}, Lcom/taobao/android/sku/AliXSkuCore;->initMarkType(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->setComponentDebugMark(I)V

    const/4 p3, 0x1

    .line 79
    invoke-virtual {p2, p3}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->gzip(Z)Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;

    .line 80
    invoke-static {p2, p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->createUltronInstance(Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;Landroid/content/Context;)Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    .line 82
    new-instance p2, Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    iget-object p3, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-direct {p2, p1, p3}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;-><init>(Landroid/content/Context;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V

    iput-object p2, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    .line 83
    new-instance p2, Lcom/taobao/android/sku/JSCore;

    iget-object p3, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-direct {p2, p3, v0}, Lcom/taobao/android/sku/JSCore;-><init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;Lcom/taobao/android/sku/data/AliXSkuDataEngine;)V

    iput-object p2, p0, Lcom/taobao/android/sku/AliXSkuCore;->mJSCore:Lcom/taobao/android/sku/JSCore;

    .line 84
    new-instance p2, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;

    invoke-direct {p2, p1, p0}, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;-><init>(Landroid/content/Context;Lcom/taobao/android/sku/AliXSkuCore;)V

    iput-object p2, p0, Lcom/taobao/android/sku/AliXSkuCore;->mSkuPresenterEngine:Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;

    .line 85
    new-instance p2, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;

    iget-object p3, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {p3}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    move-result-object p3

    invoke-direct {p2, p1, p0, p3}, Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;-><init>(Landroid/content/Context;Lcom/taobao/android/sku/AliXSkuCore;Lcom/alibaba/android/ultron/event/base/UltronEventHandler;)V

    iput-object p2, p0, Lcom/taobao/android/sku/AliXSkuCore;->mHandlerCenter:Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;

    .line 87
    invoke-direct {p0}, Lcom/taobao/android/sku/AliXSkuCore;->initRenderListener()V

    .line 88
    invoke-direct {p0}, Lcom/taobao/android/sku/AliXSkuCore;->registerBuiltInDinamicXWidget()V

    return-void

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params context can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/taobao/android/sku/AliXSkuCore;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mBizType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/android/sku/AliXSkuCore;)Lcom/taobao/android/sku/AliXSkuCore$IErrorListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mErrorListener:Lcom/taobao/android/sku/AliXSkuCore$IErrorListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/android/sku/AliXSkuCore;)Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mSkuPresenterEngine:Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/android/sku/AliXSkuCore;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/taobao/android/sku/AliXSkuCore;->performanceMonitor()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initMarkType(Landroid/content/Context;)I
    .locals 2

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "sku_mark_type"

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mMarkType:I

    const-string v1, "type"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/android/sku/AliXSkuCore;->mMarkType:I

    .line 136
    iget p1, p0, Lcom/taobao/android/sku/AliXSkuCore;->mMarkType:I

    return p1
.end method

.method private initRenderListener()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    new-instance v1, Lcom/taobao/android/sku/AliXSkuCore$1;

    invoke-direct {v1, p0}, Lcom/taobao/android/sku/AliXSkuCore$1;-><init>(Lcom/taobao/android/sku/AliXSkuCore;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->setRenderListener(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$RenderListener;)V

    return-void
.end method

.method private performanceMonitor()V
    .locals 7

    .line 398
    iget-wide v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/taobao/android/sku/AliXSkuCore;->mStartTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x19

    .line 401
    div-long/2addr v0, v4

    mul-long v0, v0, v4

    .line 402
    iget-object v4, p0, Lcom/taobao/android/sku/AliXSkuCore;->mBizType:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f00\u542f\u8017\u65f6\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UPM_SKU_000"

    invoke-static {v4, v1, v0}, Lcom/taobao/android/sku/utils/SkuLogUtils;->alarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iput-wide v2, p0, Lcom/taobao/android/sku/AliXSkuCore;->mStartTime:J

    :cond_0
    return-void
.end method

.method private registerBuiltInDinamicXWidget()V
    .locals 4

    .line 122
    sget-wide v0, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->DX_WIDGET_ID:J

    new-instance v2, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;

    invoke-direct {v2}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/taobao/android/sku/AliXSkuCore;->registerV3DinamicXView(JLcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;)V

    .line 123
    sget-wide v0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;->DX_WIDGET_ID:J

    new-instance v2, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;

    invoke-direct {v2}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/taobao/android/sku/AliXSkuCore;->registerV3DinamicXView(JLcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;)V

    .line 124
    sget-wide v0, Lcom/taobao/android/sku/dinamicx/widget/SkuIconFontView;->DX_WIDGET_ID:J

    new-instance v2, Lcom/taobao/android/sku/dinamicx/widget/SkuIconFontView;

    invoke-direct {v2}, Lcom/taobao/android/sku/dinamicx/widget/SkuIconFontView;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/taobao/android/sku/AliXSkuCore;->registerV3DinamicXView(JLcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;)V

    .line 126
    sget-wide v0, Lcom/taobao/android/sku/dinamicx/parser/SwitchCase;->DX_PARSER_ID:J

    new-instance v2, Lcom/taobao/android/sku/dinamicx/parser/SwitchCase;

    invoke-direct {v2}, Lcom/taobao/android/sku/dinamicx/parser/SwitchCase;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/taobao/android/sku/AliXSkuCore;->registerV3DinamicXParser(JLcom/taobao/android/dinamicx/expression/parser/IDXDataParser;)V

    .line 127
    sget-wide v0, Lcom/taobao/android/sku/dinamicx/parser/ScrollInitOffset;->DX_PARSER_ID:J

    new-instance v2, Lcom/taobao/android/sku/dinamicx/parser/ScrollInitOffset;

    iget-object v3, p0, Lcom/taobao/android/sku/AliXSkuCore;->mScrollerLayoutOffsets:Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/taobao/android/sku/dinamicx/parser/ScrollInitOffset;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/taobao/android/sku/AliXSkuCore;->registerV3DinamicXParser(JLcom/taobao/android/dinamicx/expression/parser/IDXDataParser;)V

    .line 129
    sget-wide v0, Lcom/taobao/android/sku/dinamicx/event/OnScrollEvent;->DX_WIDGET_ID:J

    new-instance v2, Lcom/taobao/android/sku/dinamicx/event/OnScrollEvent;

    iget-object v3, p0, Lcom/taobao/android/sku/AliXSkuCore;->mScrollerLayoutOffsets:Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/taobao/android/sku/dinamicx/event/OnScrollEvent;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/taobao/android/sku/AliXSkuCore;->registerV3DinamicXHandler(JLcom/taobao/android/dinamicx/IDXEventHandler;)V

    return-void
.end method

.method private showSkuInternal(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V
    .locals 1

    .line 468
    invoke-virtual {p0}, Lcom/taobao/android/sku/AliXSkuCore;->dismissLoading()V

    .line 470
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->getUltronTemplateUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    iget-object p1, p0, Lcom/taobao/android/sku/AliXSkuCore;->mJSCore:Lcom/taobao/android/sku/JSCore;

    invoke-virtual {p1, p2, p3, p4}, Lcom/taobao/android/sku/JSCore;->showSku(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V

    goto :goto_0

    .line 474
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/android/sku/AliXSkuCore;->updateSku(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V

    .line 478
    :goto_0
    iget-object p1, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {p1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->getItemId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {p2}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->getSellerId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/taobao/android/sku/utils/SkuLogUtils;->exposureNewSKU(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->destroy()V

    return-void
.end method

.method public dismissLoading()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mSkuPresenterEngine:Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;

    invoke-virtual {v0}, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->dismissLoading()V

    return-void
.end method

.method public dismissPresenter()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mSkuPresenterEngine:Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;

    invoke-virtual {v0}, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->dismiss()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDataEngine()Lcom/taobao/android/sku/data/AliXSkuDataEngine;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    return-object v0
.end method

.method public getHandlerCenter()Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mHandlerCenter:Lcom/taobao/android/sku/handler/AliXSkuHandlerCenter;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->getItemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarkType()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mMarkType:I

    return v0
.end method

.method public getOriginalData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->getOriginalData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getScrollerLayoutOffsets()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mScrollerLayoutOffsets:Ljava/util/Map;

    return-object v0
.end method

.method public getSkuPresenterEngine()Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mSkuPresenterEngine:Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;

    return-object v0
.end method

.method public getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public initDataConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->initData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object p1, p0, Lcom/taobao/android/sku/AliXSkuCore;->mJSCore:Lcom/taobao/android/sku/JSCore;

    iget-object p2, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {p2}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->getUltronTemplateUrl()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {p3}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->getUltronTemplateMd5()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {p4}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->getJavaScriptUrl()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->getJavaScriptMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/taobao/android/sku/JSCore;->initData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initDataContext(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->initData(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public initDataContext(Ljava/lang/String;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->initData(Ljava/lang/String;)V

    return-void
.end method

.method public initPresenterView()V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mSkuPresenterEngine:Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;

    invoke-virtual {v0}, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->getSkuPresenter()Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-interface {v0}, Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;->getHeaderView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-interface {v0}, Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;->getBodyView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-interface {v0}, Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;->getFooterView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->initView(Landroid/widget/LinearLayout;Landroid/support/v7/widget/RecyclerView;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public presentLoading()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mSkuPresenterEngine:Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;

    invoke-virtual {v0}, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->presentLoading()V

    return-void
.end method

.method public refreshSku()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->refresh(I)V

    return-void
.end method

.method public refreshSku(I)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->refresh(I)V

    return-void
.end method

.method public registerAlixSkuPresenter(Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mSkuPresenterEngine:Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->registerSkuPresenter(Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;)V

    return-void
.end method

.method public registerDataParserGroup(Lcom/taobao/android/sku/data/parser/AliXDataParserGroup;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->registerDataParserGroup(Lcom/taobao/android/sku/data/parser/AliXDataParserGroup;)V

    return-void
.end method

.method public registerV2DinamicXHandler(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->v2RegisterDinamicXHanlder(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V

    return-void
.end method

.method public registerV2DinamicXParser(Ljava/lang/String;Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->v2RegisterDinamicXParser(Ljava/lang/String;Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;)V

    return-void
.end method

.method public registerV2DinamicXView(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->v2registerDinamicXView(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;)V

    return-void
.end method

.method public registerV3DinamicXHandler(JLcom/taobao/android/dinamicx/IDXEventHandler;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->v3RegisterDinamicXHanlder(JLcom/taobao/android/dinamicx/IDXEventHandler;)V

    return-void
.end method

.method public registerV3DinamicXParser(JLcom/taobao/android/dinamicx/expression/parser/IDXDataParser;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->v3RegisterDinamicXParser(JLcom/taobao/android/dinamicx/expression/parser/IDXDataParser;)V

    return-void
.end method

.method public registerV3DinamicXView(JLcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->v3RegisterDinamicXView(JLcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;)V

    return-void
.end method

.method public setErrorListener(Lcom/taobao/android/sku/AliXSkuCore$IErrorListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/taobao/android/sku/AliXSkuCore;->mErrorListener:Lcom/taobao/android/sku/AliXSkuCore$IErrorListener;

    return-void
.end method

.method public setExtInputData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->setExtInput(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public setStaticExtInput(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->setStaticExtInput(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public showSku()V
    .locals 2

    .line 412
    new-instance v0, Lcom/taobao/android/sku/AliXSkuCore$2;

    invoke-direct {v0, p0}, Lcom/taobao/android/sku/AliXSkuCore$2;-><init>(Lcom/taobao/android/sku/AliXSkuCore;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/taobao/android/sku/AliXSkuCore;->showSkuInternal(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public showSku(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V
    .locals 2

    .line 427
    new-instance v0, Lcom/taobao/android/sku/AliXSkuCore$3;

    invoke-direct {v0, p0}, Lcom/taobao/android/sku/AliXSkuCore$3;-><init>(Lcom/taobao/android/sku/AliXSkuCore;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/taobao/android/sku/AliXSkuCore;->showSkuInternal(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public showSku(Ljava/lang/String;)V
    .locals 2

    .line 442
    new-instance v0, Lcom/taobao/android/sku/AliXSkuCore$4;

    invoke-direct {v0, p0}, Lcom/taobao/android/sku/AliXSkuCore$4;-><init>(Lcom/taobao/android/sku/AliXSkuCore;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v1, v0}, Lcom/taobao/android/sku/AliXSkuCore;->showSkuInternal(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public showSku(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V
    .locals 2

    .line 458
    new-instance v0, Lcom/taobao/android/sku/AliXSkuCore$5;

    invoke-direct {v0, p0}, Lcom/taobao/android/sku/AliXSkuCore$5;-><init>(Lcom/taobao/android/sku/AliXSkuCore;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/taobao/android/sku/AliXSkuCore;->showSkuInternal(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public switchMarkType(I)V
    .locals 1

    .line 140
    iput p1, p0, Lcom/taobao/android/sku/AliXSkuCore;->mMarkType:I

    .line 142
    iget-object p1, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    iget v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mMarkType:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->setMarkType(I)V

    return-void
.end method

.method public updateOriginalData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/taobao/android/sku/AliXSkuCore;->dismissLoading()V

    if-eqz p1, :cond_1

    .line 328
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mScrollerLayoutOffsets:Ljava/util/Map;

    .line 335
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->updateOriginalData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 336
    iget-object p1, p0, Lcom/taobao/android/sku/AliXSkuCore;->mJSCore:Lcom/taobao/android/sku/JSCore;

    invoke-virtual {p1}, Lcom/taobao/android/sku/JSCore;->updateData()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateOriginalData(Ljava/lang/String;)V
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/taobao/android/sku/AliXSkuCore;->dismissLoading()V

    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 347
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mScrollerLayoutOffsets:Ljava/util/Map;

    .line 349
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->updateOriginalData(Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lcom/taobao/android/sku/AliXSkuCore;->mJSCore:Lcom/taobao/android/sku/JSCore;

    invoke-virtual {p1}, Lcom/taobao/android/sku/JSCore;->updateData()V

    return-void
.end method

.method public updateSku(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->generateBizData(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    .line 487
    iget-object p1, p0, Lcom/taobao/android/sku/AliXSkuCore;->mDataEngine:Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    invoke-virtual {p1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->getOriginalData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 489
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->renderData(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V

    if-eqz p4, :cond_0

    .line 491
    invoke-interface {p4}, Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;->onUpdated()V

    :cond_0
    return-void
.end method
