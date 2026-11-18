.class public Lcom/alipay/mobile/verifyidentity/log/utils/EncryptFileUtils;
.super Ljava/lang/Object;
.source "EncryptFileUtils.java"


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

.method public static read(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 23
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 27
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/log/utils/EncryptUtil;->generateLocalStorageDesKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/alipay/mobile/verifyidentity/log/utils/TriDesCBC;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 14
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 17
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/log/utils/EncryptUtil;->generateLocalStorageDesKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alipay/mobile/verifyidentity/log/utils/TriDesCBC;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->write(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
