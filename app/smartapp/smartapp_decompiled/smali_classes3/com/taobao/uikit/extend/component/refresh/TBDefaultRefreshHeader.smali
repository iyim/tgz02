.class public Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;
.super Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;
.source "TBDefaultRefreshHeader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TBDefaultRefreshHeader"


# instance fields
.field private mDefaultRefreshAnimation:[Ljava/lang/String;

.field private mDefaultRefreshTips:[Ljava/lang/String;

.field private mRefreshAnimation:[Ljava/lang/String;

.field private mRefreshHeaderView:Landroid/widget/FrameLayout;

.field private mRefreshProgressView1:Lcom/taobao/android/animationkit/AnimationView;

.field private mRefreshProgressView2:Lcom/taobao/android/animationkit/AnimationView;

.field private mRefreshProgressView3:Lcom/taobao/android/animationkit/AnimationView;

.field private mRefreshTips:[Ljava/lang/String;

.field private mRefreshViewGroup:Landroid/widget/FrameLayout;

.field private mSecondFloorView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 69
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    .line 39
    new-array v1, v0, [Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/taobao/uikit/extend/R$string;->uik_pull_to_refresh:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 41
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/taobao/uikit/extend/R$string;->uik_release_to_refresh:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 42
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/taobao/uikit/extend/R$string;->uik_refreshing:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 43
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v6, Lcom/taobao/uikit/extend/R$string;->uik_refresh_finished:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mDefaultRefreshTips:[Ljava/lang/String;

    .line 47
    new-array v0, v0, [Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/taobao/uikit/extend/R$string;->uik_pull_to_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 49
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/taobao/uikit/extend/R$string;->uik_release_to_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 50
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/taobao/uikit/extend/R$string;->uik_refreshing:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 51
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/taobao/uikit/extend/R$string;->uik_refresh_finished:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshTips:[Ljava/lang/String;

    const-string v0, "pullrefresh/normal/uik_refresh_finished.json"

    const-string v1, "pullrefresh/normal/uik_refreshing.json"

    const-string v2, "pullrefresh/normal/uik_pull_to_refresh.json"

    .line 55
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mDefaultRefreshAnimation:[Ljava/lang/String;

    .line 62
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshAnimation:[Ljava/lang/String;

    const-string v0, "layout_inflater"

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 71
    sget v0, Lcom/taobao/uikit/extend/R$layout;->uik_swipe_refresh_header:I

    invoke-virtual {p1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    sget p1, Lcom/taobao/uikit/extend/R$color;->uik_refresh_head_bg:I

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->setBackgroundResource(I)V

    .line 75
    sget p1, Lcom/taobao/uikit/extend/R$id;->uik_refresh_header:I

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshHeaderView:Landroid/widget/FrameLayout;

    .line 77
    sget p1, Lcom/taobao/uikit/extend/R$id;->uik_refresh_header_fl:I

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshViewGroup:Landroid/widget/FrameLayout;

    .line 79
    sget p1, Lcom/taobao/uikit/extend/R$id;->uik_refresh_header_progress1:I

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/animationkit/AnimationView;

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView1:Lcom/taobao/android/animationkit/AnimationView;

    .line 80
    sget p1, Lcom/taobao/uikit/extend/R$id;->uik_refresh_header_progress2:I

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/animationkit/AnimationView;

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView2:Lcom/taobao/android/animationkit/AnimationView;

    .line 81
    sget p1, Lcom/taobao/uikit/extend/R$id;->uik_refresh_header_progress3:I

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/animationkit/AnimationView;

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView3:Lcom/taobao/android/animationkit/AnimationView;

    .line 83
    sget p1, Lcom/taobao/uikit/extend/R$id;->uik_refresh_header_second_floor:I

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mSecondFloorView:Landroid/view/View;

    .line 86
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView1:Lcom/taobao/android/animationkit/AnimationView;

    const-string v0, "pullrefresh/normal/images"

    invoke-virtual {p1, v0}, Lcom/taobao/android/animationkit/AnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView2:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, v0}, Lcom/taobao/android/animationkit/AnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView3:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, v0}, Lcom/taobao/android/animationkit/AnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 90
    sget-object p1, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V

    return-void
.end method


# virtual methods
.method public changeToState(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mState:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    if-ne v0, p1, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeToState called: oldState is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mState:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " newState is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBDefaultRefreshHeader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mPullRefreshListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mPullRefreshListener:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mState:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-interface {v0, v1, p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;->onRefreshStateChanged(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V

    .line 121
    :cond_1
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mState:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    .line 123
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView1:Lcom/taobao/android/animationkit/AnimationView;

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshAnimation:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mDefaultRefreshAnimation:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    aget-object v0, v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/taobao/android/animationkit/AnimationView;->setAnimation(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView2:Lcom/taobao/android/animationkit/AnimationView;

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshAnimation:[Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mDefaultRefreshAnimation:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_1

    :cond_3
    aget-object v0, v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Lcom/taobao/android/animationkit/AnimationView;->setAnimation(Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView3:Lcom/taobao/android/animationkit/AnimationView;

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshAnimation:[Ljava/lang/String;

    const/4 v2, 0x2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mDefaultRefreshAnimation:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_2

    :cond_4
    aget-object v0, v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lcom/taobao/android/animationkit/AnimationView;->setAnimation(Ljava/lang/String;)V

    .line 127
    sget-object p1, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader$1;->$SwitchMap$com$taobao$uikit$extend$component$refresh$TBRefreshHeader$RefreshState:[I

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mState:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/16 v0, 0x8

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 171
    :pswitch_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshViewGroup:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 159
    :pswitch_1
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView2:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, v1}, Lcom/taobao/android/animationkit/AnimationView;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView1:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, v0}, Lcom/taobao/android/animationkit/AnimationView;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView3:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, v0}, Lcom/taobao/android/animationkit/AnimationView;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshViewGroup:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 153
    :pswitch_2
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshViewGroup:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 142
    :pswitch_3
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView1:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, v1}, Lcom/taobao/android/animationkit/AnimationView;->setVisibility(I)V

    .line 144
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView2:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, v0}, Lcom/taobao/android/animationkit/AnimationView;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView3:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, v0}, Lcom/taobao/android/animationkit/AnimationView;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshViewGroup:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 130
    :pswitch_4
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView3:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, v1}, Lcom/taobao/android/animationkit/AnimationView;->setVisibility(I)V

    .line 131
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView1:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, v0}, Lcom/taobao/android/animationkit/AnimationView;->setVisibility(I)V

    .line 132
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView2:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, v0}, Lcom/taobao/android/animationkit/AnimationView;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView1:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1}, Lcom/taobao/android/animationkit/AnimationView;->cancelAnimation()V

    .line 135
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView2:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1}, Lcom/taobao/android/animationkit/AnimationView;->cancelAnimation()V

    .line 136
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView3:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1}, Lcom/taobao/android/animationkit/AnimationView;->cancelAnimation()V

    .line 183
    :goto_3
    :pswitch_5
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mState:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    sget-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->REFRESHING:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    if-ne p1, v0, :cond_5

    .line 184
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView2:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1}, Lcom/taobao/android/animationkit/AnimationView;->playAnimation()V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public getRefreshView()Landroid/view/View;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshViewGroup:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getSecondFloorView()Landroid/view/View;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mSecondFloorView:Landroid/view/View;

    return-object v0
.end method

.method public setHardwareEnable(Z)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView1:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {v0, p1}, Lcom/taobao/android/animationkit/AnimationView;->setHardwareEnable(Z)V

    .line 303
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView2:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {v0, p1}, Lcom/taobao/android/animationkit/AnimationView;->setHardwareEnable(Z)V

    .line 304
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView3:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {v0, p1}, Lcom/taobao/android/animationkit/AnimationView;->setHardwareEnable(Z)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView1:Lcom/taobao/android/animationkit/AnimationView;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p1}, Lcom/taobao/android/animationkit/AnimationView;->setProgress(F)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView2:Lcom/taobao/android/animationkit/AnimationView;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0, p1}, Lcom/taobao/android/animationkit/AnimationView;->setProgress(F)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView3:Lcom/taobao/android/animationkit/AnimationView;

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {v0, p1}, Lcom/taobao/android/animationkit/AnimationView;->setProgress(F)V

    :cond_2
    return-void
