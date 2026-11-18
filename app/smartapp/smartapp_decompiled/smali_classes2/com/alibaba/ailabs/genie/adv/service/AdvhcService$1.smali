.class Lcom/alibaba/ailabs/genie/adv/service/AdvhcService$1;
.super Ljava/lang/Object;
.source "AdvhcService.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;->getAdvertise(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;

.field final synthetic val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService$1;->this$0:Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get huichuan adv data, reponse onFailure ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdvService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    if-eqz p1, :cond_0

    .line 125
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, -0x1

    const-string v1, "retCode"

    .line 126
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "retMsg"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;->ret(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    .line 136
    array-length p2, p1

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    .line 137
    array-length v0, p1

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 138
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 141
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get huichuan adv data, reponse resultStr ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdvService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    if-eqz p1, :cond_1

    .line 144
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    const-string v1, "retCode"

    .line 145
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "data"

    .line 146
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;->ret(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method
