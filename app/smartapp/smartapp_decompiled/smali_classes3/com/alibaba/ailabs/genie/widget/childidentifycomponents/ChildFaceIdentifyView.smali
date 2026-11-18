.class public Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;
.super Landroid/widget/RelativeLayout;
.source "ChildFaceIdentifyView.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;


# static fields
.field private static final TAG:Ljava/lang/String; = "ChildFaceIdentify"


# instance fields
.field private animContainerView:Landroid/view/View;

.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private childFaceClient:Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

.field private isPresenterHasLifeCycle:Z

.field private ivAnimCover:Landroid/widget/ImageView;

.field private ivTagView:Landroid/widget/ImageView;

.field private mView:Landroid/view/View;

.field onClickListener:Landroid/view/View$OnClickListener;

.field private presenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

.field private rlAnimInner:Landroid/view/View;

.field private rlAnimTheMostInside:Landroid/view/View;

.field private rotateAnim:Landroid/animation/ObjectAnimator;

.field private rotateAnimInner:Landroid/animation/ObjectAnimator;

.field private rotateAnimMostInside:Landroid/animation/ObjectAnimator;

.field private surfaceView:Landroid/view/SurfaceView;

.field private tvFailMsg:Landroid/widget/TextView;

.field private tvTextMainHint:Landroid/widget/TextView;

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field private viewDetached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->viewDetached:Z

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnim:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimInner:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimMostInside:Landroid/animation/ObjectAnimator;

    .line 53
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->isPresenterHasLifeCycle:Z

    .line 56
    new-instance v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView$1;-><init>(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 68
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 50
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->viewDetached:Z

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnim:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimInner:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimMostInside:Landroid/animation/ObjectAnimator;

    .line 53
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->isPresenterHasLifeCycle:Z

    .line 56
    new-instance p2, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView$1;-><init>(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 73
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 50
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->viewDetached:Z

    const/4 p3, 0x0

    .line 51
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnim:Landroid/animation/ObjectAnimator;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimInner:Landroid/animation/ObjectAnimator;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimMostInside:Landroid/animation/ObjectAnimator;

    .line 53
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->isPresenterHasLifeCycle:Z

    .line 56
    new-instance p2, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView$1;-><init>(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 78
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 50
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->viewDetached:Z

    const/4 p3, 0x0

    .line 51
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnim:Landroid/animation/ObjectAnimator;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimInner:Landroid/animation/ObjectAnimator;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimMostInside:Landroid/animation/ObjectAnimator;

    .line 53
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->isPresenterHasLifeCycle:Z

    .line 56
    new-instance p2, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView$1;-><init>(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 84
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->presenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;)Landroid/widget/ImageView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivAnimCover:Landroid/widget/ImageView;

    return-object p0
.end method

.method private dealViewTenInchDevice()V
    .locals 4

    .line 402
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 403
    sget-boolean v1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz v1, :cond_0

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealViewTenInchDevice: model : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChildFaceIdentify"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "AILABS_S3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->animContainerView:Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    .line 412
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x23a

    .line 413
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 414
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 415
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->animContainerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->tvFailMsg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 418
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->tvFailMsg:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x10e

    .line 419
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 420
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->tvFailMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ChildFaceIdentify"

    const-string v1, "init: "

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 91
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u8bf7\u786e\u8ba4\u5f53\u524dView \u7684\u521d\u59cb\u5316\u65b9\u5f0f!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/widget/R$layout;->view_child_face_identify:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->mView:Landroid/view/View;

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/widget/R$color;->color_view_child_face_bg:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public getAttachedContext()Landroid/content/Context;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->resizeSurface(Landroid/view/SurfaceView;)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->surfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public initListener()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/widget/R$id;->surface_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->surfaceView:Landroid/view/SurfaceView;

    .line 109
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$id;->rl_anim:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->animContainerView:Landroid/view/View;

    .line 110
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$id;->rl_anim_inner:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rlAnimInner:Landroid/view/View;

    .line 111
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$id;->rl_anim_the_most_inside:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rlAnimTheMostInside:Landroid/view/View;

    .line 112
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$id;->iv_tag_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivTagView:Landroid/widget/ImageView;

    .line 113
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$id;->iv_anim_cover:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivAnimCover:Landroid/widget/ImageView;

    .line 114
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$id;->tv_fail_msg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->tvFailMsg:Landroid/widget/TextView;

    .line 115
    sget v0, Lcom/alibaba/ailabs/genie/widget/R$id;->tv_text_main_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->tvTextMainHint:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/widget/R$id;->tv_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/widget/R$id;->tv_switch_to_password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/widget/R$id;->iv_anim_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 162
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 163
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    const-string v1, "ChildFaceIdentify"

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->presenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    if-nez v0, :cond_2

    .line 167
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, " presenter is null ! "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->initListener()V

    .line 172
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->presenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    invoke-virtual {v0, v2}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->isPresenterHasLifeCycle:Z

    .line 175
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz v0, :cond_4

    const-string v0, "onAttachedToWindow:  addObserver success!"

    .line 176
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->isPresenterHasLifeCycle:Z

    .line 180
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->presenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;->onCreateForAttach()V

    .line 183
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->dealViewTenInchDevice()V

    .line 184
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->presenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;->startFaceIdentify()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 224
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 225
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->isPresenterHasLifeCycle:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->presenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    if-eqz v0, :cond_1

    .line 226
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "ChildFaceIdentify"

    const-string v1, "onDetachedFromWindow: \u624b\u52a8\u8c03\u7528\u4e86onDestroy"

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->presenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;->onDestroyForAttach()V

    :cond_1
    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->viewDetached:Z

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->surfaceView:Landroid/view/SurfaceView;

    .line 233
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->presenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    .line 234
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->reSetViewStatus()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 199
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 200
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVisibilityChanged: changedView "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "visibility "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \n tips:  View.VISIBLE "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  View.INVISIBLE "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  View.GONE "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ChildFaceIdentify"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVisibilityChanged: ChildFaceIdentifyView.this"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changedView.hashCode() == ChildFaceIdentifyView.this.hashCode()"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVisibilityChanged: isPresenterHasLifeCycle  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->isPresenterHasLifeCycle:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "presenter"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->presenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-eq p1, v0, :cond_2

    return-void

    .line 209
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->isPresenterHasLifeCycle:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->presenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    .line 213
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 214
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->presenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;->onResumeForAttach()V

    goto :goto_1

    :cond_4
    if-eq v1, p2, :cond_5

    if-ne v2, p2, :cond_6

    .line 216
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->presenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;->onPauseForAttach()V

    :cond_6
    :goto_1
    return-void
.end method

.method public reSetViewStatus()V
    .locals 4

    .line 257
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "ChildFaceIdentify"

    const-string v1, "reSetViewStatus: "

    .line 258
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnim:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 262
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnim:Landroid/animation/ObjectAnimator;

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimInner:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimInner:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 266
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimInner:Landroid/animation/ObjectAnimator;

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimMostInside:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimMostInside:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 270
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimMostInside:Landroid/animation/ObjectAnimator;

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivTagView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 274
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivTagView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rlAnimTheMostInside:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 276
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 277
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 278
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 280
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 281
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 282
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 284
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->animContainerView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x106000d

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 285
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rlAnimInner:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 286
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rlAnimTheMostInside:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 287
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivAnimCover:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 288
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivAnimCover:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 289
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->tvFailMsg:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->tvTextMainHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public resizeSurface(Landroid/view/SurfaceView;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ScreenUtil;->getScreenRealWidth(Landroid/content/Context;)I

    move-result v0

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ScreenUtil;->getRealHeight(Landroid/content/Context;)I

    move-result v1

    .line 131
    div-int/lit8 v2, v0, 0x4

    mul-int/lit8 v2, v2, 0x3

    .line 133
    sget-boolean v3, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    const-string v4, "\u5f53\u524d\u5e94\u8be5\u53d8\u6210 : "

    const-string v5, "\u5f53\u524d\u5c4f\u5e55\u9ad8\u5ea6  : "

    const-string v6, "resizeSurface: \u5f53\u524d\u5c4f\u5e55\u5bbd\u5ea6  : "

    const-string v7, "ChildFaceIdentify"

    if-eqz v3, :cond_1

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 138
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v8, 0x0

    if-le v2, v1, :cond_2

    sub-int v8, v1, v2

    .line 141
    div-int/lit8 v8, v8, 0x2

    .line 142
    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 143
    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 145
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    sget-boolean p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz p1, :cond_3

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u8d85\u51fa\u7684\u8ddd\u79bb"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resizeSurface: layoutParams.width : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " layoutParams.height"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public setMainTextHint(Ljava/lang/String;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->tvTextMainHint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPresenter(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->presenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ChildFaceIdentify"

    const-string v1, "setTitle: "

    .line 244
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/widget/R$id;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showViewResult(I)V
    .locals 6

    .line 306
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    const-string v1, "ChildFaceIdentify"

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showViewResult: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivTagView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->animContainerView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivAnimCover:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->presenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    if-nez v0, :cond_2

    return-void

    .line 318
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->reSetViewStatus()V

    const/4 v0, 0x0

    const-wide/16 v2, 0x258

    const/4 v4, -0x1

    const/4 v5, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 338
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/alibaba/ailabs/genie/widget/R$string;->text_tts_child_face_hint_fail_time_out:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 339
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->presenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    invoke-interface {v1, v4, p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;->onTTSPlayEngineCalled(ILjava/lang/String;)V

    .line 341
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivAnimCover:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/genie/widget/R$drawable;->ic_child_face_identify_main_cover_fail:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->tvFailMsg:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 365
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/widget/R$string;->text_tts_child_face_hint_scanning:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 366
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->tvTextMainHint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivTagView:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/genie/widget/R$drawable;->anim_child_face_identify_running:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivTagView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 370
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 372
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->animContainerView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/genie/widget/R$drawable;->anim_child_face_identify_inner_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 373
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rlAnimInner:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/genie/widget/R$drawable;->anim_child_face_identify_inner_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 374
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rlAnimTheMostInside:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/genie/widget/R$drawable;->anim_child_face_identify_inner_3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 375
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->animContainerView:Landroid/view/View;

    new-array v0, v5, [F

    fill-array-data v0, :array_0

    const-string v1, "rotation"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnim:Landroid/animation/ObjectAnimator;

    .line 376
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 377
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnim:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 379
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rlAnimInner:Landroid/view/View;

    new-array v0, v5, [F

    fill-array-data v0, :array_1

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimInner:Landroid/animation/ObjectAnimator;

    .line 380
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimInner:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 381
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimInner:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 382
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimInner:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 383
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rlAnimTheMostInside:Landroid/view/View;

    new-array v0, v5, [F

    fill-array-data v0, :array_2

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimMostInside:Landroid/animation/ObjectAnimator;

    .line 384
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimMostInside:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 385
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimMostInside:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 386
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rotateAnimMostInside:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 388
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivAnimCover:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/genie/widget/R$drawable;->ic_child_face_identify_main_cover:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivAnimCover:Landroid/widget/ImageView;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto/16 :goto_1

    .line 346
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/widget/R$string;->text_tts_child_face_hint_success:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 347
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->tvTextMainHint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->rlAnimTheMostInside:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/genie/widget/R$drawable;->anim_child_face_identify_inner_3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 349
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivAnimCover:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/genie/widget/R$drawable;->ic_child_face_identify_main_cover:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivTagView:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/genie/widget/R$drawable;->anim_child_face_identify_success:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivTagView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 352
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 353
    new-array p1, v5, [I

    fill-array-data p1, :array_3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 354
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView$2;-><init>(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 361
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 321
    :pswitch_3
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 322
    invoke-virtual {p1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 323
    sget-boolean v2, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz v2, :cond_3

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showViewResult: randomCode  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez p1, :cond_4

    .line 328
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/alibaba/ailabs/genie/widget/R$string;->text_tts_child_face_hint_fail_age:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 330
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/alibaba/ailabs/genie/widget/R$string;->text_tts_child_face_hint_fail_identify:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 332
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->presenter:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    const/4 v2, -0x2

    invoke-interface {v1, v2, p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;->onTTSPlayEngineCalled(ILjava/lang/String;)V

    .line 333
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->ivAnimCover:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/genie/widget/R$drawable;->ic_child_face_identify_main_cover_fail:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 334
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->tvFailMsg:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    .line 310
    :cond_5
    :goto_2
    sget-boolean p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-nez p1, :cond_6

    return-void

    .line 311
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "ivTagView == null or animContainerView == null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_1
    .array-data 4
        0x43b40000    # 360.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x43b40000    # 360.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x64
        0xff
    .end array-data
.end method
