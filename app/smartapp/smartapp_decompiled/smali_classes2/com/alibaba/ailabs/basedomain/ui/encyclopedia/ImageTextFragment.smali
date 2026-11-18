.class public Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;
.super Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;
.source "ImageTextFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageTextFragment"


# instance fields
.field private mAdjustIndexPositionRunnable:Ljava/lang/Runnable;

.field private mCacheGlideImageTask:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mFillDataRunnable:Ljava/lang/Runnable;

.field private mImageView:Landroid/widget/ImageView;

.field private mIndexView:Landroid/widget/TextView;

.field private needUt:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->needUt:Z

    .line 235
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$8;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$8;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mCacheGlideImageTask:Ljava/lang/Runnable;

    .line 261
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$9;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$9;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mAdjustIndexPositionRunnable:Ljava/lang/Runnable;

    .line 272
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$10;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$10;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mFillDataRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->needUt:Z

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->needUt:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mAdjustIndexPositionRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->adjustIndexPosition()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private adjustIndexPosition()V
    .locals 5

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustIndexPosition mImageView width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mImageView:Landroid/widget/ImageView;

    .line 204
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Bottom:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mImageView:Landroid/widget/ImageView;

    .line 205
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Right"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImageTextFragment"

    .line 203
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustIndexPosition mIndexView width:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mIndexView:Landroid/widget/TextView;

    .line 207
    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mIndexView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mIndexView:Landroid/widget/TextView;

    .line 208
    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Left"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mIndexView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mIndexView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x8

    .line 210
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mIndexView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x8

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustIndexPosition newX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " newY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mIndexView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 213
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 214
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 215
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mIndexView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 216
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mIndexView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private fillData()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->loadImageForShow()V

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mFillDataRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private loadImageForShow()V
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getImageUrlList()Ljava/util/ArrayList;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillData thread name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageTextFragment"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->setImageIndex(I)V

    const/4 v1, 0x0

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImages url: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    const-class v2, [B

    .line 179
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/16 v3, 0x104

    const/16 v4, 0xcf

    .line 180
    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 181
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$7;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$7;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)V

    .line 182
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_0
    return-void
.end method

.method private setImageIndex(I)V
    .locals 2

    const/4 v0, 0x1

    .line 221
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "1\\%base_domain_baike_infoplanet_entry_item"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 222
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mIndexView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getPageNameForUT()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageTextFragment"

    return-object v0
.end method

.method public getSPMForUT()Ljava/lang/String;
    .locals 1

    const-string v0, "a1z3lt.12041673"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 52
    sget p3, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_encyclopedia_image_text_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->layout_exit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    const-string p3, "a1z3lt.12041673"

    const-string v0, "ImageTextFragment"

    const-string v1, "home_click"

    .line 54
    invoke-virtual {p2, v0, v1, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setHomeUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "back_click"

    .line 55
    invoke-virtual {p2, v0, v1, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance p3, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$1;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->scrollView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 64
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mText:Landroid/widget/TextView;

    .line 65
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mText:Landroid/widget/TextView;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$2;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$2;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->images:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mImageView:Landroid/widget/ImageView;

    .line 75
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mImageView:Landroid/widget/ImageView;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$3;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$3;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mImageView:Landroid/widget/ImageView;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$4;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$4;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->image_index:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mIndexView:Landroid/widget/TextView;

    .line 101
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->background:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mBackgroundView:Landroid/view/View;

    .line 102
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mContext:Landroid/content/Context;

    .line 107
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->fillData()V

    .line 108
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mCacheGlideImageTask:Ljava/lang/Runnable;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->runBgTask(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 156
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->onDestroyView()V

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mCacheGlideImageTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->removeBgTask(Ljava/lang/Runnable;)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mAdjustIndexPositionRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mFillDataRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mFillDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 124
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$5;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$6;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method
