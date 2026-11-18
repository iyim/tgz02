.class public abstract Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "AguiCommonCallback.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IAguiCommonCallback;


# static fields
.field private static final STATUS_GATEWAY:Ljava/lang/String; = "status_gateway"

.field private static final STATUS_USER:Ljava/lang/String; = "status_user"

.field private static final TAG:Ljava/lang/String; = "AguiCommonCallback"


# instance fields
.field private mAguiCallbackKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;->mAguiCallbackKey:Ljava/lang/String;

    return-object v0
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/16 v1, 0x36

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, ""

    const-string v1, "id"

    .line 44
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "type"

    .line 45
    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "status"

    .line 46
    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agui status callback id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AguiCommonCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "status_gateway"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;->onGatewayStatus(Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "status_user"

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;->onUserStatus(Z)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 55
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 41
    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected setKey(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;->mAguiCallbackKey:Ljava/lang/String;

    return-void
.end method
