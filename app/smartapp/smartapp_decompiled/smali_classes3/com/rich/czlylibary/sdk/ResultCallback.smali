.class public interface abstract Lcom/rich/czlylibary/sdk/ResultCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/rich/czlylibary/bean/Result;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onSuccess(Lcom/rich/czlylibary/bean/Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
