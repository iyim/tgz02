.class Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService$1;
.super Lcom/alibaba/ailabs/genie/pay/GeniePayCallbackImp;
.source "GeniePayAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;->method(Landroid/os/Bundle;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;

.field final synthetic val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService$1;->this$0:Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayCallbackImp;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, " json is null"

    .line 60
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asyncServerCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAudioPayService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v2, "retCode"

    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "data"

    .line 64
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;->ret(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method
