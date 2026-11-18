.class public Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;
.super Ljava/lang/Object;
.source "CommonPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;,
        Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$OnCancelListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_TIME:I = 0xc8

.field private static DEFAULT_HEIGHT_RATIO:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "CommonPopupWindow"


# instance fields
.field private final context:Landroid/content/Context;

.field private mAlphaAnimationIn:Landroid/view/animation/AlphaAnimation;

.field private mAlphaAnimationOut:Landroid/view/animation/AlphaAnimation;

.field private mBgdView:Landroid/view/View;

.field private mCloseView:Landroid/widget/ImageView;

.field private mConfirmed:Z

.field private mContentView:Landroid/widget/FrameLayout;

.field private mFooterView:Landroid/widget/LinearLayout;

.field private mHeaderView:Landroid/widget/LinearLayout;

.field private mOnCancelListener:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$OnCancelListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRealView:Landroid/widget/RelativeLayout;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTranslateAnimationIn:Landroid/view/animation/TranslateAnimation;

.field private mTranslateAnimationOut:Landroid/view/animation/TranslateAnimation;

.field private final ultronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    new-instance v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;-><init>(Landroid/content/Context;Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mConfirmed:Z

    .line 77
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->context:Landroid/content/Context;

    .line 78
    invoke-static {p2, p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->createUltronInstance(Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;Landroid/content/Context;)Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->ultronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    .line 80
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->initViews(Landroid/content/Context;)V

    .line 81
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->bindKeyListeners()V

    .line 82
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->initAnimation()V

    .line 83
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->ultronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getExtraMap()Ljava/util/Map;

    move-result-object p1

    const-string p2, "CommonPopupWindow"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->ultronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$OnCancelListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mOnCancelListener:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$OnCancelListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mConfirmed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mBgdView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mAlphaAnimationOut:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method private bindKeyListeners()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mBgdView:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$3;-><init>(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mContentView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$4;-><init>(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private initAnimation()V
    .locals 14

    .line 145
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mAlphaAnimationIn:Landroid/view/animation/AlphaAnimation;

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mAlphaAnimationIn:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 148
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mAlphaAnimationOut:Landroid/view/animation/AlphaAnimation;

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mAlphaAnimationOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mAlphaAnimationOut:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$2;-><init>(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 165
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mTranslateAnimationIn:Landroid/view/animation/TranslateAnimation;

    .line 169
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mTranslateAnimationIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 171
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mTranslateAnimationOut:Landroid/view/animation/TranslateAnimation;

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mTranslateAnimationOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 4

    .line 115
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mContentView:Landroid/widget/FrameLayout;

    .line 118
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mBgdView:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mBgdView:Landroid/view/View;

    const-string v1, "#7F000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mBgdView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alibaba/android/ultron/vfw/R$layout;->ultron_popop_window:I

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mContentView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mRealView:Landroid/widget/RelativeLayout;

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mRealView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mRealView:Landroid/widget/RelativeLayout;

    sget v2, Lcom/alibaba/android/ultron/vfw/R$id;->ultron_popup_header_view:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mHeaderView:Landroid/widget/LinearLayout;

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mRealView:Landroid/widget/RelativeLayout;

    sget v2, Lcom/alibaba/android/ultron/vfw/R$id;->ultron_popup_recycler_view:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupRecyclerViewLayoutManager;

    invoke-direct {v2, p1, v1, v3}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupRecyclerViewLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mRealView:Landroid/widget/RelativeLayout;

    sget v2, Lcom/alibaba/android/ultron/vfw/R$id;->ultron_popup_footer_view:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mFooterView:Landroid/widget/LinearLayout;

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mRealView:Landroid/widget/RelativeLayout;

    sget v2, Lcom/alibaba/android/ultron/vfw/R$id;->ultron_popup_close_button:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mCloseView:Landroid/widget/ImageView;

    .line 133
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 135
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/util/ViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    sget v2, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->DEFAULT_HEIGHT_RATIO:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/4 v2, -0x1

    const/16 v3, 0x50

    invoke-direct {v0, v2, p1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 137
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mContentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mRealView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 139
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 141
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->ultronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mHeaderView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mFooterView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->initView(Landroid/widget/LinearLayout;Landroid/support/v7/widget/RecyclerView;Landroid/widget/LinearLayout;)V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1

    .line 261
    iput-boolean p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mConfirmed:Z

    .line 262
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mBgdView:Landroid/view/View;

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mAlphaAnimationOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 263
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mRealView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mTranslateAnimationOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->ultronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public renderData(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->ultronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->renderData(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V

    return-void
.end method

.method public renderRequestData(Lcom/taobao/android/ultron/datamodel/IDMRequester;Lcom/taobao/android/ultron/datamodel/IRequestCallback;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->ultronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->showLoading(Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$1;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$1;-><init>(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;Lcom/taobao/android/ultron/datamodel/IRequestCallback;)V

    .line 107
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->ultronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0, v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->renderRequestData(Lcom/taobao/android/ultron/datamodel/IDMRequester;Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/IRequestCallback;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V

    return-void
.end method

.method public setOnCancelListener(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$OnCancelListener;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mOnCancelListener:Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$OnCancelListener;

    return-void
.end method

.method public show(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_0

    .line 201
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 202
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 204
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 205
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 206
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 207
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    :cond_0
    if-eqz p1, :cond_4

    .line 211
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->access$400(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)I

    move-result v2

    if-gez v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mBgdView:Landroid/view/View;

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->access$400(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 214
    :cond_1
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->access$500(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->access$500(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)F

    move-result v2

    sget v3, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->DEFAULT_HEIGHT_RATIO:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 215
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mRealView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 216
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/alibaba/android/ultron/vfw/util/ViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->access$500(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 217
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mRealView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    :cond_2
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->access$600(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 220
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mCloseView:Landroid/widget/ImageView;

    const-string v3, "\u5173\u95ed"

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mCloseView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->access$600(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mCloseView:Landroid/widget/ImageView;

    new-instance v3, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$5;-><init>(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 230
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mCloseView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    :goto_0
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->access$700(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)I

    move-result v2

    if-gez v2, :cond_4

    .line 233
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->access$700(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)I

    move-result v2

    .line 234
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->access$800(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)F

    move-result v3

    .line 235
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->access$900(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)F

    move-result v4

    .line 233
    invoke-static {v2, v3, v4}, Lcom/alibaba/android/ultron/vfw/util/ViewUtil;->getGradientDrawable(IFF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    .line 236
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mRealView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mBgdView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 241
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 242
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$6;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$6;-><init>(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 250
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mBgdView:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mAlphaAnimationIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 251
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mRealView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mTranslateAnimationIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 253
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;->mContentView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    .line 254
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->access$1200(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)I

    move-result p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 253
    :goto_1
    invoke-virtual {v2, v3, p1, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 256
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "CommonPopupWindow"

    invoke-static {p1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_2
    return-void
.end method
