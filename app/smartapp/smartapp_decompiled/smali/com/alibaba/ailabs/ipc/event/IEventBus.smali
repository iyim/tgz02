.class public interface abstract Lcom/alibaba/ailabs/ipc/event/IEventBus;
.super Ljava/lang/Object;
.source "IEventBus.java"


# virtual methods
.method public abstract publish(Lcom/alibaba/ailabs/ipc/event/Event;)V
.end method

.method public abstract subscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V
.end method

.method public abstract unsubscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V
.end method
