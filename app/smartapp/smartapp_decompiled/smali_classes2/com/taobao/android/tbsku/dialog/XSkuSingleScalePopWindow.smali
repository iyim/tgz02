.class public Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;
.super Ljava/lang/Object;
.source "XSkuSingleScalePopWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;
    }
.end annotation


# instance fields
.field private mCurrentIndex:Landroid/widget/TextView;

.field private mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

.field private mTotalSize:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->initPopWindow(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/taobao/android/tbsku/image/SkuImageVO;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 44
    iget-object v1, p2, Lcom/taobao/android/tbsku/image/SkuImageVO;->mImgUrl:Ljava/lang/String;

    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p2, p2, Lcom/taobao/android/tbsku/image/SkuImageVO;->mDesc:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->initPopWindow(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;)Landroid/widget/TextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mCurrentIndex:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;ILcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->sendChangeProeEvent(ILcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private compensateOnPageSelected(ILcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 104
    iget-object v1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mCurrentIndex:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v0, p1, :cond_0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->sendChangeProeEvent(ILcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V

    :cond_0
    return-void
.end method

.method private initCurrentItem(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 71
    iget-object v0, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mTotalSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "pvId"

    .line 74
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 76
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p1

    :goto_0
    if-ge v3, p1, :cond_6

    .line 77
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    invoke-direct {p0, v3, p2, p3}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->compensateOnPageSelected(ILcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V

    goto :goto_4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "icon"

    .line 87
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    :goto_2
    if-ge v3, v0, :cond_6

    .line 89
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    const-string v2, "url"

    .line 93
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 94
    invoke-direct {p0, v3, p2, p3}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->compensateOnPageSelected(ILcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-void
.end method

.method private initPopWindow(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V
    .locals 2

    .line 59
    new-instance v0, Lcom/taobao/android/sku/widget/ExtraDialog;

    sget v1, Lcom/taobao/android/tbsku/R$style;->Alix_Sku_PopupDialog:I

    invoke-direct {v0, p1, v1}, Lcom/taobao/android/sku/widget/ExtraDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/taobao/android/tbsku/R$layout;->xsku_image_container:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mView:Landroid/view/View;

    .line 61
    iget-object p1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mView:Landroid/view/View;

    sget v0, Lcom/taobao/android/tbsku/R$id;->view_pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 62
    iget-object p1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mView:Landroid/view/View;

    sget v0, Lcom/taobao/android/tbsku/R$id;->tv_current_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mCurrentIndex:Landroid/widget/TextView;

    .line 63
    iget-object p1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mView:Landroid/view/View;

    sget v0, Lcom/taobao/android/tbsku/R$id;->tv_total_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mTotalSize:Landroid/widget/TextView;

    .line 64
    iget-object p1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;

    iget-object v1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    invoke-direct {v0, v1, p2, p3}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$ImageAdapter;-><init>(Landroid/app/Dialog;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 65
    invoke-direct {p0, p3, p4}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->initPropChangeEvent(Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V

    .line 66
    invoke-direct {p0, p2, p3, p4}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->initCurrentItem(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V

    return-void
.end method

.method private initPropChangeEvent(Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 114
    new-instance v1, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$1;-><init>(Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method private newChangePropEvent(Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/event/base/UltronEvent;
    .locals 4

    .line 152
    invoke-virtual {p1}, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->buildUltronEvent()Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object p1

    const-string v0, "adjustState"

    .line 153
    invoke-virtual {p1, v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventType(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 154
    new-instance v1, Lcom/taobao/android/ultron/datamodel/imp/DMEvent;

    new-instance v2, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$2;

    invoke-direct {v2, p0}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$2;-><init>(Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;)V

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/taobao/android/ultron/datamodel/imp/DMEvent;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventParams(Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 158
    new-instance v0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$3;

    invoke-direct {v0, p0, p2}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$3;-><init>(Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;Lcom/alibaba/fastjson/JSONObject;)V

    .line 161
    invoke-virtual {v0}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$3;->toArray()[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "extraParams"

    .line 158
    invoke-virtual {p1, v0, p2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    return-object p1
.end method

.method private sendChangeProeEvent(ILcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 135
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    const-string v0, "viewId"

    .line 139
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    div-int/lit8 p1, p1, 0x6

    int-to-float p1, p1

    const v1, 0x43ae4000    # 348.5f

    mul-float p1, p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 144
    invoke-virtual {p3}, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;->getScrollerLayoutOffsets()Ljava/util/Map;

    move-result-object v1

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_1
    invoke-direct {p0, p3, p2}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->newChangePropEvent(Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object p1

    .line 148
    invoke-virtual {p3}, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->dispatchEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private viewParentSafeCheck()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 179
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 180
    nop

    nop

    iget-object v1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public show()V
    .locals 4

    .line 166
    invoke-direct {p0}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->viewParentSafeCheck()V

    .line 167
    iget-object v0, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->mView:Landroid/view/View;

    const/16 v2, 0x50

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/taobao/android/sku/widget/ExtraDialog;->showDialog(Landroid/view/View;III)V

    return-void
.end method
