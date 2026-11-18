.class Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$3;
.super Ljava/lang/Object;
.source "TMEMusicFeedsFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$GrayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public success(Z)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->setGrayStatus(Z)V

    return-void
.end method
