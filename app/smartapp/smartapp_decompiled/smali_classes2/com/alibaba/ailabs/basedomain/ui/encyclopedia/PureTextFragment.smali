.class public Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;
.super Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;
.source "PureTextFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$OnTtsBeginRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PureTextFragment"


# instance fields
.field mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

.field private mOnTtsBeginRunnable:Ljava/lang/Runnable;

.field private needUt:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->needUt:Z

    .line 143
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$4;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->onTTSBegin()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->needUt:Z

    return p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->needUt:Z

    return p1
.end method

.method private onTTSBegin()V
    .locals 0

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->autoRollText()V

    return-void
.end method

.method private onTTSEnd()V
    .locals 0

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->stopRollText()V

    return-void
.end method


# virtual methods
.method protected fillData()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

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

    .line 58
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

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 34
    sget p3, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_encyclopedia_pure_text_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->scrollView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 36
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->layout_exit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    const-string p3, "a1z3lt.12041697"

    const-string v0, "PureTextFragment"

    const-string v1, "home_click"

    .line 37
    invoke-virtual {p2, v0, v1, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setHomeUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "back_click"

    .line 38
    invoke-virtual {p2, v0, v1, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance p3, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$1;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mText:Landroid/widget/TextView;

    .line 46
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->registerMyOnTouchListener(Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;)V

    .line 51
    new-instance p2, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$OnTtsBeginRunnable;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$OnTtsBeginRunnable;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$1;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mOnTtsBeginRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 82
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->onDestroyView()V

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mOnTtsBeginRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mOnTtsBeginRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 92
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$2;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$3;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 63
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->onStart()V

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mOnTtsBeginRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 76
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->onStop()V

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->unregisterMyOnTouchListener(Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;)V

    return-void
.end method
