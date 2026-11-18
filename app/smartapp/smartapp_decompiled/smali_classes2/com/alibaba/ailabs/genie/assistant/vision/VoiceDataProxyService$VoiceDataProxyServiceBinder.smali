.class public Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService$VoiceDataProxyServiceBinder;
.super Landroid/os/Binder;
.source "VoiceDataProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VoiceDataProxyServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService$VoiceDataProxyServiceBinder;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService$VoiceDataProxyServiceBinder;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;

    return-object v0
.end method
