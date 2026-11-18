.class Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$4;
.super Ljava/lang/Object;
.source "AVEBaseService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaListener;


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

    .line 193
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaStatusUpdate(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " i1 = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " s= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " s1 = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 198
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->access$302(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;Z)Z

    .line 199
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isWebAppPlayingVideo = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->access$300(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    const-string p2, "start_play"

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onWepAppVideoPlayChanged(Ljava/lang/String;)Z

    goto :goto_0

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->access$302(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;Z)Z

    .line 203
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    const-string p2, "stop_play"

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onWepAppVideoPlayChanged(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method
