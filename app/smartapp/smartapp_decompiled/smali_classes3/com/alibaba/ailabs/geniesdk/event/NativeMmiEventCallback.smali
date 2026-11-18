.class public Lcom/alibaba/ailabs/geniesdk/event/NativeMmiEventCallback;
.super Ljava/lang/Object;
.source "NativeMmiEventCallback.java"

# interfaces
.implements Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;


# instance fields
.field private mOnMmiEventCallback:Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/event/NativeMmiEventCallback;->mOnMmiEventCallback:Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;

    return-void
.end method


# virtual methods
.method public onDispatchEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
    .locals 2

    const/4 v0, 0x0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/event/NativeMmiEventCallback;->mOnMmiEventCallback:Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;

    if-eqz v1, :cond_0

    .line 21
    invoke-interface {v1, p1}, Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;->onDispatchEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method
