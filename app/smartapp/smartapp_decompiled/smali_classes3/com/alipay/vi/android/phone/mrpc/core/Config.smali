.class public interface abstract Lcom/alipay/vi/android/phone/mrpc/core/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final sInjector:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    :goto_0
    sput-object v0, Lcom/alipay/vi/android/phone/mrpc/core/Config;->sInjector:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public abstract getAppKey()Ljava/lang/String;
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getRpcParams()Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;
.end method

.method public abstract getTransport()Lcom/alipay/vi/android/phone/mrpc/core/Transport;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract isGzip()Z
.end method

.method public abstract sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
