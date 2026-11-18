.class Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$5;
.super Landroid/database/ContentObserver;
.source "AVEManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->initAveService(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$5;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$5;->val$type:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 196
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$5;->val$type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Setting Changed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$5;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$5;->val$type:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEUtils;->checkAveSettingStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$5;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$5;->val$type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->startAveService(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$5;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$5;->val$type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->stopAveService(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
