.class Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$4;
.super Ljava/lang/Object;
.source "TMEMusicAccountsFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->showUnbindDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

.field final synthetic val$extension:Ljava/lang/String;

.field final synthetic val$finalSourceText:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$4;->val$source:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$4;->val$extension:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$4;->val$finalSourceText:Ljava/lang/String;

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

.method public onConfirm(I)V
    .locals 3

    const-string v0, "TME-unbind"

    const-string v1, "confirm click"

    .line 341
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$4;->val$source:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->access$1000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 344
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;-><init>()V

    .line 345
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$4$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$4$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$4;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;->InvalidAccountBind(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$UnbindCallback;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 357
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$4;->val$source:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$4;->val$extension:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$4;->val$finalSourceText:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->access$1100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
