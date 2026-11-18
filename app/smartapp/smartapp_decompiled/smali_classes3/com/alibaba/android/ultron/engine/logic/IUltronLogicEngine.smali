.class public interface abstract Lcom/alibaba/android/ultron/engine/logic/IUltronLogicEngine;
.super Ljava/lang/Object;
.source "IUltronLogicEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addLogicEventCallback(Ljava/lang/String;Lcom/alibaba/android/ultron/engine/logic/EventCallback;)V
.end method

.method public abstract callMethod(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ultron/engine/logic/LogicCallBack<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public abstract initLogicEngine(Ljava/lang/String;Ljava/lang/String;)V
.end method
