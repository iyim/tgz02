.class public Lcom/taobao/uikit/extend/component/TBErrorView;
.super Landroid/widget/FrameLayout;
.source "TBErrorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/extend/component/TBErrorView$GoToReportListener;,
        Lcom/taobao/uikit/extend/component/TBErrorView$Status;,
        Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIMENSION_SET:[Ljava/lang/String;

.field private static final DEFAULT_MEASURE_SET:[Ljava/lang/String;

.field private static final MODULE_NAME:Ljava/lang/String; = "TBErrorView"

.field private static final MONITOR_POINT:Ljava/lang/String; = "show_error"

.field private static isMonitorRegistered:Z = false


# instance fields
.field private hasReported:Z

.field private mError:Lcom/taobao/uikit/extend/component/error/Error;

.field private mErrorFilter:Lcom/taobao/uikit/extend/component/error/AbsErrorFilter;

.field private mErrorInfoTextView:Landroid/widget/TextView;

.field private mIconRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private mIconString:Ljava/lang/String;

.field private mIconView:Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

.field private mLeftButton:Landroid/widget/Button;

.field private mRightButton:Landroid/widget/Button;

.field private mStatus:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

.field private mSubTitle:Ljava/lang/String;

.field private mSubTitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "pageName"

    const-string v1, "url"

    const-string v2, "title"

    const-string v3, "subtitle"

    const-string v4, "code"

    const-string v5, "mappingCode"

    const-string v6, "responseCode"

    const-string v7, "apiName"

    .line 568
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/uikit/extend/component/TBErrorView;->DEFAULT_DIMENSION_SET:[Ljava/lang/String;

    const-string v0, "value"

    .line 569
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/uikit/extend/component/TBErrorView;->DEFAULT_MEASURE_SET:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/uikit/extend/component/TBErrorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/uikit/extend/component/TBErrorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconRes:I

    .line 80
    sget-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_ERROR:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mStatus:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    const/4 v0, 0x0

    .line 563
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->hasReported:Z

    if-eqz p2, :cond_0

    .line 91
    sget-object v1, Lcom/taobao/uikit/extend/R$styleable;->TBErrorView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    sget p2, Lcom/taobao/uikit/extend/R$styleable;->TBErrorView_uik_errorIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconString:Ljava/lang/String;

    .line 95
    sget p2, Lcom/taobao/uikit/extend/R$styleable;->TBErrorView_uik_errorTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mTitle:Ljava/lang/String;

    .line 96
    sget p2, Lcom/taobao/uikit/extend/R$styleable;->TBErrorView_uik_errorSubTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitle:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    :cond_0
    new-instance p1, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/taobao/uikit/extend/R$string;->uik_default_rule:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/taobao/uikit/extend/component/error/DefaultErrorFilter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mErrorFilter:Lcom/taobao/uikit/extend/component/error/AbsErrorFilter;

    .line 103
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$layout;->uik_error:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/component/TBErrorView;->initErrorView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/uikit/extend/component/TBErrorView;)Lcom/taobao/uikit/extend/component/error/Error;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/uikit/extend/component/TBErrorView;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/uikit/extend/component/TBErrorView;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitle:Ljava/lang/String;

    return-object p0
.end method

.method public static doReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/uikit/extend/component/error/Error;)V
    .locals 14

    move-object/from16 v0, p3

    const-string v1, "null"

    if-eqz v0, :cond_0

    .line 501
    iget-object v2, v0, Lcom/taobao/uikit/extend/component/error/Error;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    iget-object v2, v0, Lcom/taobao/uikit/extend/component/error/Error;->url:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 506
    iget-object v3, v0, Lcom/taobao/uikit/extend/component/error/Error;->apiName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 507
    iget-object v3, v0, Lcom/taobao/uikit/extend/component/error/Error;->apiName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 511
    iget-object v4, v0, Lcom/taobao/uikit/extend/component/error/Error;->errorCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 512
    iget-object v4, v0, Lcom/taobao/uikit/extend/component/error/Error;->errorCode:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 516
    iget-object v5, v0, Lcom/taobao/uikit/extend/component/error/Error;->mappingCode:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 517
    iget-object v5, v0, Lcom/taobao/uikit/extend/component/error/Error;->mappingCode:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, v1

    :goto_3
    if-eqz v0, :cond_4

    .line 522
    iget v0, v0, Lcom/taobao/uikit/extend/component/error/Error;->responseCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    const-string v0, "0"

    .line 525
    :goto_4
    sget-boolean v6, Lcom/taobao/uikit/extend/component/TBErrorView;->isMonitorRegistered:Z

    const-string v7, "show_error"

    const-string v8, "TBErrorView"

    if-nez v6, :cond_7

    const/4 v6, 0x1

    .line 526
    sput-boolean v6, Lcom/taobao/uikit/extend/component/TBErrorView;->isMonitorRegistered:Z

    .line 528
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v6

    .line 529
    sget-object v9, Lcom/taobao/uikit/extend/component/TBErrorView;->DEFAULT_DIMENSION_SET:[Ljava/lang/String;

    array-length v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v10, :cond_5

    aget-object v13, v9, v12

    .line 530
    invoke-virtual {v6, v13}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 534
    :cond_5
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    .line 535
    sget-object v10, Lcom/taobao/uikit/extend/component/TBErrorView;->DEFAULT_MEASURE_SET:[Ljava/lang/String;

    array-length v12, v10

    :goto_6
    if-ge v11, v12, :cond_6

    aget-object v13, v10, v11

    .line 536
    invoke-virtual {v9, v13}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 540
    :cond_6
    invoke-static {v8, v7, v9, v6}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 544
    :cond_7
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v6

    .line 545
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, v1

    goto :goto_7

    :cond_8
    move-object/from16 v9, p2

    :goto_7
    const-string v10, "pageName"

    invoke-virtual {v6, v10, v9}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v9, "pageURL"

    .line 546
    invoke-virtual {v6, v9, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 547
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, v1

    goto :goto_8

    :cond_9
    move-object v2, p0

    :goto_8
    const-string v9, "title"

    invoke-virtual {v6, v9, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 548
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_9

    :cond_a
    move-object v1, p1

    :goto_9
    const-string v2, "subtitle"

    invoke-virtual {v6, v2, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v1, "code"

    .line 549
    invoke-virtual {v6, v1, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v1, "mappingCode"

    .line 550
    invoke-virtual {v6, v1, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v1, "responseCode"

    .line 551
    invoke-virtual {v6, v1, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v0, "apiName"

    .line 552
    invoke-virtual {v6, v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 555
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "value"

    .line 556
    invoke-virtual {v0, v3, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 559
    invoke-static {v8, v7, v6, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    return-void
.end method

.method private filterIcon()V
    .locals 2

    .line 375
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/uikit/extend/utils/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    sget v0, Lcom/taobao/uikit/extend/R$drawable;->uik_error_icon:I

    iput v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconRes:I

    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mStatus:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_EMPTY:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconRes:I

    if-gez v0, :cond_1

    .line 381
    sget v0, Lcom/taobao/uikit/extend/R$drawable;->uik_sys_error_icon:I

    iput v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconRes:I

    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mStatus:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_ERROR:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mErrorFilter:Lcom/taobao/uikit/extend/component/error/AbsErrorFilter;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/extend/component/error/AbsErrorFilter;->filterIcon(Lcom/taobao/uikit/extend/component/error/Error;)I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconRes:I

    :cond_3
    :goto_0
    return-void
.end method

.method private filterSubTitle()V
    .locals 3

    .line 395
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/uikit/extend/utils/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/taobao/uikit/extend/R$string;->uik_network_error_subtitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitle:Ljava/lang/String;

    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mStatus:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_EMPTY:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/taobao/uikit/extend/R$string;->uik_default_empty_subtitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitle:Ljava/lang/String;

    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mStatus:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_ERROR:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mErrorFilter:Lcom/taobao/uikit/extend/component/error/AbsErrorFilter;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/uikit/extend/component/error/AbsErrorFilter;->filterSubTitle(Lcom/taobao/uikit/extend/component/error/Error;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitle:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method private filterTitle()V
    .locals 3

    .line 414
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/uikit/extend/utils/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/taobao/uikit/extend/R$string;->uik_network_error_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mTitle:Ljava/lang/String;

    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mStatus:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_EMPTY:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/taobao/uikit/extend/R$string;->uik_default_empty_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mTitle:Ljava/lang/String;

    return-void

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mStatus:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_ERROR:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mErrorFilter:Lcom/taobao/uikit/extend/component/error/AbsErrorFilter;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/uikit/extend/component/error/AbsErrorFilter;->filterTitle(Lcom/taobao/uikit/extend/component/error/Error;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mTitle:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method private initErrorView(Landroid/view/View;)V
    .locals 2

    .line 116
    sget v0, Lcom/taobao/uikit/extend/R$id;->uik_error_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconView:Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

    .line 117
    sget v0, Lcom/taobao/uikit/extend/R$id;->uik_error_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mTitleView:Landroid/widget/TextView;

    .line 118
    sget v0, Lcom/taobao/uikit/extend/R$id;->uik_error_subTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitleView:Landroid/widget/TextView;

    .line 120
    sget p1, Lcom/taobao/uikit/extend/R$id;->uik_errorButtonPos:I

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/TBErrorView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mLeftButton:Landroid/widget/Button;

    .line 121
    sget p1, Lcom/taobao/uikit/extend/R$id;->uik_errorButtonNag:I

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/TBErrorView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mRightButton:Landroid/widget/Button;

    .line 122
    sget p1, Lcom/taobao/uikit/extend/R$id;->uik_mapping_code:I

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/TBErrorView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mErrorInfoTextView:Landroid/widget/TextView;

    .line 124
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mRightButton:Landroid/widget/Button;

    new-instance v0, Lcom/taobao/uikit/extend/component/TBErrorView$GoToReportListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/uikit/extend/component/TBErrorView$GoToReportListener;-><init>(Lcom/taobao/uikit/extend/component/TBErrorView;Lcom/taobao/uikit/extend/component/TBErrorView$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private report()V
    .locals 4

    .line 491
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    iget-object v3, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/uikit/extend/component/TBErrorView;->doReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/uikit/extend/component/error/Error;)V

    const/4 v0, 0x1

    .line 492
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->hasReported:Z

    return-void
.end method

.method private throwIllegal()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private updateErrorView()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mStatus:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_ERROR:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 130
    iget v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconRes:I

    if-gez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconView:Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

    invoke-virtual {v0, v2}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setPlaceHoldForeground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconView:Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setImageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :cond_0
    sget v0, Lcom/taobao/uikit/extend/R$drawable;->uik_sys_error_icon:I

    iput v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconRes:I

    .line 136
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconView:Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconRes:I

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setPlaceHoldForeground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconView:Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

    invoke-virtual {v0, v2}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setImageUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconView:Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconRes:I

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setPlaceHoldForeground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconView:Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

    invoke-virtual {v0, v2}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setImageUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mStatus:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_EMPTY:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    if-ne v0, v1, :cond_5

    .line 144
    iget v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconRes:I

    if-gez v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconView:Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

    invoke-virtual {v0, v2}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setPlaceHoldForeground(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconView:Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setImageUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_3
    sget v0, Lcom/taobao/uikit/extend/R$drawable;->uik_sys_error_icon:I

    iput v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconRes:I

    .line 150
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconView:Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconRes:I

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setPlaceHoldForeground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconView:Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

    invoke-virtual {v0, v2}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setImageUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconView:Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconRes:I

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setPlaceHoldForeground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconView:Lcom/taobao/uikit/extend/feature/view/TUrlImageView;

    invoke-virtual {v0, v2}, Lcom/taobao/uikit/extend/feature/view/TUrlImageView;->setImageUrl(Ljava/lang/String;)V

    .line 159
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 160
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mStatus:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_EMPTY:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    if-ne v0, v1, :cond_6

    .line 161
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/taobao/uikit/extend/R$string;->uik_default_empty_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mTitle:Ljava/lang/String;

    goto :goto_1

    .line 163
    :cond_6
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/taobao/uikit/extend/R$string;->uik_default_error_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mTitle:Ljava/lang/String;

    .line 166
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 169
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mStatus:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_EMPTY:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    if-ne v0, v1, :cond_8

    .line 170
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/taobao/uikit/extend/R$string;->uik_default_empty_subtitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitle:Ljava/lang/String;

    goto :goto_2

    .line 172
    :cond_8
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/error/Error;->errorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 173
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/error/Error;->errorMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitle:Ljava/lang/String;

    goto :goto_2

    .line 175
    :cond_9
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/taobao/uikit/extend/R$string;->uik_default_error_subtitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitle:Ljava/lang/String;

    .line 180
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mStatus:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_ERROR:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    const/4 v2, 0x4

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    if-eqz v0, :cond_e

    .line 184
    iget-object v0, v0, Lcom/taobao/uikit/extend/component/error/Error;->errorCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/error/Error;->mappingCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    .line 188
    :cond_b
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mErrorInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 185
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mErrorInfoTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mErrorInfoTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/error/Error;->mappingCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/error/Error;->errorCode:Ljava/lang/String;

    goto :goto_4

    :cond_d
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/error/Error;->mappingCode:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 190
    :cond_e
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mStatus:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_EMPTY:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    if-ne v0, v1, :cond_f

    .line 191
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mRightButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mErrorInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :cond_f
    :goto_5
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 434
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 435
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mStatus:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_ERROR:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    if-ne v0, v1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    if-nez v0, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->throwIllegal()V

    :cond_0
    return-void
.end method

.method public setButton(Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 250
    sget-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$1;->$SwitchMap$com$taobao$uikit$extend$component$TBErrorView$ButtonType:[I

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mLeftButton:Landroid/widget/Button;

    :goto_0
    if-eqz p1, :cond_2

    .line 280
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p3, :cond_1

    const/16 p2, 0x8

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 282
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setButtonVisibility(Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;I)V
    .locals 1

    .line 293
    sget-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$1;->$SwitchMap$com$taobao$uikit$extend$component$TBErrorView$ButtonType:[I

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mRightButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 303
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 296
    :cond_1
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mLeftButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 297
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setError(Lcom/taobao/uikit/extend/component/error/Error;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 354
    :cond_0
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    .line 355
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->filterIcon()V

    .line 356
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->filterTitle()V

    .line 357
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->filterSubTitle()V

    .line 358
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->updateErrorView()V

    .line 360
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/uikit/extend/utils/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mRightButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 361
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 364
    :cond_1
    iget-boolean p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->hasReported:Z

    if-nez p1, :cond_2

    .line 366
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->report()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 368
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 210
    iput p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconRes:I

    const/4 p1, 0x0

    .line 211
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconString:Ljava/lang/String;

    .line 212
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->filterIcon()V

    .line 213
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->updateErrorView()V

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconString:Ljava/lang/String;

    const/4 p1, -0x1

    .line 218
    iput p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconRes:I

    .line 219
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->filterIcon()V

    .line 220
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->updateErrorView()V

    return-void
.end method

.method public setIconfont(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setIconfont(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setStatus(Lcom/taobao/uikit/extend/component/TBErrorView$Status;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 317
    :cond_0
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mStatus:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    .line 319
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mStatus:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    sget-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_EMPTY:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    if-ne p1, v0, :cond_3

    .line 320
    iget p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconRes:I

    if-gez p1, :cond_1

    .line 321
    sget p1, Lcom/taobao/uikit/extend/R$drawable;->uik_sys_error_icon:I

    iput p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mIconRes:I

    .line 323
    :cond_1
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitle:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/taobao/uikit/extend/R$string;->uik_default_empty_subtitle:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitle:Ljava/lang/String;

    .line 326
    :cond_2
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mTitle:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 327
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/taobao/uikit/extend/R$string;->uik_default_empty_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mTitle:Ljava/lang/String;

    .line 331
    :cond_3
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->filterIcon()V

    .line 332
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->filterTitle()V

    .line 333
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->filterSubTitle()V

    .line 334
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->updateErrorView()V

    .line 336
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/uikit/extend/utils/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mRightButton:Landroid/widget/Button;

    if-eqz p1, :cond_4

    const/16 v0, 0x8

    .line 337
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mSubTitle:Ljava/lang/String;

    .line 241
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->filterSubTitle()V

    .line 242
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->updateErrorView()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mTitle:Ljava/lang/String;

    .line 232
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->filterTitle()V

    .line 233
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->updateErrorView()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 474
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 476
    iget-boolean v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->hasReported:Z

    if-nez v0, :cond_0

    .line 478
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBErrorView;->report()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 480
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 484
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    if-eqz p1, :cond_1

    .line 486
    iget-object p1, p1, Lcom/taobao/uikit/extend/component/error/Error;->errorCode:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/TBErrorView;->mError:Lcom/taobao/uikit/extend/component/error/Error;

    invoke-virtual {v2}, Lcom/taobao/uikit/extend/component/error/Error;->toMap()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "UI"

    const-string v2, "showError"

    invoke-static {v1, v2, p1, v0}, Lcom/taobao/monitor/terminator/ApmGodEye;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/util/Map;)V

    :cond_1
    return-void
.end method
