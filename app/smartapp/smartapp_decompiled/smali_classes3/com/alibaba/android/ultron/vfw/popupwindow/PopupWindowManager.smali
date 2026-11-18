.class public Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;
.super Ljava/lang/Object;
.source "PopupWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;,
        Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$OnCancelListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_TIME:I = 0xc8

.field private static DEFAULT_HEIGHT_RATIO:F = 0.6f


# instance fields
.field private mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

.field private mAlphaAnimationIn:Landroid/view/animation/AlphaAnimation;

.field private mAlphaAnimationOut:Landroid/view/animation/AlphaAnimation;

.field private mBgdView:Landroid/view/View;

.field private mCloseView:Landroid/widget/ImageView;

.field private mConfirmed:Z

.field private mContentView:Landroid/widget/FrameLayout;

.field private mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

.field private mFooterView:Landroid/widget/LinearLayout;

.field private mHeaderView:Landroid/widget/LinearLayout;

.field private mOnCancelListener:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$OnCancelListener;

.field private mPopupRecyclerViewLayoutManager:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupRecyclerViewLayoutManager;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRealView:Landroid/widget/RelativeLayout;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTranslateAnimationIn:Landroid/view/animation/TranslateAnimation;

.field private mTranslateAnimationOut:Landroid/view/animation/TranslateAnimation;

.field private mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mConfirmed:Z

    .line 69
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    .line 70
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->initViews()V

    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->bindKeyListeners()V

    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->initAnimation()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)Landroid/widget/PopupWindow;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mBgdView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mConfirmed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mAlphaAnimationOut:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$OnCancelListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mOnCancelListener:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$OnCancelListener;

    return-object p0
.end method

