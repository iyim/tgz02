.class public Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;
.super Landroid/app/Dialog;
.source "ImageViewerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;

.field private mHidePageNum:Z

.field private mImageDescText:Landroid/widget/TextView;

.field private mImageDescs:[Ljava/lang/String;

.field private mImageUrls:[Ljava/lang/String;

.field private mPageList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPageNumText:Landroid/widget/TextView;

.field private mSave:Z

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    sget v0, Lcom/taobao/uikit/extend/R$style;->ImageViewerDialog:I

    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;-><init>(Landroid/content/Context;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mPageList:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mSave:Z

    .line 37
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mHidePageNum:Z

    .line 45
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)Landroid/util/SparseArray;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mPageList:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)[Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mImageDescs:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)Landroid/widget/TextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mImageDescText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mHidePageNum:Z

    return p0
.end method

.method static synthetic access$400(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)[Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mImageUrls:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)Landroid/widget/TextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mPageNumText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mSave:Z

    return p0
.end method

.method private init()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/taobao/uikit/extend/R$layout;->uik_imageviewer_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    sget v1, Lcom/taobao/uikit/extend/R$id;->img_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mImageDescText:Landroid/widget/TextView;

    .line 55
    sget v1, Lcom/taobao/uikit/extend/R$id;->page_num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mPageNumText:Landroid/widget/TextView;

    .line 56
    sget v1, Lcom/taobao/uikit/extend/R$id;->viewpager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 57
    new-instance v0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;-><init>(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mAdapter:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;

    .line 58
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mAdapter:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 59
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$1;

    invoke-direct {v1, p0}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$1;-><init>(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public enableSaveImage(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mSave:Z

    return-void
.end method

.method public getCurrentImageView()Lcom/taobao/uikit/feature/view/TImageView;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mPageList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->getImageView()Lcom/taobao/uikit/extend/feature/view/TZoomImageView;

    move-result-object v0

    return-object v0
.end method

.method public hidePageNum(Z)V
    .locals 1

    .line 187
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mHidePageNum:Z

    .line 188
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mPageNumText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setImageDescs([Ljava/lang/String;)V
    .locals 2

    .line 108
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mImageDescs:[Ljava/lang/String;

    .line 109
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    .line 110
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mImageDescs:[Ljava/lang/String;

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mImageDescText:Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mHidePageNum:Z

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mPageNumText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mImageUrls:[Ljava/lang/String;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setImageUrls([Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mPageList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 98
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mImageUrls:[Ljava/lang/String;

    .line 99
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mAdapter:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;->notifyDataSetChanged()V

    .line 100
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    .line 101
    iget-boolean v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mHidePageNum:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mPageNumText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mImageUrls:[Ljava/lang/String;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show(I)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mImageUrls:[Ljava/lang/String;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 121
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->show()V

    :cond_0
    return-void
.end method
