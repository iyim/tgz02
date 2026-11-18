.class Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$6;
.super Ljava/lang/Object;
.source "AVEManagerService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;


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

    .line 223
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$6;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .locals 2

    const-string v0, "onUpdate"

    .line 226
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$6;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEUtils;->isChildFaceDetectOpen(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "GenieChildFaceVEngine"

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$6;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->startAveService(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$6;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->stopAveService(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
