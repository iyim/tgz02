.class Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService$1;
.super Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;
.source "VoiceDataProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;
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

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;

    invoke-direct {p0}, Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
