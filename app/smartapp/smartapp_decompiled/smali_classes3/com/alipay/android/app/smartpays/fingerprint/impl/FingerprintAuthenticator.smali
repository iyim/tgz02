.class public Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;
.super Ljava/lang/Object;
.source "FingerprintAuthenticator.java"


# static fields
.field public static final HARDWAREPAY_TYPE_FP:I = 0x1


# instance fields
.field private mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;ILcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/security/mobile/auth/AuthenticatorCallback;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->getProcessAyncCallback(ILcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;)Lcom/alipay/security/mobile/auth/IAuthenticator;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;I)Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->adapterStatus(I)Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->processAsyncLog(II)V

    return-void
.end method

.method private adapterStatus(I)Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    .locals 1

    .line 163
    sget-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_SUCCESS:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    const/16 v0, 0x64

    if-eq p1, v0, :cond_4

    const/16 v0, 0x66

    if-eq p1, v0, :cond_3

    const/16 v0, 0x71

    if-eq p1, v0, :cond_2

    const/16 v0, 0x79

    if-eq p1, v0, :cond_1

    const/16 v0, 0x81

    if-eq p1, v0, :cond_0

    .line 181
    sget-object p1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_FAILED:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    goto :goto_0

    .line 172
    :cond_0
    sget-object p1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_BUSY:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    goto :goto_0

    .line 178
    :cond_1
    sget-object p1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_TO_PWD:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    goto :goto_0

    .line 175
    :cond_2
    sget-object p1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_TIMEOUT:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    goto :goto_0

    .line 169
    :cond_3
    sget-object p1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_CANCELED:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    goto :goto_0

    .line 166
    :cond_4
    sget-object p1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_SUCCESS:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    :goto_0
    return-object p1
.end method

.method private getProcessAyncCallback(ILcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/security/mobile/auth/AuthenticatorCallback;
    .locals 1

    .line 121
    new-instance v0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;-><init>(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;ILcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    return-object v0
.end method

.method private initAuthenticator(Landroid/content/Context;)V
    .locals 5

    const-string v0, "fpV1"

    .line 188
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string v2, "FingerprintAuthenticator::initAuthenticator"

    const-string v3, "start"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    if-nez v1, :cond_0

    .line 190
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string v3, "mAuthenticator is null"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 193
    :try_start_0
    invoke-static {p1, v3}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v3

    const-string v4, "FpCreateExV1"

    invoke-virtual {v3, v0, v4, p1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "FpCreateV1"

    invoke-virtual {p1, v0, v2, v1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method private processAsyncLog(II)V
    .locals 0

    .line 149
    sget p2, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_REGISTER:I

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    sget p2, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_UNREGISTER:I

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel(Landroid/content/Context;)V
    .locals 5

    const-string v0, "fpV1"

    .line 202
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initAuthenticator(Landroid/content/Context;)V

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 205
    :try_start_0
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {p1}, Lcom/alipay/security/mobile/auth/IAuthenticator;->cancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 207
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v3

    const-string v4, "FpCancelExV1"

    invoke-virtual {v3, v0, v4, p1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "FpCancelV1"

    invoke-virtual {p1, v0, v2, v1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public checkUserStatus(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintAuthenticator::checkUserStatus"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initAuthenticator(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 51
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {p1, p2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->checkUserStatus(Ljava/lang/String;)I

    move-result p1

    .line 52
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "fpV1"

    const-string v4, "FpCheckUserStatusV1"

    invoke-virtual {v0, v3, v4, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",result:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public getAuthInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "fpV1"

    .line 213
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string v2, "FingerprintAuthenticator::getAuthInfo"

    const-string v3, "start"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initAuthenticator(Landroid/content/Context;)V

    .line 215
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 218
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v3}, Lcom/alipay/security/mobile/auth/IAuthenticator;->getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "authInfoType"

    .line 220
    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/AuthInfo;->getType()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "vendor"

    .line 221
    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/AuthInfo;->getVendor()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "phoneModel"

    .line 222
    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/AuthInfo;->getPhoneModle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "protocolVersion"

    .line 223
    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/AuthInfo;->getProtocolVersion()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "protocolType"

    .line 224
    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/AuthInfo;->getProtocolType()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "mfacDownloadUrl"

    .line 225
    invoke-virtual {v3}, Lcom/alipay/security/mobile/auth/AuthInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 227
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v3

    const-string v4, "FpInitDeviceUnsupport"

    .line 228
    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-virtual {v3, v0, v4, v5}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 231
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v4

    const-string v5, "FpAuthInfoExV1"

    invoke-virtual {v4, v0, v5, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "FpAuthInfoV1"

    invoke-virtual {v3, v0, v2, v1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFpInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 107
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintAuthenticator::getFpInfo"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "{\"type\":-1}"

    .line 111
    :try_start_0
    invoke-static {p1}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getFingerprintExtInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 115
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public initHardwarePay(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintAuthenticator::initHardwarePay"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initAuthenticator(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$1;-><init>(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;)V

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 41
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v3, p1, v0, p2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I

    move-result p1

    .line 43
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "fpV1"

    const-string v2, "FpInitV1"

    invoke-virtual {p2, v1, v2, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return p1
.end method

.method public process(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "fpV1"

    .line 68
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string v2, "FingerprintAuthenticator::process"

    const-string v3, "start"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initAuthenticator(Landroid/content/Context;)V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 73
    :try_start_0
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    new-instance v1, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    invoke-direct {v1, p2, p3, p4}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/alipay/security/mobile/auth/IAuthenticator;->process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string v5, "FpProcessSyncExV1"

    invoke-virtual {v1, v0, v5, p1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, ""

    .line 77
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "FpProcessSyncV1"

    invoke-virtual {v1, v0, v4, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v3

    const/4 p3, 0x1

    aput-object p4, v1, p3

    const/4 p3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p3

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const-string p2, "version=%s,data=%s,type=%s,result=%s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public processAsync(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 10

    .line 88
    new-instance v0, Ljava/lang/Thread;

    new-instance v9, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;

    move-object v1, v9

    move-object v2, p0

    move v3, p3

    move-object/from16 v4, p6

    move-object v5, p1

    move-object v6, p2

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;-><init>(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;ILcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public registedFingerPrintNumber(Landroid/content/Context;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintAuthenticator::registedFingerPrintNumber"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initAuthenticator(Landroid/content/Context;)V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 61
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {p1}, Lcom/alipay/security/mobile/auth/IAuthenticator;->registedFingerPrintNumber()I

    move-result p1

    .line 62
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "fpV1"

    const-string v4, "FpRegNumberV1"

    invoke-virtual {v0, v3, v4, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method
