.class public interface abstract Lcom/alibaba/mbg/unet/UnetManager;
.super Ljava/lang/Object;
.source "UnetManager.java"


# annotations
.annotation build Lcom/alibaba/mbg/unet/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mbg/unet/UnetManager$GetHostCacheCallback;,
        Lcom/alibaba/mbg/unet/UnetManager$Builder;
    }
.end annotation


# virtual methods
.method public abstract addPreResolveDns(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract addPreconnection(Ljava/lang/String;I)V
.end method

.method public abstract callAfterInitialized(Ljava/lang/Runnable;)V
.end method

.method public abstract createRequest(Ljava/lang/String;)Lcom/alibaba/mbg/unet/Request;
.end method

.method public abstract getCookieList(Ljava/lang/String;Lcom/alibaba/mbg/unet/internal/GetCookieCallback;)V
.end method

.method public abstract getHostCacheFromHttpDns(Ljava/lang/String;Lcom/alibaba/mbg/unet/UnetManager$GetHostCacheCallback;)V
.end method

.method public abstract getNativePointer()J
.end method

.method public abstract getProxyDelegate()Lcom/alibaba/mbg/unet/IProxyDelegate;
.end method

.method public abstract isFeaturesSupported(J)Z
.end method

.method public abstract notifyActivityPauseOrDestroy()V
.end method

.method public abstract notifyForegoundChange()V
.end method

.method public abstract setIntValueSetting(Ljava/lang/String;I)V
.end method

.method public abstract setListControlValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setProxyInfoDelegate(Lcom/alibaba/mbg/unet/IProxyDelegate;)V
.end method

.method public abstract setStringValueSetting(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setUserAgent(Ljava/lang/String;)V
.end method
