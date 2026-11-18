.class public interface abstract Lcom/uc/rmbsdk/export/IRmbManager;
.super Ljava/lang/Object;
.source "IRmbManager.java"


# virtual methods
.method public abstract online(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract online(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract registerChannel(Ljava/lang/String;Lcom/uc/rmbsdk/export/IRmbMessageListener;)V
.end method

.method public abstract registerUpaasStateListener(Lcom/uc/rmbsdk/export/IUPaasStateListener;)V
.end method

.method public abstract unregisterChannel(Ljava/lang/String;)V
.end method

.method public abstract unregisterUpaasStateListener(Lcom/uc/rmbsdk/export/IUPaasStateListener;)V
.end method
