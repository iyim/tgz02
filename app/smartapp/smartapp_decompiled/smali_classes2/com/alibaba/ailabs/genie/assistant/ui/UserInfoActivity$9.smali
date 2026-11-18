.class Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$9;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->showLogoutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$9;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 345
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 346
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->access$300(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;)V

    return-void

    .line 349
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$9;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 350
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->logoutUser()V

    .line 351
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    const-string v0, "exit_account_confirm"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->access$400(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;Ljava/lang/String;)V

    .line 352
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->finish()V

    return-void
.end method
