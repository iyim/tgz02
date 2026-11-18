.class Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$1;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/account/IUserInfoUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->initView()V
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

    .line 95
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserinfUpdate()V
    .locals 2

    .line 98
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getinstace()Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getUserData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 100
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;->access$000(Lcom/alibaba/ailabs/genie/assistant/ui/UserInfoActivity;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
