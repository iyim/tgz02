.class public Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;
.super Landroid/widget/FrameLayout;
.source "TZoomPagerItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TZoomPagerItem"


# instance fields
.field private mErrorView:Landroid/widget/LinearLayout;

.field private mImageView:Lcom/taobao/uikit/extend/feature/view/TZoomImageView;

.field private mProgressBar:Landroid/widget/ImageView;

.field private mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;)Landroid/widget/ImageView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mProgressBar:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;)Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;)Landroid/widget/LinearLayout;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mErrorView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/taobao/uikit/extend/R$layout;->uik_zoom_page_item:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 45
    sget v0, Lcom/taobao/uikit/extend/R$id;->img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mImageView:Lcom/taobao/uikit/extend/feature/view/TZoomImageView;

    .line 46
    sget v0, Lcom/taobao/uikit/extend/R$id;->progressbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mProgressBar:Landroid/widget/ImageView;

    .line 47
    new-instance v0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    const/4 v1, -0x1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {v0, v1, v2}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;-><init>(IF)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    .line 48
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->start()V

    .line 49
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mProgressBar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    sget v0, Lcom/taobao/uikit/extend/R$id;->error_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mErrorView:Landroid/widget/LinearLayout;

    .line 52
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mImageView:Lcom/taobao/uikit/extend/feature/view/TZoomImageView;

    new-instance v0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem$1;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem$1;-><init>(Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;)V

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->succListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    .line 65
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mImageView:Lcom/taobao/uikit/extend/feature/view/TZoomImageView;

    new-instance v0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem$2;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem$2;-><init>(Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;)V

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->failListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    return-void
.end method


# virtual methods
.method public getImageView()Lcom/taobao/uikit/extend/feature/view/TZoomImageView;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mImageView:Lcom/taobao/uikit/extend/feature/view/TZoomImageView;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 86
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->stop()V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 94
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mProgressBar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->start()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->stop()V

    :cond_1
    :goto_0
    return-void
.end method
