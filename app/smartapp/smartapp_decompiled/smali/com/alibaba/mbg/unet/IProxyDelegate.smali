.class public interface abstract Lcom/alibaba/mbg/unet/IProxyDelegate;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/alibaba/mbg/unet/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mbg/unet/IProxyDelegate$ProxyInfo;
    }
.end annotation


# virtual methods
.method public abstract generateProxyInfo(Ljava/lang/String;)Lcom/alibaba/mbg/unet/IProxyDelegate$ProxyInfo;
.end method

.method public abstract onRequestComplete(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method
