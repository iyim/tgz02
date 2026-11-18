.class Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$2;
.super Landroid/content/BroadcastReceiver;
.source "ForbiddenModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$2;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 193
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "ForbiddenModeManager"

    if-eqz v0, :cond_0

    :try_start_1
    const-string p1, "ACTION_SCREEN_ON"

    .line 196
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.DATE_CHANGED"

    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "ACTION_DATE_CHANGED"

    .line 198
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "\u9694\u5929\u91cd\u7f6e\u6807\u8bc6"

    .line 199
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$2;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    const-string p2, "sp_key_total_available_time"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->updateFlagCloseByUser(Ljava/lang/String;Z)V

    .line 201
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$2;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->dismissTotalAvailableTimeDialog()V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 202
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ACTION_SCREEN_OFF"

    .line 203
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
