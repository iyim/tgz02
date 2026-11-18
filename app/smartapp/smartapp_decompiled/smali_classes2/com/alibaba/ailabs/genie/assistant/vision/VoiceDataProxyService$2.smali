.class Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService$2;
.super Ljava/lang/Object;
.source "VoiceDataProxyService.java"

# interfaces
.implements Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
    .locals 2

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    invoke-virtual {p1}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->getExtraData()[B

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;)Lcom/alibaba/ailabs/avesdk/AVEClient;

    move-result-object p1

    const-string v1, "voice_data"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Landroid/os/Bundle;)Z

    const/4 p1, 0x0

    return-object p1
.end method
