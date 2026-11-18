.class Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode$2;
.super Ljava/lang/Object;
.source "PreResultScreenMode.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "PreResultScreenMode"

    const-string v1, "TimingShutdown task Execute"

    .line 111
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->access$000(Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
