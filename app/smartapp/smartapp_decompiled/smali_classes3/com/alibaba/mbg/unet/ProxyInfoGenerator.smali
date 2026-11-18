.class public interface abstract Lcom/alibaba/mbg/unet/ProxyInfoGenerator;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/alibaba/mbg/unet/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mbg/unet/ProxyInfoGenerator$ProxyInfo;
    }
.end annotation


# virtual methods
.method public abstract generateProxyInfo(Ljava/lang/String;)Lcom/alibaba/mbg/unet/ProxyInfoGenerator$ProxyInfo;
.end method
