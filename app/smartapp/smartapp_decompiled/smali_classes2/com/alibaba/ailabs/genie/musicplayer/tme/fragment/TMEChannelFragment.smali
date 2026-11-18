.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;
.super Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;
.source "TMEChannelFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment<",
        "Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;",
        ">;",
        "Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ItemClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TME-ChannelFragment"


# instance fields
.field private AppIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSource:Ljava/lang/String;

.field private modelBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;",
            ">;"
        }
    .end annotation
.end field

.field private tabItemBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private tabTitleRv:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->AppIdMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->AppIdMap:Ljava/util/HashMap;

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mSource:Ljava/lang/String;

    return-void
.end method

.method private showBindAccountFragment(Ljava/lang/String;)V
    .locals 3

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 121
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->setCanShowBindMoreBtn(Z)V

    .line 122
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->setController(Landroid/support/v4/media/session/MediaControllerCompat;)V

    .line 123
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEChannelFragment$k2ZdTnXVMH8_eQNvLGCoLFxqFaw;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEChannelFragment$k2ZdTnXVMH8_eQNvLGCoLFxqFaw;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->setItemClickListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$ItemClickListener;)V

    .line 128
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->channelPageFlId:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 129
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->setMutableAuthInfo(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getAppAuthInfo(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getAppAuthInfoWechat(Ljava/lang/String;)V

    return-void
.end method

.method private showFeedsFragment(Ljava/lang/String;)V
    .locals 3

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->AppIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->setController(Landroid/support/v4/media/session/MediaControllerCompat;)V

    .line 142
    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->channelPageFlId:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 143
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method


# virtual methods
.method public clickTab(Ljava/lang/String;)V
    .locals 3

    const-string v0, "GENIE"

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->showFeedsFragment(Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->modelBeanList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->modelBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    .line 154
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->isIsAuthorized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->showFeedsFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->showBindAccountFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "TME-ChannelFragment"

    const-string v2, "modelBean.getSrc() error null empty"

    .line 161
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->tabItemBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;

    const/4 v2, 0x0

    .line 167
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->setSelected(Z)V

    .line 168
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->getSrc()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 169
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->setSelected(Z)V

    goto :goto_2

    .line 172
    :cond_5
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mSource:Ljava/lang/String;

    .line 173
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->tabTitleRv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .line 48
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_channel_fragment:I

    return v0
.end method

.method public handError(Ljava/lang/Integer;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected initView()V
    .locals 8

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->modelBeanList:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->tabItemBeanList:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;-><init>()V

    const-string v1, "\u7cbe\u7075\u97f3\u4e50"

    .line 58
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->setName(Ljava/lang/String;)V

    const-string v1, "GENIE"

    .line 59
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->setSrc(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->setSelected(Z)V

    .line 62
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->tabItemBeanList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->modelBeanList:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->modelBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    .line 65
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->AppIdMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v5, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;

    invoke-direct {v5}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;-><init>()V

    .line 67
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mSource:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    invoke-virtual {v5, v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->setSelected(Z)V

    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {v5, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->setSelected(Z)V

    .line 72
    :goto_1
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->setName(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->setSrc(Ljava/lang/String;)V

    .line 74
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->tabItemBeanList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mView:Landroid/view/View;

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->channelRcyId:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->tabTitleRv:Landroid/support/v7/widget/RecyclerView;

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->tabTitleRv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 82
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 85
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->tabTitleRv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 87
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->tabItemBeanList:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 88
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;->setItemClickListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ItemClickListener;)V

    .line 89
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->tabTitleRv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mSource:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mSource:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->showFeedsFragment(Ljava/lang/String;)V

    goto :goto_3

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->modelBeanList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->modelBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    .line 96
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->isIsAuthorized()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mSource:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->showFeedsFragment(Ljava/lang/String;)V

    goto :goto_2

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mSource:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->showBindAccountFragment(Ljava/lang/String;)V

    goto :goto_2

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mSource:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->showFeedsFragment(Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public synthetic lambda$showBindAccountFragment$146$TMEChannelFragment(Ljava/lang/String;)V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->showChannelFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->tabTitleRv:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 179
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 180
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;->tabTitleRv:Landroid/support/v7/widget/RecyclerView;

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->onDestroyView()V

    return-void
.end method
