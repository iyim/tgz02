.class public Lcom/alipay/security/mobile/module/http/UploadFactory;
.super Ljava/lang/Object;
.source "UploadFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/IUpload;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/RPCUploadImpl;

    move-result-object p0

    return-object p0
.end method

.method public static createV2(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/v2/IUploadV2;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/v2/IUploadV2;

    move-result-object p0

    return-object p0
.end method

.method public static getZhiZhiGateway()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
