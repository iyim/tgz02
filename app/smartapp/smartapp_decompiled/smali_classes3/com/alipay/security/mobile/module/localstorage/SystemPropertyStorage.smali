.class public Lcom/alipay/security/mobile/module/localstorage/SystemPropertyStorage;
.super Ljava/lang/Object;
.source "SystemPropertyStorage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static readDataFromSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeDataToSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-static {p0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
