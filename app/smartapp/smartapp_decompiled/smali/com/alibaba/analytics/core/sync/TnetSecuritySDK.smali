.class public Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;
.super Ljava/lang/Object;
.source "TnetSecuritySDK.java"


# static fields
.field private static volatile mTnetSecuritySDK:Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;


# instance fields
.field private authcode:Ljava/lang/String;

.field private getByteArrayMethod:Ljava/lang/reflect/Method;

.field private mDynamicDataStoreCompObj:Ljava/lang/Object;

.field private mInitSecurityCheck:Z

.field private mSecurityGuardManagerObj:Ljava/lang/Object;

.field private mStaticDataEncryptCompObj:Ljava/lang/Object;

.field private putByteArrayMethod:Ljava/lang/reflect/Method;

.field private staticBinarySafeDecryptNoB64Method:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mSecurityGuardManagerObj:Ljava/lang/Object;

    .line 22
    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mStaticDataEncryptCompObj:Ljava/lang/Object;

    .line 23
    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->staticBinarySafeDecryptNoB64Method:Ljava/lang/reflect/Method;

    .line 24
    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mDynamicDataStoreCompObj:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->putByteArrayMethod:Ljava/lang/reflect/Method;

    .line 26
    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->getByteArrayMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mInitSecurityCheck:Z

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->authcode:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;
    .locals 2

    .line 34
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mTnetSecuritySDK:Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mTnetSecuritySDK:Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;

    invoke-direct {v1}, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;-><init>()V

    sput-object v1, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mTnetSecuritySDK:Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;

    .line 38
    sget-object v1, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mTnetSecuritySDK:Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;

    invoke-direct {v1}, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->initSecurityCheck()V

    .line 40
    :cond_0
    sget-object v1, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mTnetSecuritySDK:Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    sget-object v0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mTnetSecuritySDK:Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;

    return-object v0
.end method

.method private declared-synchronized initSecurityCheck()V
    .locals 12

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 55
    :try_start_1
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/analytics/core/Variables;->getRequestAuthenticationInstance()Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    move-result-object v5

    .line 56
    instance-of v6, v5, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    if-eqz v6, :cond_0

    .line 58
    iput-boolean v4, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mInitSecurityCheck:Z

    :cond_0
    if-eqz v5, :cond_3

    const-string v6, "com.alibaba.wireless.security.open.SecurityGuardManager"

    .line 65
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "com.alibaba.wireless.security.open.staticdataencrypt.IStaticDataEncryptComponent"

    .line 66
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "com.alibaba.wireless.security.open.dynamicdatastore.IDynamicDataStoreComponent"

    .line 67
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 69
    instance-of v9, v5, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;

    if-eqz v9, :cond_1

    .line 71
    nop

    nop

    .line 72
    invoke-virtual {v5}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->getAuthcode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->authcode:Ljava/lang/String;

    :cond_1
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    const-string v5, "getInstance"

    .line 76
    new-array v9, v3, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v4

    invoke-virtual {v6, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 78
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    .line 79
    new-array v11, v3, [Ljava/lang/Object;

    aput-object v9, v11, v4

    invoke-virtual {v5, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mSecurityGuardManagerObj:Ljava/lang/Object;

    const-string v5, "getStaticDataEncryptComp"

    .line 81
    new-array v9, v4, [Ljava/lang/Class;

    invoke-virtual {v6, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 83
    iget-object v9, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mSecurityGuardManagerObj:Ljava/lang/Object;

    new-array v10, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mStaticDataEncryptCompObj:Ljava/lang/Object;

    const-string v5, "getDynamicDataStoreComp"

    .line 85
    new-array v9, v4, [Ljava/lang/Class;

    invoke-virtual {v6, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 86
    iget-object v6, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mSecurityGuardManagerObj:Ljava/lang/Object;

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mDynamicDataStoreCompObj:Ljava/lang/Object;

    const-string/jumbo v5, "staticBinarySafeDecryptNoB64"

    .line 89
    new-array v6, v1, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v4

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v3

    const-class v9, [B

    aput-object v9, v6, v2

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v0

    invoke-virtual {v7, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->staticBinarySafeDecryptNoB64Method:Ljava/lang/reflect/Method;

    const-string/jumbo v5, "putByteArray"

    .line 90
    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    const-class v7, [B

    aput-object v7, v6, v3

    invoke-virtual {v8, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->putByteArrayMethod:Ljava/lang/reflect/Method;

    const-string v5, "getByteArray"

    .line 91
    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-virtual {v8, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->getByteArrayMethod:Ljava/lang/reflect/Method;

    .line 92
    iput-boolean v3, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mInitSecurityCheck:Z

    goto :goto_0

    .line 94
    :cond_2
    iput-boolean v4, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mInitSecurityCheck:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 98
    :try_start_2
    iput-boolean v4, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mInitSecurityCheck:Z

    const-string v6, "initSecurityCheck"

    .line 99
    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, "e.getCode"

    aput-object v7, v1, v4

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v6, v1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getByteArray(Ljava/lang/String;)[B
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->getByteArrayMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mDynamicDataStoreCompObj:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 147
    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 151
    :cond_1
    check-cast p1, [B

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 153
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getInitSecurityCheck()Z
    .locals 3

    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "mInitSecurityCheck"

    aput-object v2, v0, v1

    iget-boolean v1, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mInitSecurityCheck:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mInitSecurityCheck:Z

    return v0
.end method

.method public putByteArray(Ljava/lang/String;[B)I
    .locals 5

    .line 123
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->putByteArrayMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mDynamicDataStoreCompObj:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 128
    :try_start_0
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const/4 p1, 0x1

    aput-object p2, v4, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    return v1

    .line 132
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, ""

    .line 133
    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "ret"

    aput-object v3, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-static {v0, v2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 136
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p1, -0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public staticBinarySafeDecryptNoB64(ILjava/lang/String;[B)[B
    .locals 10

    .line 104
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->staticBinarySafeDecryptNoB64Method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mStaticDataEncryptCompObj:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 109
    :try_start_0
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v7, 0x2

    aput-object p3, v5, v7

    iget-object v8, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->authcode:Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v8, v5, v9

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, ""

    const/16 v5, 0xc

    .line 110
    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "mStaticDataEncryptCompObj"

    aput-object v8, v5, v4

    iget-object v8, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->mStaticDataEncryptCompObj:Ljava/lang/Object;

    aput-object v8, v5, v6

    const-string v6, "i"

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v9

    const-string/jumbo p1, "str"

    aput-object p1, v5, v3

    const/4 p1, 0x5

    aput-object p2, v5, p1

    const/4 p1, 0x6

    const-string p2, "bArr"

    aput-object p2, v5, p1

    const/4 p1, 0x7

    aput-object p3, v5, p1

    const/16 p1, 0x8

    const-string p2, "authcode"

    aput-object p2, v5, p1

    const/16 p1, 0x9

    iget-object p2, p0, Lcom/alibaba/analytics/core/sync/TnetSecuritySDK;->authcode:Ljava/lang/String;

    aput-object p2, v5, p1

    const/16 p1, 0xa

    const-string p2, "obj"

    aput-object p2, v5, p1

    const/16 p1, 0xb

    aput-object v0, v5, p1

    invoke-static {v2, v5}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_1

    return-object v1

    .line 115
    :cond_1
    check-cast v0, [B

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 117
    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v1
.end method
