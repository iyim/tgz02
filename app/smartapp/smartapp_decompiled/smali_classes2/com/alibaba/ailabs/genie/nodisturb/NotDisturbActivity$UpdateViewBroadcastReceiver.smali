.class Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$UpdateViewBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotDisturbActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateViewBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$UpdateViewBroadcastReceiver;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$1;)V
    .locals 0

    .line 734
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$UpdateViewBroadcastReceiver;-><init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 742
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UpdateUIBroadcastReceiver onReceive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotDisturbActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.alibaba.ailabs.genie.message.UPDATE_UI"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v1, "data_key"

    .line 745
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 746
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE_UI_RECEIVER "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$UpdateViewBroadcastReceiver;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$2600(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;I)V

    :cond_1
    return-void
.end method
