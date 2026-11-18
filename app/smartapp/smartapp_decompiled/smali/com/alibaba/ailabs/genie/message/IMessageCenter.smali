.class public interface abstract Lcom/alibaba/ailabs/genie/message/IMessageCenter;
.super Ljava/lang/Object;
.source "IMessageCenter.java"


# virtual methods
.method public abstract getCachedMessage()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;
.end method
