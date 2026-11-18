.class Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode$1;
.super Landroid/os/Handler;
.source "PreResultScreenMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;Landroid/os/Looper;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 97
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->getInstace()Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->setScreenAlwaysOn(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "PreResultScreenMode"

    const-string v0, "TimingShutdown task Execute"

    .line 99
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->access$000(Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "shutdown"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
