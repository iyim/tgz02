.class public Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;
.super Landroid/widget/FrameLayout;
.source "LauncherLoadingView.java"


# instance fields
.field private count:I

.field private desc:Landroid/widget/TextView;

.field private img:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mcountDownTimer:Landroid/os/CountDownTimer;

.field private mshow:Z

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 25
    iput p2, p0, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;->count:I

    .line 37
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;->mContext:Landroid/content/Context;

    .line 43
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/genieboot/R$layout;->activity_boot_home:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 44
    sget v0, Lcom/alibaba/ailabs/genie/genieboot/R$id;->loading_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;->desc:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/alibaba/ailabs/genie/genieboot/R$id;->loading_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;->img:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcom/alibaba/ailabs/genie/genieboot/R$id;->loading_progressbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;->img:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;->desc:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startPro(I)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
