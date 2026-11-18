.class public final Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;
.super Ljava/lang/Object;
.source "WearableAuthenticator.java"


# static fields
.field private static final HARDWAREPAY_PROTOCOL_VERSION:I = 0x2

.field public static final HARDWAREPAY_TYPE_WEARABLE:I = 0x2

.field private static final INTERNAL_ERROR_NO_MAC:I = 0x7d


# instance fields
.field private final lock:Ljava/lang/Object;

.field private mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

.field private mWearableResult:Lcom/alipay/android/app/smartpays/api/model/WearableResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->lock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;)Lcom/alipay/android/app/smartpays/api/model/WearableResult;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mWearableResult:Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    return-object p0
.end method

.method static synthetic access$002(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;Lcom/alipay/android/app/smartpays/api/model/WearableResult;)Lcom/alipay/android/app/smartpays/api/model/WearableResult;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mWearableResult:Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->notifyAuthFinished()V

    return-void
.end method

.method private countLog(I)V
    .locals 3

    const/16 v0, 0x64

    if-eq p1, v0, :cond_4

    const/16 v0, 0x67

    const-string v1, "WearPayV1VerifyBtOff"

    const-string v2, "wearV1"

    if-eq p1, v0, :cond_3

    const/16 v0, 0x71

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p1

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearPayV1VerifyNoMac"

    invoke-virtual {p1, v2, v1, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p1

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v1, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p1

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearPayV1VerifyTimeOut"

    invoke-virtual {p1, v2, v1, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_3
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p1

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v1, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private getAuthenticatorCallback()Lcom/alipay/security/mobile/auth/AuthenticatorCallback;
    .locals 1

    .line 55
    new-instance v0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$2;-><init>(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;)V

    return-object v0
.end method

.method private notifyAuthFinished()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 33
    :try_start_1
    invoke-static {v1}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 35
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public initHardwearpay(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 40
    invoke-static {p1, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    .line 43
    :cond_0
    new-instance v0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$1;-><init>(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;)V

    .line 51
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-interface {v1, p1, v0, p2}, Lcom/alipay/security/mobile/auth/IAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public verifyNoPassword(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/model/WearableRequest;)Lcom/alipay/android/app/smartpays/api/model/WearableResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 76
    iget-object v0, p2, Lcom/alipay/android/app/smartpays/api/model/WearableRequest;->mUserId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->initHardwearpay(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 77
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    invoke-direct {v0}, Lcom/alipay/android/app/smartpays/api/model/WearableResult;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mWearableResult:Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mWearableResult:Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    iput p1, v0, Lcom/alipay/android/app/smartpays/api/model/WearableResult;->mResult:I

    .line 79
    iget p1, v0, Lcom/alipay/android/app/smartpays/api/model/WearableResult;->mResult:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 80
    new-instance p1, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    const/4 v0, 0x3

    const/4 v1, 0x2

    iget-object p2, p2, Lcom/alipay/android/app/smartpays/api/model/WearableRequest;->mData:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;-><init>(IILjava/lang/String;)V

    .line 82
    iget-object p2, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mAuthenticator:Lcom/alipay/security/mobile/auth/IAuthenticator;

    invoke-direct {p0}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->getAuthenticatorCallback()Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/alipay/security/mobile/auth/IAuthenticator;->process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    .line 83
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 85
    :try_start_0
    iget-object p2, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->lock:Ljava/lang/Object;

    const-wide/16 v0, 0x2ee0

    invoke-virtual {p2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 87
    :try_start_1
    invoke-static {p2}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 89
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 91
    :cond_0
    :goto_2
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mWearableResult:Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    iget p1, p1, Lcom/alipay/android/app/smartpays/api/model/WearableResult;->mResult:I

    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->countLog(I)V

    .line 92
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->mWearableResult:Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    return-object p1
.end method
