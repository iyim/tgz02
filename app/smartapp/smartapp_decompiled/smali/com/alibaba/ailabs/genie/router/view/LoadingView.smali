.class public Lcom/alibaba/ailabs/genie/router/view/LoadingView;
.super Landroid/widget/FrameLayout;
.source "LoadingView.java"


# instance fields
.field private count:I

.field private desc:Landroid/widget/TextView;

.field private img:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mLoadPageLayout:Landroid/widget/RelativeLayout;

.field private mRootView:Landroid/view/View;

.field private mcountDownTimer:Landroid/os/CountDownTimer;

.field private mshow:Z

.field private progressBar:Landroid/widget/ProgressBar;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 32
    iput p2, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->count:I

    .line 44
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/router/view/LoadingView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/router/view/LoadingView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->count:I

    return p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/router/view/LoadingView;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->count:I

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/router/view/LoadingView;)Landroid/os/CountDownTimer;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mcountDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method


# virtual methods
.method public endPro()V
    .locals 3

    .line 155
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mshow:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 158
    iput v1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->count:I

    .line 159
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mcountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    :cond_0
    return-void
.end method

.method public getRandom()I
    .locals 2

    .line 166
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x14

    .line 167
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mContext:Landroid/content/Context;

    .line 50
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/router/R$layout;->activity_genie_router_loading:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mRootView:Landroid/view/View;

    .line 51
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mRootView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/genie/router/R$id;->router_loading_page:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mLoadPageLayout:Landroid/widget/RelativeLayout;

    .line 52
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mRootView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/genie/router/R$id;->loading_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->title:Landroid/widget/TextView;

    .line 53
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mRootView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/genie/router/R$id;->loading_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->desc:Landroid/widget/TextView;

    .line 54
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mRootView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/genie/router/R$id;->loading_pic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->img:Landroid/widget/ImageView;

    .line 55
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mRootView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/genie/router/R$id;->loading_progressbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public setData(Ljava/lang/String;ZZLjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 65
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    sget p4, Lcom/alibaba/ailabs/genie/router/R$mipmap;->default_genie_router_load_icon:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p3

    iget-object p4, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->img:Landroid/widget/ImageView;

    invoke-virtual {p3, p4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 68
    :cond_0
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->img:Landroid/widget/ImageView;

    const/16 p4, 0x8

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-nez p2, :cond_2

    if-eqz p5, :cond_1

    .line 84
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mLoadPageLayout:Landroid/widget/RelativeLayout;

    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p4, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-direct {p3, p4, p5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 86
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mLoadPageLayout:Landroid/widget/RelativeLayout;

    sget p3, Lcom/alibaba/ailabs/genie/router/R$drawable;->loading_background:I

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 89
    :cond_2
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mLoadPageLayout:Landroid/widget/RelativeLayout;

    sget p3, Lcom/alibaba/ailabs/genie/router/R$drawable;->game_loading_bg:I

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 90
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->desc:Landroid/widget/TextView;

    const-string p3, "#FFFFFFFF"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->desc:Landroid/widget/TextView;

    const/high16 p3, 0x41a00000    # 20.0f

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    :goto_1
    iput-boolean p8, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mshow:Z

    .line 95
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->title:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->desc:Landroid/widget/TextView;

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 100
    invoke-static {p7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 110
    :cond_3
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mshow:Z

    if-eqz p1, :cond_4

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->startPro()V

    :cond_4
    return-void
.end method

.method public startPro()V
    .locals 8

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    new-instance v0, Lcom/alibaba/ailabs/genie/router/view/LoadingView$1;

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x12c

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/router/view/LoadingView$1;-><init>(Lcom/alibaba/ailabs/genie/router/view/LoadingView;JJ)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mcountDownTimer:Landroid/os/CountDownTimer;

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->mcountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
