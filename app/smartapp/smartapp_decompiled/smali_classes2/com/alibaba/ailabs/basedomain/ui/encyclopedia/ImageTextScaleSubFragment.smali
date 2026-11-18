.class public Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;
.super Lcom/alibaba/ailabs/basedomain/common/BaseFragment;
.source "ImageTextScaleSubFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/ui/IBaseUI;


# static fields
.field private static final MSG_WHAT_LOAD_PIC:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ImgTxtScaleFragment"


# instance fields
.field private detector:Landroid/view/GestureDetector;

.field private mBgIv:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCurrentShowIndex:I

.field private mImageIndexView:Landroid/widget/TextView;

.field private mImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImageView:Landroid/widget/ImageView;

.field private mNoLeakHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

.field mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

.field private mRootBackground:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/BaseFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mNoLeakHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    .line 255
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$3;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mRootBackground:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mBgIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->leftFling()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->rightFling()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)Landroid/view/GestureDetector;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->detector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method private leftFling()V
    .locals 5

    .line 198
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mCurrentShowIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rightFling load size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageList:Ljava/util/ArrayList;

    .line 200
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " CurrentShowIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mCurrentShowIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  image url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageList:Ljava/util/ArrayList;

    .line 201
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImgTxtScaleFragment"

    .line 199
    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->setToViewBg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leftFling e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mCurrentShowIndex:I

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new mCurrentShowIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mCurrentShowIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->updateIndex()V

    return-void
.end method

.method private rightFling()V
    .locals 4

    .line 213
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mCurrentShowIndex:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leftFling load size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageList:Ljava/util/ArrayList;

    .line 215
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  CurrentShowIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mCurrentShowIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  image url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageList:Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImgTxtScaleFragment"

    .line 214
    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->setToViewBg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "rightFling exception:"

    .line 220
    invoke-static {v2, v3, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mCurrentShowIndex:I

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new mCurrentShowIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mCurrentShowIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->updateIndex()V

    return-void
.end method

.method private updateIndex()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageIndexView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mCurrentShowIndex:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageIndexView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDomainType()Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;
    .locals 1

    .line 242
    sget-object v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->ENCYCLOPEDIA:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    return-object v0
.end method

.method protected getPageNameForUT()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageTextScaleSubFragment"

    return-object v0
.end method

.method public getSPMForUT()Ljava/lang/String;
    .locals 1

    const-string v0, "a1z3lt.12041739"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 104
    sget p3, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_encyclopedia_image_text_scale_sub:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mContext:Landroid/content/Context;

    .line 108
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->bg_root_iv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mBgIv:Landroid/widget/ImageView;

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "image_list"

    .line 112
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageList:Ljava/util/ArrayList;

    .line 113
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageList:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 114
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->images:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageView:Landroid/widget/ImageView;

    .line 115
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->image_index:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageIndexView:Landroid/widget/TextView;

    .line 116
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mRootBackground:Landroid/widget/RelativeLayout;

    .line 118
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->setToViewBg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "ImgTxtScaleFragment"

    const-string v1, "onCreateView e:"

    .line 120
    invoke-static {p3, v1, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->updateIndex()V

    .line 123
    iput v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mCurrentShowIndex:I

    .line 124
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$2;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment$2;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;)V

    invoke-direct {p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->detector:Landroid/view/GestureDetector;

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->registerMyOnTouchListener(Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mNoLeakHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 188
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/common/BaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mContext:Landroid/content/Context;

    .line 191
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mBgIv:Landroid/widget/ImageView;

    .line 192
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageIndexView:Landroid/widget/TextView;

    .line 193
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mImageView:Landroid/widget/ImageView;

    .line 194
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mRootBackground:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 181
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/common/BaseFragment;->onStop()V

    .line 182
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->unregisterMyOnTouchListener(Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;)V

    return-void
.end method

.method public setToViewBg(Ljava/lang/String;)V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mNoLeakHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 265
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 266
    iput v1, v0, Landroid/os/Message;->what:I

    .line 267
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 268
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->mNoLeakHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
