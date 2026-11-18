.class Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$1;
.super Ljava/lang/Object;
.source "BaseService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->lambda$onRefresh$1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onConfirm()V
    .locals 3

    .line 156
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_REFRESH:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
