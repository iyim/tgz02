.class Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3;
.super Ljava/lang/Object;
.source "AVEManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    check-cast p2, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$AVEBaseBinder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$AVEBaseBinder;->getService()Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$302(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    .line 106
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$300(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$3;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->setCallback(Lcom/alibaba/ailabs/genie/assistant/OnAVECallback;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
