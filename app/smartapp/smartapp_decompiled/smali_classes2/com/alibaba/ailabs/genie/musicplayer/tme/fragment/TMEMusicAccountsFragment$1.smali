.class Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$1;
.super Ljava/lang/Object;
.source "TMEMusicAccountsFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->initClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindNow(Ljava/lang/String;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->setMutableAuthInfo(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;)V

    .line 217
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getAppAuthInfo(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getAppAuthInfoWechat(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$AccountBindInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$AccountBindInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$AccountBindInterface;->openAccountBindFragment(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->access$400(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public playFirst(Ljava/lang/String;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->access$700(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->reOrderSource(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->access$602(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public showChannelFragment(Ljava/lang/String;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->access$800(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->showChannelFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method

.method public unbind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->access$500(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
