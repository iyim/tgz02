.class Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$5;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$5;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$5;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;->updateAccountInfo()Z

    .line 244
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$5;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->access$200(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;)Lcom/alibaba/ailabs/genie/assistant/sdk/account/IUserInfoUpdate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$5;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$5;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->access$200(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;)Lcom/alibaba/ailabs/genie/assistant/sdk/account/IUserInfoUpdate;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/UserInfoManager;->registerUserInfoListener(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/account/IUserInfoUpdate;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
