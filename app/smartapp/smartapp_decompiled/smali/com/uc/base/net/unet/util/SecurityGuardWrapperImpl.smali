.class public Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;
.super Ljava/lang/Object;
.source "SecurityGuardWrapperImpl.java"

# interfaces
.implements Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;


# static fields
.field private static PREFIX_BYTES_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SecurityGuardWrapper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEncryptComponent:Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

.field private mSignatureComponent:Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

.field private mWSGAppKey:Ljava/lang/String;

.field private mWSGAuthCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->mWSGAppKey:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->mWSGAuthCode:Ljava/lang/String;

    return-void
.end method

.method private static byteToHexString([B)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_3

    .line 161
    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    .line 166
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 167
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    const-string v2, "0"

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :cond_1
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-long v4, v2

    invoke-static {v4, v5, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private decryptBytesByKey(Ljava/lang/String;[B)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 121
    :try_start_0
    array-length v1, p2

    sget v2, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->PREFIX_BYTES_SIZE:I

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    array-length v1, p2

    sget v2, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->PREFIX_BYTES_SIZE:I

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 126
    sget v2, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->PREFIX_BYTES_SIZE:I

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {p2, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    invoke-direct {p0, p1, v1}, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->staticBinarySafeDecryptNoB64(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "SecurityGuardWrapper"

    const-string p2, "invalid data format, not include prefix bytes"

    .line 122
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private staticBinarySafeDecryptNoB64(Ljava/lang/String;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->mEncryptComponent:Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 140
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-object v1

    .line 148
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->mEncryptComponent:Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    return-object v1

    .line 150
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->mEncryptComponent:Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const/16 v1, 0x10

    .line 153
    iget-object v2, p0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->mWSGAuthCode:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecryptNoB64(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 99
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->mWSGAppKey:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->decryptBytesByKey(Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public signRequest(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->mSignatureComponent:Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 53
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->mSignatureComponent:Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    .line 60
    iput-object v1, p0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    return-object v1

    .line 66
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->mSignatureComponent:Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    if-nez v0, :cond_2

    return-object v1

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->mWSGAppKey:Ljava/lang/String;

    .line 71
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "INPUT"

    .line 72
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 74
    iput-object v0, v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 75
    iput-object v2, v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    .line 76
    iput p2, v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 79
    :try_start_1
    iget-object p2, p0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->mSignatureComponent:Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    iget-object v2, p0, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->mWSGAuthCode:Ljava/lang/String;

    invoke-interface {p2, v3, v2}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    .line 80
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/uc/base/net/unet/util/SecurityGuardWrapperImpl;->byteToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "signRequest,ori="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecurityGuardWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "signRequest,sign="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :catch_1
    move-exception p1

    .line 84
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    return-object v1
.end method
