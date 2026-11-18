.class public interface abstract Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;
.super Ljava/lang/Object;
.source "IMessageNetworkService.java"


# virtual methods
.method public abstract getCountUnread(Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
.end method

.method public abstract listAllMessages(IILcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/alibaba/ailabs/genie/message/network/IMessageCallback<",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listSubscribeInfos(Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/message/network/IMessageCallback<",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listUnreadMessages(IILcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
.end method

.method public abstract setReadAllMessage(Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
.end method

.method public abstract setReadMessages(Ljava/util/List;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract subscribe(JLcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
.end method

.method public abstract unSubscribe(JLcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
.end method

.method public abstract updateSwitch(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
.end method
