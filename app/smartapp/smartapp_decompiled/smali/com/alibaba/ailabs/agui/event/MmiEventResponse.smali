.class public Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
.super Ljava/lang/Object;
.source "MmiEventResponse.java"


# instance fields
.field private data:Ljava/lang/String;

.field extraData:[B

.field private isHandled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static toBundle(Lcom/alibaba/ailabs/agui/event/MmiEventResponse;)Landroid/os/Bundle;
    .locals 3

    .line 62
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_1

    const-string/jumbo v1, "rh"

    .line 64
    iget-boolean v2, p0, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->isHandled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->data:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "rd"

    .line 66
    iget-object v2, p0, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->extraData:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->extraData:[B

    array-length v1, v1

    if-lez v1, :cond_1

    const-string/jumbo v1, "red"

    .line 70
    iget-object p0, p0, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->extraData:[B

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static toMmiEventResponse(Landroid/os/Bundle;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
    .locals 4

    const/4 v0, 0x0

    .line 46
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;

    invoke-direct {v1}, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;-><init>()V

    if-eqz p0, :cond_0

    const-string/jumbo v2, "rh"

    const/4 v3, 0x0

    .line 49
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->isHandled:Z

    const-string/jumbo v2, "rd"

    .line 50
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->data:Ljava/lang/String;

    const-string/jumbo v2, "red"

    .line 51
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->extraData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()[B
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->extraData:[B

    return-object v0
.end method

.method public isHandled()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->isHandled:Z

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->data:Ljava/lang/String;

    return-void
.end method

.method public setExtraData([B)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->extraData:[B

    return-void
.end method

.method public setHandled(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->isHandled:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmiEventResponse{isHandled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->isHandled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/agui/event/MmiEventResponse;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
