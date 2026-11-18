.class public interface abstract Lcom/uc/rmbsdk/export/IRmbInterface;
.super Ljava/lang/Object;
.source "IRmbInterface.java"


# virtual methods
.method public abstract getAppEnvironment()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDetectServer()Ljava/lang/String;
.end method

.method public abstract getPublicParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSyncServer()Ljava/lang/String;
.end method

.method public abstract onVidFetched(Ljava/lang/String;)V
.end method

.method public abstract receipt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract signature(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract stat(Ljava/lang/String;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
