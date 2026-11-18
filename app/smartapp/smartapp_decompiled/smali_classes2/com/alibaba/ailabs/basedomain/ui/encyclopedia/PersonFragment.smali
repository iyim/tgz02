.class public Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;
.super Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;
.source "PersonFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PersonFragment"


# instance fields
.field private mImage:Landroid/widget/ImageView;

.field private mName:Landroid/widget/TextView;

.field mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

.field private mProductionList:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;

.field private mTitle:Landroid/widget/TextView;

.field private needUt:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->needUt:Z

    .line 175
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$6;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$6;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->needUt:Z

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->needUt:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method private fillData()V
    .locals 6

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getPersonPhotoUrl()Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photoUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersonFragment"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    const-class v3, [B

    .line 125
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/16 v4, 0xc8

    const/16 v5, 0xfa

    .line 126
    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$4;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getPerson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mTitle\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \n \n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getMusicList()Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getVideoList()Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;

    move-result-object v1

    .line 151
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mProductionList:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->setData(Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;Lcom/alibaba/ailabs/basedomain/model/encyclopedia/VideoList;)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mProductionList:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;

    const-string v1, "link_click"

    const-string v3, "a1z3lt.12041687"

    invoke-virtual {v0, v2, v1, v3}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->setUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$5;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showProductionList()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mProductionList:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getPageNameForUT()Ljava/lang/String;
    .locals 1

    const-string v0, "PersonFragment"

    return-object v0
.end method

.method public getSPMForUT()Ljava/lang/String;
    .locals 1

    const-string v0, "a1z3lt.12041687"

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

    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 47
    sget p3, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_encyclopedia_person:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->scrollView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 49
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mName:Landroid/widget/TextView;

    .line 50
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mTitle:Landroid/widget/TextView;

    .line 51
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mText:Landroid/widget/TextView;

    .line 52
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->production_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mProductionList:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;

    .line 53
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mImage:Landroid/widget/ImageView;

    .line 54
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->background:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mBackgroundView:Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->registerMyOnTouchListener(Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;)V

    .line 56
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->layout_exit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    const-string p3, "a1z3lt.12041687"

    const-string v0, "PersonFragment"

    const-string v1, "home_click"

    .line 57
    invoke-virtual {p2, v0, v1, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setHomeUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "back_click"

    .line 58
    invoke-virtual {p2, v0, v1, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance p3, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$1;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 77
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->onResume()V

    .line 78
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->fillData()V

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$2;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$3;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 110
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->onStop()V

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->unregisterMyOnTouchListener(Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->mProductionList:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->release()V

    return-void
.end method
