.class Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$3;
.super Ljava/lang/Object;
.source "TMEMusicAccountsFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->querySuperAccountStatus()V
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

    .line 289
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed()V
    .locals 2

    const-string v0, "TME-MusicAccountsFragment"

    const-string v1, "queryUnbindStatus failed"

    .line 302
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public success(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TME-MusicAccountsFragment"

    if-eqz p1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->access$902(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;Ljava/util/List;)Ljava/util/List;

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "statusList size ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->access$900(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "statusList null"

    .line 296
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
