.class public Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;
.super Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;
.source "WebViewHolder.java"


# static fields
.field private static final FLOAT_MAX_WIDTH:Ljava/lang/Float;

.field private static final INT_MAX_WIDTH:I = 0x177

.field private static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_USE_BRIDGE:Ljava/lang/String; = "useBridge"

.field private static final KEY_WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private mLastLoadUrl:Ljava/lang/String;

.field private mOriginUrl:Ljava/lang/String;

.field private mVesselView:Lcom/taobao/vessel/VesselView;

.field private mWebEventCallback:Lcom/alibaba/android/ultron/vfw/web/WebEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x43bb8000    # 375.0f

    .line 33
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->FLOAT_MAX_WIDTH:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    .line 38
    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mOriginUrl:Ljava/lang/String;

    return-void
.end method

.method private addParams2Url(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const-string v0, "useBridge"

    .line 112
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 119
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 123
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 126
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_3

    goto :goto_0

    .line 130
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 134
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mVesselView:Lcom/taobao/vessel/VesselView;

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/vessel/VesselView;->onDestroy()V

    return-void
.end method

.method protected onBindData(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 4
    .param p1    # Lcom/taobao/android/ultron/common/model/IDMComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mVesselView:Lcom/taobao/vessel/VesselView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mOriginUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mOriginUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0, v1, v0}, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->addParams2Url(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mLastLoadUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 95
    :cond_2
    iput-object v1, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mLastLoadUrl:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/alibaba/android/ultron/vfw/web/WebEventCallback;

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-direct {v0, v2}, Lcom/alibaba/android/ultron/vfw/web/WebEventCallback;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mWebEventCallback:Lcom/alibaba/android/ultron/vfw/web/WebEventCallback;

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mWebEventCallback:Lcom/alibaba/android/ultron/vfw/web/WebEventCallback;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/web/WebEventCallback;->setCurrComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    .line 98
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mVesselView:Lcom/taobao/vessel/VesselView;

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mWebEventCallback:Lcom/alibaba/android/ultron/vfw/web/WebEventCallback;

    invoke-virtual {p1, v0}, Lcom/taobao/vessel/VesselView;->setVesselViewCallback(Lcom/taobao/vessel/callback/VesselViewCallback;)V

    .line 100
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mVesselView:Lcom/taobao/vessel/VesselView;

    invoke-virtual {p1, v1}, Lcom/taobao/vessel/VesselView;->loadUrl(Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mVesselView:Lcom/taobao/vessel/VesselView;

    const-string v0, "WebMaskView"

    invoke-virtual {p1, v0}, Lcom/taobao/vessel/VesselView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    .line 102
    new-instance p1, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mVesselView:Lcom/taobao/vessel/VesselView;

    invoke-direct {p1, v0, v1}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;-><init>(Lcom/taobao/vessel/VesselView;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mVesselView:Lcom/taobao/vessel/VesselView;

    new-instance v2, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;

    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v3}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getBizName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v1, v3}, Lcom/alibaba/android/ultron/vfw/web/WebLoadListener;-><init>(Lcom/alibaba/android/ultron/vfw/web/WebMaskView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/taobao/vessel/VesselView;->setOnLoadListener(Lcom/taobao/vessel/callback/OnLoadListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    new-instance v0, Lcom/taobao/vessel/VesselView;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/vessel/VesselView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mVesselView:Lcom/taobao/vessel/VesselView;

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mOriginUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/util/ViewUtil;->createZeroHeightView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mOriginUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "height"

    .line 49
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    .line 50
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    .line 55
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v1, -0x1

    .line 59
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 61
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_2
    const/4 v0, -0x1

    .line 65
    :goto_1
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-lez v1, :cond_3

    int-to-float v1, v1

    .line 67
    sget-object v3, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->FLOAT_MAX_WIDTH:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 68
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    if-lez v0, :cond_5

    const/16 v1, 0x177

    if-le v0, v1, :cond_4

    const/16 v0, 0x177

    :cond_4
    int-to-float v0, v0

    .line 74
    sget-object v1, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->FLOAT_MAX_WIDTH:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 75
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 77
    :cond_5
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mVesselView:Lcom/taobao/vessel/VesselView;

    invoke-virtual {p1, v2}, Lcom/taobao/vessel/VesselView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->mVesselView:Lcom/taobao/vessel/VesselView;

    return-object p1
.end method