.method private bindKeyListeners()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mBgdView:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$2;-><init>(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mContentView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$3;-><init>(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private initAnimation()V
    .locals 14

    .line 115
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mAlphaAnimationIn:Landroid/view/animation/AlphaAnimation;

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mAlphaAnimationIn:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 118
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mAlphaAnimationOut:Landroid/view/animation/AlphaAnimation;

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mAlphaAnimationOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mAlphaAnimationOut:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$1;-><init>(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 135
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

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mTranslateAnimationIn:Landroid/view/animation/TranslateAnimation;

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mTranslateAnimationIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 141
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mTranslateAnimationOut:Landroid/view/animation/TranslateAnimation;

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mTranslateAnimationOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    return-void
.end method

.method private initViews()V
    .locals 5

    .line 84
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mContentView:Landroid/widget/FrameLayout;

    .line 87
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mBgdView:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mBgdView:Landroid/view/View;

    const-string v1, "#7F000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mBgdView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alibaba/android/ultron/vfw/R$layout;->ultron_popop_window:I

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mContentView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mRealView:Landroid/widget/RelativeLayout;

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mRealView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mRealView:Landroid/widget/RelativeLayout;

    sget v2, Lcom/alibaba/android/ultron/vfw/R$id;->ultron_popup_header_view:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mHeaderView:Landroid/widget/LinearLayout;

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mRealView:Landroid/widget/RelativeLayout;

    sget v2, Lcom/alibaba/android/ultron/vfw/R$id;->ultron_popup_recycler_view:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mRealView:Landroid/widget/RelativeLayout;

    sget v2, Lcom/alibaba/android/ultron/vfw/R$id;->ultron_popup_footer_view:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mFooterView:Landroid/widget/LinearLayout;

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mRealView:Landroid/widget/RelativeLayout;

    sget v2, Lcom/alibaba/android/ultron/vfw/R$id;->ultron_popup_close_button:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mCloseView:Landroid/widget/ImageView;

    .line 99
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    .line 101
    invoke-virtual {v2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/ultron/vfw/util/ViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->DEFAULT_HEIGHT_RATIO:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/4 v3, -0x1

    const/16 v4, 0x50

    invoke-direct {v0, v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 103
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mContentView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mRealView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 107
    new-instance v0, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-direct {v0, v2}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    .line 108
    new-instance v0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupRecyclerViewLayoutManager;

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupRecyclerViewLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupRecyclerViewLayoutManager:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupRecyclerViewLayoutManager;

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupRecyclerViewLayoutManager:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupRecyclerViewLayoutManager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupRecyclerViewLayoutManager;->setOrientation(I)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupRecyclerViewLayoutManager:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupRecyclerViewLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private rebuildBody()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getBodyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupRecyclerViewLayoutManager:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupRecyclerViewLayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupRecyclerViewLayoutManager;->setScrollEnabled(Z)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupRecyclerViewLayoutManager:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupRecyclerViewLayoutManager;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupRecyclerViewLayoutManager;->setScrollEnabled(Z)V

    .line 267
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->setData(Ljava/util/List;)V

    .line 268
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private rebuildFooter()V
    .locals 6

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mFooterView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mFooterView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getFooterList()Ljava/util/List;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    const-class v2, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    if-eqz v0, :cond_2

    .line 284
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 285
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 286
    invoke-virtual {v1, v2}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->getItemViewType(Lcom/taobao/android/ultron/common/model/IDMComponent;)I

    move-result v3

    .line 287
    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mFooterView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v3}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    move-result-object v3

    .line 289
    iget-object v4, v3, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 291
    iget-object v5, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mFooterView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    :cond_1
    invoke-virtual {v1, v3, v2}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->bindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private rebuildHeader()V
    .locals 6

    .line 236
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mHeaderView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 237
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    const-class v1, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    .line 242
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getHeaderList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 244
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 245
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 246
    invoke-virtual {v0, v2}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->getItemViewType(Lcom/taobao/android/ultron/common/model/IDMComponent;)I

    move-result v3

    .line 247
    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    move-result-object v3

    .line 249
    iget-object v4, v3, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 251
    iget-object v5, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    :cond_1
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->bindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1

    .line 230
    iput-boolean p1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mConfirmed:Z

    .line 231
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mBgdView:Landroid/view/View;

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mAlphaAnimationOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 232
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mRealView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mTranslateAnimationOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public getDataSource()Lcom/alibaba/android/ultron/vfw/core/DataSource;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupWindow:Landroid/widget/PopupWindow;

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

.method public refreshBody()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mAdapter:Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDataSource(Lcom/alibaba/android/ultron/vfw/core/DataSource;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mDataSource:Lcom/alibaba/android/ultron/vfw/core/DataSource;

    return-void
.end method

.method public setOnCancelListener(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$OnCancelListener;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mOnCancelListener:Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$OnCancelListener;

    return-void
.end method

.method public show(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;)V
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v3}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 171
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 173
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 174
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    :cond_0
    if-eqz p1, :cond_4

    .line 180
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;->access$300(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;)I

    move-result v0

    if-gez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mBgdView:Landroid/view/View;

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;->access$300(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 183
    :cond_1
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;->access$400(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;->access$400(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;)F

    move-result v0

    sget v3, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->DEFAULT_HEIGHT_RATIO:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mRealView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 185
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v3}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/ultron/vfw/util/ViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;->access$400(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 186
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mRealView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    :cond_2
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;->access$500(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mCloseView:Landroid/widget/ImageView;

    const-string v3, "\u5173\u95ed"

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mCloseView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;->access$500(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mCloseView:Landroid/widget/ImageView;

    new-instance v3, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$4;-><init>(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mCloseView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    :goto_0
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;->access$600(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;)I

    move-result v0

    if-gez v0, :cond_4

    .line 202
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;->access$600(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;)I

    move-result v0

    .line 203
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;->access$700(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;)F

    move-result v3

    .line 204
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;->access$800(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;)F

    move-result v4

    .line 202
    invoke-static {v0, v3, v4}, Lcom/alibaba/android/ultron/vfw/util/ViewUtil;->getGradientDrawable(IFF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 205
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mRealView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mBgdView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$5;-><init>(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 219
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->rebuildHeader()V

    .line 220
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->rebuildBody()V

    .line 221
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->rebuildFooter()V

    .line 223
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mBgdView:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mAlphaAnimationIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 224
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mRealView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mTranslateAnimationIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager;->mContentView:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;->access$1100(Lcom/alibaba/android/ultron/vfw/popupwindow/PopupWindowManager$WindowConfig;)I

    move-result p1

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
