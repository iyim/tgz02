.class public Lcom/alibaba/ailabs/geniesdk/mmi/NativeCapability;
.super Ljava/lang/Object;
.source "NativeCapability.java"

# interfaces
.implements Lcom/alibaba/ailabs/agui/modal/ICapability;
.implements Lcom/alibaba/ailabs/agui/modal/ICapabilityProcessor;


# instance fields
.field private mCapability:Lcom/alibaba/ailabs/agui/modal/ICapability;


# direct methods
.method public constructor <init>(ILcom/alibaba/ailabs/agui/modal/ICapability;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/alibaba/ailabs/geniesdk/mmi/NativeCapability;->mCapability:Lcom/alibaba/ailabs/agui/modal/ICapability;

    .line 14
    invoke-virtual {p0, p1, p0}, Lcom/alibaba/ailabs/geniesdk/mmi/NativeCapability;->setCapabilityProcessor(ILcom/alibaba/ailabs/agui/modal/ICapabilityProcessor;)V

    return-void
.end method


# virtual methods
.method public onCapabilityProcessor(ILcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
    .locals 1

    .line 71
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->onResponseCapabilityProcessor(ILcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onResponseCapabilityProcessor(ILcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
    .locals 1

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/mmi/NativeCapability;->mCapability:Lcom/alibaba/ailabs/agui/modal/ICapability;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/agui/modal/ICapability;->onResponseCapabilityProcessor(ILcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setCapabilityProcessor(ILcom/alibaba/ailabs/agui/modal/ICapabilityProcessor;)V
    .locals 1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/mmi/NativeCapability;->mCapability:Lcom/alibaba/ailabs/agui/modal/ICapability;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/agui/modal/ICapability;->setCapabilityProcessor(ILcom/alibaba/ailabs/agui/modal/ICapabilityProcessor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public start(I)V
    .locals 1

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/mmi/NativeCapability;->mCapability:Lcom/alibaba/ailabs/agui/modal/ICapability;

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/agui/modal/ICapability;->start(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public stop(I)V
    .locals 1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/mmi/NativeCapability;->mCapability:Lcom/alibaba/ailabs/agui/modal/ICapability;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/agui/modal/ICapability;->stop(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
