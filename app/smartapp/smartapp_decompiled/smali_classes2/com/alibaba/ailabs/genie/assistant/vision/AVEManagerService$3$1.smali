.class Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3$1;
.super Ljava/lang/Object;
.source "AVEManagerService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/OnAVECallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$100(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/OnAVECallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/OnAVECallback;->onCallback(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
