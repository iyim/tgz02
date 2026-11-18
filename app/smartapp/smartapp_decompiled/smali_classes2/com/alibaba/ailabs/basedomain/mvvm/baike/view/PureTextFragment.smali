.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;
.super Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;
.source "PureTextFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PureTextFragment"


# instance fields
.field mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

.field private needUt:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->needUt:Z

    .line 133
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$5;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$5;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->onTTSBegin()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->mStopAutoRoll:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->needUt:Z

    return p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->needUt:Z

    return p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;)Z
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->onUserInterruptPage()Z

    move-result p0

    return p0
.end method

.method private onTTSBegin()V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->autoRollText()V

    return-void
.end method

.method private onTTSEnd()V
    .locals 0

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->stopRollText()V

    return-void
.end method


# virtual methods
.method protected fillData()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->mText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getPageNameForUT()Ljava/lang/String;
    .locals 1

    const-string v0, "PureTextFragment"

    return-object v0
.end method

.method public getSPMForUT()Ljava/lang/String;
    .locals 1

    const-string v0, "a1z3lt.12041697"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 35
    sget p3, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_encyclopedia_pure_text_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 36
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->scrollView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 37
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->layout_exit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    const-string p3, "a1z3lt.12041697"

    const-string v0, "PureTextFragment"

    const-string v1, "home_click"

    .line 38
    invoke-virtual {p2, v0, v1, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setHomeUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "back_click"

    .line 39
    invoke-virtual {p2, v0, v1, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$1;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$1;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->mText:Landroid/widget/TextView;

    .line 47
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->mText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->registerMyOnTouchListener(Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;)V

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->onResume()V

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$3;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$4;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 62
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->onStart()V

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$2;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->onStop()V

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->unregisterMyOnTouchListener(Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;)V

    return-void
.end method
