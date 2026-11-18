.class Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$2;
.super Ljava/lang/Object;
.source "TMEMusicFeedsFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse;",
            ">;)V"
        }
    .end annotation

    .line 159
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 161
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->NETEASE_TYPE:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->updateNetEaseAccountInfo(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->updateTmeAccountInfo(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;)V

    :cond_1
    :goto_0
    return-void
.end method
