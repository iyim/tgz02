.class public Lcom/alibaba/ailabs/appbox/view/SkillItemView;
.super Ljava/lang/Object;
.source "SkillItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/view/SkillItemView$OnTitleClickListener;
    }
.end annotation


# instance fields
.field public fl_hot:Landroid/widget/FrameLayout;

.field public fl_new:Landroid/widget/FrameLayout;

.field private iv_bg_title:Landroid/widget/ImageView;

.field private iv_bg_title_cover:Landroid/widget/ImageView;

.field private iv_skill_icon:Landroid/widget/ImageView;

.field public rl_genie_tips:Landroid/widget/RelativeLayout;

.field public rootView:Landroid/view/View;

.field private tv_skill_desc:Landroid/widget/TextView;

.field private tv_skill_subtitle:Landroid/widget/TextView;

.field private tv_skill_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->rootView:Landroid/view/View;

    .line 31
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->rootView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_skill_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->tv_skill_title:Landroid/widget/TextView;

    .line 33
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->rootView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_skill_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->tv_skill_subtitle:Landroid/widget/TextView;

    .line 34
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->rootView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_skill_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->tv_skill_desc:Landroid/widget/TextView;

    .line 35
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->rootView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->fl_hot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->fl_hot:Landroid/widget/FrameLayout;

    .line 36
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->rootView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->fl_new:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->fl_new:Landroid/widget/FrameLayout;

    .line 37
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->rootView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_skill_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->iv_skill_icon:Landroid/widget/ImageView;

    .line 38
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->rootView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_bg_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->iv_bg_title:Landroid/widget/ImageView;

    .line 39
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->rootView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_bg_title_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->iv_bg_title_cover:Landroid/widget/ImageView;

    .line 40
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->rootView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rl_genie_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->rl_genie_tips:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public setCmdText(Ljava/lang/String;)V
    .locals 3

    .line 53
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->formatSkillCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->tv_skill_subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setData2View(Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;)V
    .locals 5

    .line 61
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->setCmdText(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->tv_skill_title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/utils/GlideRoundTransform;

    const/16 v2, 0x5a

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/appbox/utils/GlideRoundTransform;-><init>(I)V

    .line 66
    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->iv_skill_icon:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    const/4 v0, 0x0

    .line 71
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem$Provider;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem$Provider;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->tv_skill_desc:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v1, "\u5929\u732b\u7cbe\u7075"

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setImage2View"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;

    const/high16 v1, 0x42080000    # 34.0f

    .line 82
    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result v2

    .line 83
    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    .line 84
    invoke-static {v4}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result v4

    .line 85
    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result v1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/alibaba/ailabs/appbox/view/RoundBitmapTransformation;-><init>(IIII)V

    .line 81
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->iv_bg_title:Landroid/widget/ImageView;

    .line 86
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 87
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->iv_bg_title_cover:Landroid/widget/ImageView;

    const-string v0, "black"

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getSkillTitleCoverBackground(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 89
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    const-string v2, ""

    .line 90
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->iv_bg_title:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 93
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->iv_bg_title_cover:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->getCate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getSkillTitleCoverBackground(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->iv_bg_title_cover:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setData2View(Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->setData2View(Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;)V

    .line 100
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->getCate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->iv_bg_title_cover:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getSkillTitleCoverBackground(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setTipsClickListener(Lcom/alibaba/ailabs/appbox/view/SkillItemView$OnTitleClickListener;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->rl_genie_tips:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/ailabs/appbox/view/SkillItemView$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/appbox/view/SkillItemView$1;-><init>(Lcom/alibaba/ailabs/appbox/view/SkillItemView;Lcom/alibaba/ailabs/appbox/view/SkillItemView$OnTitleClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
