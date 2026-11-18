.class Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$2;
.super Ljava/lang/Object;
.source "AVEBaseService.java"

# interfaces
.implements Lcom/alibaba/ailabs/comm/task/listener/IScene;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScene(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScene s = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->access$202(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onSceneModeChanged(Ljava/lang/String;IILjava/lang/String;)Z

    const/4 p1, 0x0

    return p1
.end method
