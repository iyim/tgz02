.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;
.super Landroid/widget/LinearLayout;
.source "LinkItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkItem"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconIV:Landroid/widget/ImageView;

.field private mLinkItemData:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

.field private mNameTV:Landroid/widget/TextView;

.field private root:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_universal_baike_link_item:I

    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->mContext:Landroid/content/Context;

    .line 34
    sget p1, Lcom/alibaba/ailabs/basedomain/R$id;->icon:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->mIconIV:Landroid/widget/ImageView;

    .line 35
    sget p1, Lcom/alibaba/ailabs/basedomain/R$id;->name:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->mNameTV:Landroid/widget/TextView;

    .line 36
    sget p1, Lcom/alibaba/ailabs/basedomain/R$id;->root_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->root:Landroid/widget/LinearLayout;

    .line 37
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->root:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView$1;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->mLinkItemData:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    return-object p0
.end method


# virtual methods
.method public click()V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You click Link: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->mLinkItemData:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinkItem"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->mLinkItemData:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;->onClick(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setData(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;)V
    .locals 2

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->mLinkItemData:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    .line 48
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->mLinkItemData:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    instance-of v0, p1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoLink;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 49
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->mIconIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->mIconIV:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/basedomain/R$drawable;->base_domain_baike_link_icon_video:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 51
    :cond_0
    instance-of v0, p1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/AudioLink;

    if-eqz v0, :cond_1

    .line 52
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->mIconIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->mIconIV:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/basedomain/R$drawable;->base_domain_baike_link_icon_music:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 54
    :cond_1
    instance-of p1, p1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/TextLink;

    if-eqz p1, :cond_2

    .line 55
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->mIconIV:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->mNameTV:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->mLinkItemData:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
