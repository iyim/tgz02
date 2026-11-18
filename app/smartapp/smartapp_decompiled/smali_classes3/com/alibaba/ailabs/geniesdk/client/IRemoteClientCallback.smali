.class public interface abstract Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;
.super Ljava/lang/Object;
.source "IRemoteClientCallback.java"


# virtual methods
.method public abstract asrToClient(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getAppContextData()Ljava/lang/String;
.end method

.method public abstract getBinder()Landroid/os/IBinder;
.end method

.method public abstract handleASRCommand(Landroid/os/Bundle;)Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;
.end method

.method public abstract onASRStatusUpdate(Landroid/os/Bundle;)V
.end method
