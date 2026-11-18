.class public interface abstract Lcom/alibaba/android/ultron/inter/UltronDebugInterface;
.super Ljava/lang/Object;
.source "UltronDebugInterface.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getBizName()Ljava/lang/String;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract onCreate()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract registerStatusCallback(Ljava/lang/String;Lcom/alibaba/android/ultron/inter/IStatusListener;)V
.end method

.method public abstract registerStatusListener(Lcom/alibaba/android/ultron/inter/IStatusListener;)V
.end method

.method public abstract sendStatusCallback(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendStatusEvent(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
