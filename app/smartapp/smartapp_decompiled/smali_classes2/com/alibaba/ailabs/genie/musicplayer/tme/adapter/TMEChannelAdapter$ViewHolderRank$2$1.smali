.class Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2$1;
.super Ljava/lang/Object;
.source "TMEChannelAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2$1;->this$2:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2$1;->this$2:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->access$900(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2$1;->this$2:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->access$700(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " loadFirstBillBoardPage loadNextBillBoardPage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2$1;->this$2:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->access$900(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TME-ChannelAdapter"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2$1;->this$2:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->access$1000(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;)V

    :cond_0
    return-void
.end method
