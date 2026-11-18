.class public abstract Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;",
        ">",
        "Landroid/support/v4/app/Fragment;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseFragmentTAG"


# instance fields
.field protected mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

.field protected mContext:Landroid/content/Context;

.field protected mController:Landroid/support/v4/media/session/MediaControllerCompat;

.field protected mCurrentPageNum:I

.field protected mCurrentSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

.field protected mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

.field protected mItemType:Ljava/lang/String;

.field protected mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

.field protected mView:Landroid/view/View;

.field protected mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mCurrentPageNum:I

    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getLayoutId()I
.end method

.method public getListType()Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    return-object v0
.end method

.method public abstract handError(Ljava/lang/Integer;)V
.end method

.method public initObserver()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected abstract initView()V
.end method

.method public onActionDown(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActionUp(Landroid/view/MotionEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",onActivityCreated"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseFragmentTAG"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "BaseFragmentTAG"

    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    new-instance p1, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 108
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mViewModel:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->getLayoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mView:Landroid/view/View;

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->initView()V

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->initObserver()V

    .line 126
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 137
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFragmentTAG"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mContext:Landroid/content/Context;

    .line 144
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mView:Landroid/view/View;

    .line 145
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    .line 146
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    .line 147
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mItemType:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 149
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mCurrentSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    .line 150
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onSelected()V
    .locals 4

    .line 165
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->clearData()V

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mCurrentSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->showLoading(Z)V

    .line 169
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mCurrentSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->requestCurrentPageData(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->showLoading(Z)V

    .line 174
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->requestData(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestCurrentPageData(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->setCurrentSong(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    .line 157
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->showLoading(Z)V

    .line 159
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mCurrentSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPageNum()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mItemType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->requestData(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setContentPlay(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 76
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    .line 77
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mItemType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setController(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-void
.end method

.method public setCurrentPageNum(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mCurrentPageNum:I

    return-void
.end method

.method public setCurrentSong(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mCurrentSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    return-void
.end method

.method public updateCurrentMedia(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->mCurrentSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    return-void
.end method

.method public updateExtra(Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
