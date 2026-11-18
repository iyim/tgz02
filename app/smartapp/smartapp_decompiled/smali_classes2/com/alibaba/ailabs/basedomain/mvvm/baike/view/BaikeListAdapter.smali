.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaikeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;->TAG:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;->mCardList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;->mCardList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;->mCardList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 65
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    check-cast p1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;I)V
    .locals 3
    .param p1    # Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    iget-object v0, p1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;->mTitleTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;->mCardList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;->mIndexT:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;->mCardList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;->getImage()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;->mBgIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->setToView(Landroid/view/View;)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No find card image, card:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;->mCardList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    iget-object p1, p1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;->mBgIV:Landroid/widget/ImageView;

    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$1;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;
    .locals 2

    .line 70
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_baike_list_layout_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 71
    new-instance p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListAdapter$VH;-><init>(Landroid/view/View;)V

    return-object p2
.end method
