.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;
.super Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;
.source "TMEMainActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity<",
        "Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;",
        ">;",
        "Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$ItemClickListener;"
    }
.end annotation


# static fields
.field public static final ACCOUNT_SETTING:Ljava/lang/String; = "setting"

.field public static final BIND_PAGE:Ljava/lang/String; = "bind"

.field public static final FAVORITES_PAGE:Ljava/lang/String; = "favorites"

.field public static final SONG_LIST_PAGE:Ljava/lang/String; = "songList"

.field private static final TAG:Ljava/lang/String; = "TME-MainActivity"


# instance fields
.field private backToHomeTextView:Landroid/widget/TextView;

.field private errorLayout:Landroid/view/View;

.field private mDismissRightDialog:Z

.field private mNeedRefresh:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mShowBenefits:Z

.field private mSource:Ljava/lang/String;

.field private refreshPageTextView:Landroid/widget/TextView;

.field private showScene:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private handleIntent()V
    .locals 7

    .line 208
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "dismissRightDialog"

    const-string v2, "needRefresh"

    const-string v3, "source"

    const-string v4, "showScene"

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showScene:Ljava/lang/String;

    .line 211
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mSource:Ljava/lang/String;

    const-string v3, "showBenefits"

    .line 212
    invoke-virtual {v0, v3, v5}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mShowBenefits:Z

    .line 213
    invoke-virtual {v0, v2, v5}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mNeedRefresh:Z

    .line 214
    invoke-virtual {v0, v1, v5}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mDismissRightDialog:Z

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showScene:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mSource:Ljava/lang/String;

    .line 218
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mNeedRefresh:Z

    .line 219
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mDismissRightDialog:Z

    .line 221
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TMEMainActivity-- handleIntent mDismissRightDialog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mDismissRightDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showScene:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 224
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showScene:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "setting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "songList"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "bind"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v2, "favorites"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_1
    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_3

    .line 250
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mShowBenefits:Z

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mNeedRefresh:Z

    invoke-direct {p0, v6, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showMusicAccountsFragment(ZZZ)V

    goto :goto_3

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 246
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mSource:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v6}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->showFavoritesListFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)V

    goto :goto_3

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 241
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mSource:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v6}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->showPlayListFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)V

    goto :goto_3

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 228
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mDismissRightDialog:Z

    if-eqz v0, :cond_6

    .line 229
    iput-boolean v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mNeedRefresh:Z

    goto :goto_2

    .line 231
    :cond_6
    iput-boolean v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mNeedRefresh:Z

    .line 233
    :goto_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mSource:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mShowBenefits:Z

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mNeedRefresh:Z

    invoke-direct {p0, v0, v6, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showMusicAccountBindFragment(Ljava/lang/String;ZZZ)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getListAppsData()V

    .line 235
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getAppAuthInfo(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getAppAuthInfoWechat(Ljava/lang/String;)V

    .line 255
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a6895a9 -> :sswitch_3
        0x2e243d -> :sswitch_2
        0x5b7f8753 -> :sswitch_1
        0x765f0e50 -> :sswitch_0
    .end sparse-switch
.end method

.method private onlyForUTTest()V
    .locals 3

    .line 194
    sget-boolean v0, Lcom/alibaba/ailabs/genie/musicplayer/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "debug_api_url"

    const-string v2, "https://service-usertrack.alibaba-inc.com/upload_records_from_client"

    .line 196
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "debug_key"

    const-string v2, "24995429"

    .line 197
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "debug_sampling_option"

    const-string v2, "true"

    .line 198
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ut/mini/internal/UTTeamWork;->turnOnRealTimeDebug(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private showMusicAccountBindFragment(Ljava/lang/String;ZZZ)V
    .locals 3

    const-string v0, "TME-MainActivity"

    const-string v1, "showMusicAccountBindFragment"

    .line 285
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 288
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->setItemClickListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$ItemClickListener;)V

    const/4 v2, 0x1

    .line 290
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->showTitle(Z)V

    .line 291
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->setShowFirst(Z)V

    .line 292
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->setSource(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->setShowAccountBenefitsDialog(Z)V

    .line 294
    invoke-virtual {v1, p4}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->setNeedRefresh(Z)V

    if-eqz p2, :cond_0

    .line 296
    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->mainPageFlId:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 298
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->mainPageFlId:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 300
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private showMusicAccountsFragment(ZZZ)V
    .locals 3

    const-string v0, "TME-MainActivity"

    const-string v1, "showMusicAccountsFragment"

    .line 305
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 308
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;-><init>()V

    .line 309
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->setShowFirst(Z)V

    .line 310
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->setShowAccountBenefitsDialog(Z)V

    .line 311
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$tY86OfTWKh3LcUleSTddCzjOWL0;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$tY86OfTWKh3LcUleSTddCzjOWL0;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;ZZ)V

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->setAccountBindInterface(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$AccountBindInterface;)V

    if-eqz p1, :cond_0

    .line 315
    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->mainPageFlId:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 317
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->mainPageFlId:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 320
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private showUserRightBindingDialog(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;",
            ">;)V"
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->setModelBeanList(Ljava/util/List;)Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$VZzpbHLIXlxfcdJmHpu_ehuMOV4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$VZzpbHLIXlxfcdJmHpu_ehuMOV4;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;)V

    .line 179
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->setBindingCallBack(Landroid/arch/core/util/Function;)Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$nf6in7oH0Wa6olBrR3vvMkenClI;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$nf6in7oH0Wa6olBrR3vvMkenClI;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;)V

    .line 185
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->setSaveRightsSuccessCallBack(Landroid/arch/core/util/Function;)Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;

    .line 189
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;->create()Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->show()V

    return-void
.end method


# virtual methods
.method protected handError(Ljava/lang/Integer;)V
    .locals 2

    .line 335
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->errorLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 339
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->mainPageFlId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 340
    instance-of v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    if-eqz v1, :cond_1

    .line 341
    nop

    nop

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->handError(Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected handMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected handleBack()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected initViewModel()Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;
    .locals 2

    .line 66
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    return-object v0
.end method

.method protected bridge synthetic initViewModel()Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->initViewModel()Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    move-result-object v0

    return-object v0
.end method

.method public jumpToChannelFragment(Ljava/lang/String;)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->showChannelFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$150$TMEMainActivity(Ljava/util/List;Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TMEMainActivity-- checkHasRightRecord mDismissRightDialog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mDismissRightDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mDismissRightDialog:Z

    if-nez p2, :cond_0

    .line 127
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showUserRightBindingDialog(Ljava/util/List;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$null$152$TMEMainActivity(Ljava/util/List;Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 0

    .line 162
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 163
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showUserRightBindingDialog(Ljava/util/List;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$onCreate$148$TMEMainActivity(Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreate$149$TMEMainActivity(Landroid/view/View;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 101
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->errorLayout:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->setMutableLiveAppList(Ljava/util/List;)V

    .line 103
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getListAppsData()V

    return-void
.end method

.method public synthetic lambda$onCreate$151$TMEMainActivity(Ljava/util/List;)V
    .locals 4

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 111
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->mainPageFlId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 113
    instance-of v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mShowBenefits:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 114
    instance-of v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEChannelFragment;

    if-eqz v0, :cond_4

    :cond_1
    if-eqz p1, :cond_4

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    .line 118
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->isIsAuthorized()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 124
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$NAyvEBBHUDwiovGp_P2lIU5A1Cs;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$NAyvEBBHUDwiovGp_P2lIU5A1Cs;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;Ljava/util/List;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->checkHasRightRecord(Landroid/arch/core/util/Function;)V

    :cond_4
    return-void
.end method

.method public synthetic lambda$onCreate$153$TMEMainActivity(Ljava/util/List;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 149
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    .line 153
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->isIsAuthorized()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->showChannelFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$6oezE3qEtz_7lE5EAAfa4OAEujg;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$6oezE3qEtz_7lE5EAAfa4OAEujg;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;Ljava/util/List;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->checkHasRightRecord(Landroid/arch/core/util/Function;)V

    goto :goto_1

    .line 168
    :cond_2
    invoke-direct {p0, v3, v4, v4}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showMusicAccountsFragment(ZZZ)V

    .line 171
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$showMusicAccountsFragment$156$TMEMainActivity(ZZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 312
    invoke-direct {p0, p3, v0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showMusicAccountBindFragment(Ljava/lang/String;ZZZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public synthetic lambda$showUserRightBindingDialog$154$TMEMainActivity(Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    .line 180
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mNeedRefresh:Z

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showMusicAccountBindFragment(Ljava/lang/String;ZZZ)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getAppAuthInfo(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getAppAuthInfoWechat(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$showUserRightBindingDialog$155$TMEMainActivity(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->showChannelFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onBackPressed()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onBackPressed()V

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 1

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 325
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->closeIbId:I

    if-ne p1, v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->finish()V

    goto :goto_0

    .line 327
    :cond_0
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->account_setting:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->bind_more_music_account:I

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 329
    invoke-direct {p0, p1, p1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showMusicAccountsFragment(ZZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_main_activity:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->setContentView(I)V

    .line 90
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mStopReceiver:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$StopReceiver;

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->loading_view:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 94
    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->error_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->errorLayout:Landroid/view/View;

    .line 95
    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->back_to_home:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->backToHomeTextView:Landroid/widget/TextView;

    .line 96
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->backToHomeTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$Aa-3Q1tT9vq8reyebjF0I34FC6I;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$Aa-3Q1tT9vq8reyebjF0I34FC6I;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->refresh_page:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->refreshPageTextView:Landroid/widget/TextView;

    .line 99
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->refreshPageTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$Kn1xYMvO2Hu0NEanvY3w6aoh-3I;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$Kn1xYMvO2Hu0NEanvY3w6aoh-3I;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->handleIntent()V

    .line 108
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showScene:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$S1jd14WNzRCgYSE-ODSn7l8YmwA;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$S1jd14WNzRCgYSE-ODSn7l8YmwA;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;)V

    invoke-virtual {p1, p0, v0}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showScene:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 139
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showScene:Ljava/lang/String;

    const-string v0, "bind"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showScene:Ljava/lang/String;

    const-string v0, "favorites"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showScene:Ljava/lang/String;

    const-string v0, "songList"

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showScene:Ljava/lang/String;

    const-string v0, "setting"

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return-void

    .line 146
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getListAppsData()V

    .line 148
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$Rxc_kvHSGvavQJuj-RlYQD25RHc;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/-$$Lambda$TMEMainActivity$Rxc_kvHSGvavQJuj-RlYQD25RHc;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;)V

    invoke-virtual {p1, p0, v0}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public onMediaSessionConnected()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->setController(Landroid/support/v4/media/session/MediaControllerCompat;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 267
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string p1, "TME-MainActivity"

    const-string v0, "onNewIntent ====="

    .line 268
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->handleIntent()V

    .line 272
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showScene:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mSource:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 273
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showScene:Ljava/lang/String;

    const-string v0, "bind"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showScene:Ljava/lang/String;

    const-string v0, "favorites"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->showScene:Ljava/lang/String;

    const-string v0, "songList"

    .line 274
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-void

    .line 279
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 280
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getListAppsData()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 261
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onResume()V

    .line 262
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->setTMEMainActivity(Landroid/app/Activity;)V

    return-void
.end method
