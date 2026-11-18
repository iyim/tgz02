.class public Lmtopsdk/security/InnerSignImpl;
.super Lmtopsdk/security/AbstractSignImpl;
.source "InnerSignImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.InnerSignImpl"


# instance fields
.field private volatile mAVMPInstance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

.field private sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lmtopsdk/security/AbstractSignImpl;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lmtopsdk/security/InnerSignImpl;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    return-void
.end method

.method private declared-synchronized avmpSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, ""

    const/4 v2, 0x4

    .line 299
    new-array v3, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :try_start_1
    const-string p1, ""

    const-string v5, "mtopsdk.InnerSignImpl"

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getInstanceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " [avmpSign] input is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_0
    iget-object v5, p0, Lmtopsdk/security/InnerSignImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lmtopsdk/security/InnerSignImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object v5, v5, Lmtopsdk/mtop/global/MtopConfig;->context:Landroid/content/Context;

    goto :goto_0

    :cond_1
    invoke-static {}, Lmtopsdk/common/util/MtopUtils;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 306
    :goto_0
    invoke-virtual {p0, v5}, Lmtopsdk/security/InnerSignImpl;->getAVMPInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    .line 308
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    const-string v6, "sign"

    .line 310
    new-array v7, v4, [B

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v9

    const/4 p1, 0x3

    aput-object v1, v8, p1

    aput-object v3, v8, v2

    const/4 p1, 0x5

    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getEnv()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, p1

    invoke-interface {v5, v6, v7, v8}, Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;->invokeAVMP(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    nop

    nop

    if-eqz p1, :cond_3

    .line 312
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 317
    :try_start_3
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    const-string v1, "InvokeAVMP"

    .line 318
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lmtopsdk/security/util/SignStatistics;->commitStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :try_start_4
    const-string v1, "mtopsdk.InnerSignImpl"

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [avmpSign] call avmpInstance.invokeAVMP error.errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 323
    :cond_3
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, ",appKeyIndex="

    const-string v1, ",authCode="

    const-string v2, "mtopsdk.InnerSignImpl"

    .line 363
    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 365
    :try_start_0
    iget-object v5, p0, Lmtopsdk/security/InnerSignImpl;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v5

    .line 366
    invoke-interface {v5, p1, p2}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 367
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " [getAppKeyByIndex]getAppKeyByIndex  appKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [getAppKeyByIndex]getAppKeyByIndex error.appKeyIndex="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v5

    .line 372
    invoke-virtual {v5}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v6

    .line 373
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "GetAppKey"

    const-string v9, ""

    invoke-static {v8, v7, v9}, Lmtopsdk/security/util/SignStatistics;->commitStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [getAppKeyByIndex]getAppKeyByIndex error.errorCode="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v5}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v4
.end method

.method private initUmidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "mtopsdk.InnerSignImpl"

    const-string v1, ""

    .line 95
    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    .line 97
    :try_start_0
    iget-object v3, p0, Lmtopsdk/security/InnerSignImpl;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getUMIDComp()Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 99
    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getEnv()I

    move-result v4

    if-nez p2, :cond_0

    move-object p2, v1

    :cond_0
    new-instance v5, Lmtopsdk/security/InnerSignImpl$2;

    invoke-direct {v5, p0, v2}, Lmtopsdk/security/InnerSignImpl$2;-><init>(Lmtopsdk/security/InnerSignImpl;Ljava/lang/String;)V

    invoke-interface {v3, p1, v4, p2, v5}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->initUMID(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/wireless/security/open/umid/IUMIDInitListenerEx;)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[initUmidToken]IUMIDComponent initUMID error."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 114
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result p2

    .line 115
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "InitUMID"

    invoke-static {v4, v3, v1}, Lmtopsdk/security/util/SignStatistics;->commitStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[initUmidToken]IUMIDComponent initUMID error,errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public convertInnerBaseStrMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    if-eqz v0, :cond_2

    .line 184
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "utdid"

    .line 191
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "uid"

    .line 192
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "reqbiz-ext"

    .line 193
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "data"

    .line 194
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "t"

    .line 195
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "api"

    .line 196
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "v"

    .line 197
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "sid"

    .line 198
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "ttid"

    .line 199
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "deviceId"

    .line 200
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "lat"

    .line 201
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "lng"

    .line 202
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "extdata"

    .line 203
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "x-features"

    .line 204
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v15, 0x40

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 208
    invoke-static {v1}, Lmtopsdk/security/util/SecurityUtils;->convertNull2Default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-static {v2}, Lmtopsdk/security/util/SecurityUtils;->convertNull2Default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-static {v3}, Lmtopsdk/security/util/SecurityUtils;->convertNull2Default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    .line 211
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {v4}, Lmtopsdk/security/util/SecurityUtils;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-static {v8}, Lmtopsdk/security/util/SecurityUtils;->convertNull2Default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {v9}, Lmtopsdk/security/util/SecurityUtils;->convertNull2Default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-static {v10}, Lmtopsdk/security/util/SecurityUtils;->convertNull2Default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-static {v11}, Lmtopsdk/security/util/SecurityUtils;->convertNull2Default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {v12}, Lmtopsdk/security/util/SecurityUtils;->convertNull2Default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-static {v13}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_1
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 227
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INPUT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getAVMPInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 332
    iget-object v0, p0, Lmtopsdk/security/InnerSignImpl;->mAVMPInstance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    if-nez v0, :cond_1

    .line 333
    const-class v0, Lmtopsdk/security/InnerSignImpl;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lmtopsdk/security/InnerSignImpl;->mAVMPInstance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 336
    :try_start_1
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object p1

    const-class v1, Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent;

    invoke-virtual {p1, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent;

    const-string v1, "mwua"

    const-string v2, "sgcipher"

    .line 337
    invoke-interface {p1, v1, v2}, Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent;->createAVMPInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    move-result-object p1

    iput-object p1, p0, Lmtopsdk/security/InnerSignImpl;->mAVMPInstance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    .line 338
    iget-object p1, p0, Lmtopsdk/security/InnerSignImpl;->mAVMPInstance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    if-nez p1, :cond_0

    const-string p1, "mtopsdk.InnerSignImpl"

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [getAVMPInstance] call createAVMPInstance return null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "mtopsdk.InnerSignImpl"

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [getAVMPInstance] call createAVMPInstance error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 342
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v1

    const-string v2, "AVMPInstance"

    .line 343
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lmtopsdk/security/util/SignStatistics;->commitStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mtopsdk.InnerSignImpl"

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " [getAVMPInstance] call createAVMPInstance error,errorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 352
    :cond_1
    :goto_1
    iget-object p1, p0, Lmtopsdk/security/InnerSignImpl;->mAVMPInstance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    return-object p1
.end method

.method public getAppKey(Lmtopsdk/security/ISign$SignCtx;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_0
    iget v0, p1, Lmtopsdk/security/ISign$SignCtx;->index:I

    iget-object p1, p1, Lmtopsdk/security/ISign$SignCtx;->authCode:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lmtopsdk/security/InnerSignImpl;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAvmpSign(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 283
    invoke-direct {p0, p1}, Lmtopsdk/security/InnerSignImpl;->avmpSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [getAvmpSign] call avmpSign return null.degrade call getSecBodyDataEx "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mtopsdk.InnerSignImpl"

    invoke-static {v0, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const-string v2, ""

    const-string v3, ""

    move-object v1, p0

    move-object v4, p2

    move v6, p3

    .line 286
    invoke-virtual/range {v1 .. v6}, Lmtopsdk/security/InnerSignImpl;->getSecBodyDataEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getCommonHmacSha1Sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 235
    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 239
    :cond_0
    iget-object v2, p0, Lmtopsdk/security/InnerSignImpl;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    const-string v3, "mtopsdk.InnerSignImpl"

    if-nez v2, :cond_1

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " [getCommonHmacSha1Sign]SecurityGuardManager is null,please call ISign init()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 246
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string v4, "INPUT"

    .line 247
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance p1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 249
    iput-object p2, p1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    const/4 p2, 0x3

    .line 250
    iput p2, p1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 251
    iput-object v2, p1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    .line 252
    iget-object p2, p0, Lmtopsdk/security/InnerSignImpl;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {p2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object p2

    .line 253
    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getAuthCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 259
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [getCommonHmacSha1Sign] ISecureSignatureComponent signRequest error"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 255
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result p2

    .line 256
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "SignHMACSHA1"

    const-string v5, ""

    invoke-static {v4, v2, v5}, Lmtopsdk/security/util/SignStatistics;->commitStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [getCommonHmacSha1Sign] ISecureSignatureComponent signRequest error,errorCode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getMtopApiSign(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "mtopsdk.InnerSignImpl"

    if-nez p1, :cond_0

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " [getMtopApiSign] params is null.appKey="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v3, "SG_ERROR_CODE"

    if-nez p2, :cond_1

    const-string p2, "AppKey is null"

    .line 142
    invoke-virtual {p1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " [getMtopApiSign] AppKey is null."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 147
    :cond_1
    iget-object v4, p0, Lmtopsdk/security/InnerSignImpl;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    if-nez v4, :cond_2

    const-string p2, "SGManager is null"

    .line 148
    invoke-virtual {p1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " [getMtopApiSign]SecurityGuardManager is null,please call ISign init()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 154
    :cond_2
    :try_start_0
    new-instance v4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v4}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 155
    iput-object p2, v4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    const/4 v5, 0x7

    .line 156
    iput v5, v4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 157
    invoke-virtual {p0, p1, p2}, Lmtopsdk/security/InnerSignImpl;->convertInnerBaseStrMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 v5, 0x2

    .line 159
    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getEnv()I

    move-result v6

    if-ne v5, v6, :cond_3

    const-string v5, "ATLAS"

    const-string v6, "daily"

    .line 160
    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_3
    iput-object p2, v4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    .line 163
    iget-object p2, p0, Lmtopsdk/security/InnerSignImpl;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {p2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object p2

    .line 164
    invoke-interface {p2, v4, p3}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " [getMtopApiSign] ISecureSignatureComponent signRequest error"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 166
    invoke-virtual {p2}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result p3

    .line 167
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SignMtopRequest"

    const-string v6, ""

    invoke-static {v5, v4, v6}, Lmtopsdk/security/util/SignStatistics;->commitStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [getMtopApiSign] ISecureSignatureComponent signRequest error,errorCode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method public getSecBodyDataEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;I)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "mtopsdk.InnerSignImpl"

    .line 269
    :try_start_0
    iget-object v1, p0, Lmtopsdk/security/InnerSignImpl;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    const-class v2, Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;

    invoke-virtual {v1, v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;

    .line 270
    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getEnv()I

    move-result v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;->getSecurityBodyDataEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 276
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getInstanceId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " [getSecBodyDataEx] ISecurityBodyComponent getSecurityBodyDataEx  error,flag="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 272
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result p2

    .line 273
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "GetSecBody"

    invoke-static {p4, p2, p3}, Lmtopsdk/security/util/SignStatistics;->commitStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getInstanceId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " [getSecBodyDataEx] ISecurityBodyComponent getSecurityBodyDataEx  error.errorCode="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", flag="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public init(Lmtopsdk/mtop/global/MtopConfig;)V
    .locals 6
    .param p1    # Lmtopsdk/mtop/global/MtopConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "mtopsdk.InnerSignImpl"

    .line 49
    invoke-super {p0, p1}, Lmtopsdk/security/AbstractSignImpl;->init(Lmtopsdk/mtop/global/MtopConfig;)V

    .line 50
    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    .line 52
    :try_start_0
    iget-object v2, p1, Lmtopsdk/mtop/global/MtopConfig;->uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    invoke-static {v2}, Lmtopsdk/security/util/SignStatistics;->setIUploadStats(Lmtopsdk/mtop/stat/IUploadStats;)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 55
    iget-object v4, p0, Lmtopsdk/security/InnerSignImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object v4, v4, Lmtopsdk/mtop/global/MtopConfig;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v4

    iput-object v4, p0, Lmtopsdk/security/InnerSignImpl;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    .line 58
    iget p1, p1, Lmtopsdk/mtop/global/MtopConfig;->appKeyIndex:I

    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getAuthCode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lmtopsdk/security/InnerSignImpl;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lmtopsdk/security/InnerSignImpl;->getAuthCode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lmtopsdk/security/InnerSignImpl;->initUmidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lmtopsdk/security/InnerSignImpl;->mtopConfig:Lmtopsdk/mtop/global/MtopConfig;

    iget-object p1, p1, Lmtopsdk/mtop/global/MtopConfig;->context:Landroid/content/Context;

    .line 65
    new-instance v4, Lmtopsdk/security/InnerSignImpl$1;

    invoke-direct {v4, p0, p1, v1}, Lmtopsdk/security/InnerSignImpl$1;-><init>(Lmtopsdk/security/InnerSignImpl;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v4}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 76
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " [init]ISign init SecurityGuard succeed.init time="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [init]ISign init SecurityGuard error."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 80
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v2

    .line 81
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SGManager"

    const-string v5, ""

    invoke-static {v4, v3, v5}, Lmtopsdk/security/util/SignStatistics;->commitStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [init]ISign init SecurityGuard error.errorCode="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
