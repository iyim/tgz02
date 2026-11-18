.class public Lcom/taobao/securityjni/UtilWX;
.super Ljava/lang/Object;
.source "UtilWX.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private context:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    return-void
.end method


# virtual methods
.method public DecryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    .line 170
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 173
    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v2, ""

    .line 177
    invoke-interface {v0, v1, p2, p1, v2}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public DecryptData([B[B)[B
    .locals 3

    if-eqz p1, :cond_0

    .line 216
    array-length v0, p1

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 220
    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    .line 223
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    const-string p2, ""

    .line 224
    invoke-interface {v0, v1, v2, p1, p2}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 230
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public EncryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 148
    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v2, ""

    .line 152
    invoke-interface {v0, v1, p2, p1, v2}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeEncrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 157
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 161
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public EncryptData([B[B)[B
    .locals 3

    if-eqz p1, :cond_0

    .line 194
    array-length v0, p1

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 198
    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    .line 201
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    const-string p2, ""

    .line 202
    invoke-interface {v0, v1, v2, p1, p2}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeEncrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 208
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public Get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 258
    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v0, p1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 264
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public Get(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 55
    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v1, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object p2, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_0
    iget v1, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v1, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget p2, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    .line 58
    :goto_0
    invoke-interface {v0, p2, v2}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 61
    iget-object p2, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 62
    invoke-static {p2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 v1, 0x10

    .line 65
    invoke-interface {p2, v1, v0, p1, v2}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeDecrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public Get([B)[B
    .locals 2

    if-eqz p1, :cond_0

    .line 295
    array-length v0, p1

    if-lez v0, :cond_0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 298
    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 308
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public Get([BLcom/taobao/securityjni/tools/DataContext;)[B
    .locals 3

    if-eqz p1, :cond_2

    .line 114
    array-length v0, p1

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 117
    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v1, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object p2, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_0
    iget v1, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v1, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget p2, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    .line 120
    :goto_0
    invoke-interface {v0, p2, v2}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 123
    iget-object p2, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 124
    invoke-static {p2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 v1, 0x10

    .line 127
    invoke-interface {p2, v1, v0, p1, v2}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public Put(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 241
    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0, p1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 247
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public Put(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 24
    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 26
    iget-object v1, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object p2, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_0
    iget v1, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v1, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget p2, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    .line 27
    :goto_0
    invoke-interface {v0, p2, v2}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 30
    iget-object p2, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 31
    invoke-static {p2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 v1, 0x10

    .line 34
    invoke-interface {p2, v1, v0, p1, v2}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public Put([B)[B
    .locals 2

    if-eqz p1, :cond_0

    .line 273
    array-length v0, p1

    if-lez v0, :cond_0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 276
    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 280
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public Put([BLcom/taobao/securityjni/tools/DataContext;)[B
    .locals 3

    if-eqz p1, :cond_2

    .line 83
    array-length v0, p1

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 86
    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v1, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object p2, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_0
    iget v1, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v1, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget p2, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    .line 89
    :goto_0
    invoke-interface {v0, p2, v2}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 92
    iget-object p2, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 93
    invoke-static {p2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 v1, 0x10

    .line 96
    invoke-interface {p2, v1, v0, p1, v2}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeEncrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
