.class Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$3;
.super Ljava/lang/Object;
.source "AVEBaseService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCreate()V
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

    .line 176
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/String;)V
    .locals 1

    .line 179
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onUpdate call syncBlackListConf"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->syncBlackListConf()V

    return-void
.end method
