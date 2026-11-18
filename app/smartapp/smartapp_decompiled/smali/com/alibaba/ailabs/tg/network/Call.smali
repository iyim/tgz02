.class public interface abstract Lcom/alibaba/ailabs/tg/network/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# virtual methods
.method public abstract enqueue(Lcom/alibaba/ailabs/tg/network/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/tg/network/Callback<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract enqueue(Lcom/alibaba/ailabs/tg/network/Callback;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/tg/network/Callback<",
            "TT;>;I)V"
        }
    .end annotation
.end method
