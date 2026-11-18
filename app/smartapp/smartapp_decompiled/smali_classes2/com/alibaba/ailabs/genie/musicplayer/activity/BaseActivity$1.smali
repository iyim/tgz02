.class Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog$ButtonCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->showLoginDialog(Landroid/support/v4/media/MediaMetadataCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

.field final synthetic val$song:Landroid/support/v4/media/MediaMetadataCompat;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$1;->val$song:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCancel()V
    .locals 2

    .line 284
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showLoginDialog,OnCancel"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->dismiss()V

    .line 286
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$102(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;

    return-void
.end method

.method public OnConfirm()V
    .locals 2

    .line 291
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showLoginDialog,OnConfirm"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->dismiss()V

    .line 293
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$102(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;

    .line 294
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$1;->val$song:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->login(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method
