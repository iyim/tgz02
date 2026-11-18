.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaikeBaseFragment.java"


# static fields
.field protected static final AUTO_ROLL_TEXT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaikeBaseFragment"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIOnAutoScrollListener:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$IOnAutoScrollListener;

.field protected mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

.field protected mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

.field private mScrollView:Landroid/widget/ScrollView;

.field protected volatile mStopAutoRoll:Z

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mStopAutoRoll:Z

    .line 30
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment$1;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;)Landroid/widget/ScrollView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method


# virtual methods
.method protected autoRollText(Landroid/widget/TextView;Landroid/widget/ScrollView;)V
    .locals 4

    .line 69
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 70
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mTextView:Landroid/widget/TextView;

    .line 73
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mScrollView:Landroid/widget/ScrollView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\p{P}"

    const-string v1, ""

    .line 75
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 78
    div-int/2addr p1, v0

    int-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int p1, v0

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    mul-int/lit8 p1, p1, 0xa

    div-int p1, v0, p1

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const-wide/16 v2, 0x5a

    invoke-virtual {p1, p2, v2, v3}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    iput-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mStopAutoRoll:Z

    goto :goto_0

    :cond_1
    const-string p1, "BaikeBaseFragment"

    const-string v0, "No need roll"

    .line 96
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput-boolean p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mStopAutoRoll:Z

    .line 98
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mIOnAutoScrollListener:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$IOnAutoScrollListener;

    if-eqz p1, :cond_2

    .line 99
    invoke-interface {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$IOnAutoScrollListener;->scrollFinish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected handleOnTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected initOnTouch()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment$2;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 47
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->initOnTouch()V

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->registerMyOnTouchListener(Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 116
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->unInitOnTouch()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState() called with: outState = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaikeBaseFragment"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, -0x1

    .line 62
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 110
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    return-void
.end method

.method protected stopAutoRoll()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    return-void
.end method

.method protected unInitOnTouch()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->unregisterMyOnTouchListener(Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;)V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    :cond_0
    return-void
.end method
