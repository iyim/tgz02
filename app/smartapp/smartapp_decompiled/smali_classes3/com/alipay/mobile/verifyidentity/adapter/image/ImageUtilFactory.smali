.class public Lcom/alipay/mobile/verifyidentity/adapter/image/ImageUtilFactory;
.super Ljava/lang/Object;
.source "ImageUtilFactory.java"


# static fields
.field private static volatile a:Lcom/alipay/mobile/verifyidentity/image/ImageUtilImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getImageUtil(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/image/ImageUtil;
    .locals 2

    .line 14
    sget-object v0, Lcom/alipay/mobile/verifyidentity/adapter/image/ImageUtilFactory;->a:Lcom/alipay/mobile/verifyidentity/image/ImageUtilImpl;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Lcom/alipay/mobile/verifyidentity/adapter/image/ImageUtilFactory;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/adapter/image/ImageUtilFactory;->a:Lcom/alipay/mobile/verifyidentity/image/ImageUtilImpl;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/alipay/mobile/verifyidentity/image/ImageUtilImpl;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/image/ImageUtilImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/verifyidentity/adapter/image/ImageUtilFactory;->a:Lcom/alipay/mobile/verifyidentity/image/ImageUtilImpl;

    .line 19
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 21
    :cond_1
    :goto_0
    sget-object p0, Lcom/alipay/mobile/verifyidentity/adapter/image/ImageUtilFactory;->a:Lcom/alipay/mobile/verifyidentity/image/ImageUtilImpl;

    return-object p0
.end method