.end method

.method public setRefreshAnimation([Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 191
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshAnimation:[Ljava/lang/String;

    .line 194
    :cond_1
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshAnimation:[Ljava/lang/String;

    .line 196
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView1:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, p2}, Lcom/taobao/android/animationkit/AnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView2:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, p2}, Lcom/taobao/android/animationkit/AnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView3:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, p2}, Lcom/taobao/android/animationkit/AnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    return-void
.end method

.method public setRefreshTipColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setRefreshTips([Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setSecondFloorView(Landroid/view/View;)V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mSecondFloorView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 216
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshHeaderView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 217
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 218
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshHeaderView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mSecondFloorView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 219
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshHeaderView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mSecondFloorView:Landroid/view/View;

    .line 221
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mSecondFloorView:Landroid/view/View;

    sget v0, Lcom/taobao/uikit/extend/R$id;->uik_refresh_header_second_floor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshHeaderView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 225
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 227
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshHeaderView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mSecondFloorView:Landroid/view/View;

    .line 229
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mSecondFloorView:Landroid/view/View;

    sget v0, Lcom/taobao/uikit/extend/R$id;->uik_refresh_header_second_floor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public switchStyle(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;)V
    .locals 5

    .line 246
    sget-object v0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader$1;->$SwitchMap$com$taobao$uikit$extend$component$refresh$TBRefreshHeader$RefreshHeaderStyle:[I

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string p1, "pullrefresh/dark/uik_refresh_finished.json"

    const-string v2, "pullrefresh/dark/uik_refreshing.json"

    const-string v3, "pullrefresh/dark/uik_pull_to_refresh.json"

    .line 270
    filled-new-array {v3, v2, p1}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mDefaultRefreshAnimation:[Ljava/lang/String;

    .line 276
    filled-new-array {v3, v2, p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshAnimation:[Ljava/lang/String;

    .line 282
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView1:Lcom/taobao/android/animationkit/AnimationView;

    const-string v2, "pullrefresh/dark/images"

    invoke-virtual {p1, v2}, Lcom/taobao/android/animationkit/AnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView2:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, v2}, Lcom/taobao/android/animationkit/AnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView3:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, v2}, Lcom/taobao/android/animationkit/AnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 286
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView1:Lcom/taobao/android/animationkit/AnimationView;

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshAnimation:[Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mDefaultRefreshAnimation:[Ljava/lang/String;

    aget-object v2, v2, v3

    goto :goto_0

    :cond_1
    aget-object v2, v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Lcom/taobao/android/animationkit/AnimationView;->setAnimation(Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView2:Lcom/taobao/android/animationkit/AnimationView;

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshAnimation:[Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mDefaultRefreshAnimation:[Ljava/lang/String;

    aget-object v0, v2, v0

    goto :goto_1

    :cond_2
    aget-object v0, v2, v0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/taobao/android/animationkit/AnimationView;->setAnimation(Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView3:Lcom/taobao/android/animationkit/AnimationView;

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshAnimation:[Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mDefaultRefreshAnimation:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_2

    :cond_3
    aget-object v0, v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Lcom/taobao/android/animationkit/AnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string p1, "pullrefresh/normal/uik_refresh_finished.json"

    const-string v0, "pullrefresh/normal/uik_refreshing.json"

    const-string v1, "pullrefresh/normal/uik_pull_to_refresh.json"

    .line 250
    filled-new-array {v1, v0, p1}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mDefaultRefreshAnimation:[Ljava/lang/String;

    .line 256
    filled-new-array {v1, v0, p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshAnimation:[Ljava/lang/String;

    .line 262
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView1:Lcom/taobao/android/animationkit/AnimationView;

    const-string v0, "pullrefresh/normal/images"

    invoke-virtual {p1, v0}, Lcom/taobao/android/animationkit/AnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView2:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, v0}, Lcom/taobao/android/animationkit/AnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBDefaultRefreshHeader;->mRefreshProgressView3:Lcom/taobao/android/animationkit/AnimationView;

    invoke-virtual {p1, v0}, Lcom/taobao/android/animationkit/AnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
