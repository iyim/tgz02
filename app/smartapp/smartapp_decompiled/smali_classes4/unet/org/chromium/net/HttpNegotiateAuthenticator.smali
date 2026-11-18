.class public Lunet/org/chromium/net/HttpNegotiateAuthenticator;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lunet/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;,
        Lunet/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;,
        Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;
    }
.end annotation

.annotation runtime Lunet/org/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Landroid/os/Bundle;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lunet/org/chromium/net/HttpNegotiateAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lunet/org/chromium/net/HttpNegotiateAuthenticator;->a:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    sget-boolean v0, Lunet/org/chromium/net/HttpNegotiateAuthenticator;->a:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 195
    :cond_1
    :goto_0
    iput-object p1, p0, Lunet/org/chromium/net/HttpNegotiateAuthenticator;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lunet/org/chromium/net/HttpNegotiateAuthenticator;Landroid/os/Bundle;Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;)V
    .locals 4

    const-string v0, "spnegoContext"

    .line 2251
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lunet/org/chromium/net/HttpNegotiateAuthenticator;->b:Landroid/os/Bundle;

    const-string v0, "spnegoResult"

    const/4 v1, 0x1

    .line 2253
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, -0x9

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, -0x149

    goto :goto_0

    :pswitch_1
    const/16 v1, -0x158

    goto :goto_0

    :pswitch_2
    const/16 v1, -0x155

    goto :goto_0

    :pswitch_3
    const/16 v1, -0x153

    goto :goto_0

    :pswitch_4
    const/16 v1, -0x152

    goto :goto_0

    :pswitch_5
    const/16 v1, -0x140

    goto :goto_0

    :pswitch_6
    const/16 v1, -0x156

    goto :goto_0

    :pswitch_7
    const/4 v1, -0x3

    goto :goto_0

    :pswitch_8
    const/4 v1, 0x0

    .line 2288
    :goto_0
    :pswitch_9
    iget-wide v2, p2, Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->a:J

    const-string p2, "authtoken"

    .line 2289
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2288
    invoke-virtual {p0, v2, v3, v1, p1}, Lunet/org/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .annotation build Lunet/org/chromium/base/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 367
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_0

    return v0

    .line 370
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static create(Ljava/lang/String;)Lunet/org/chromium/net/HttpNegotiateAuthenticator;
    .locals 1
    .annotation build Lunet/org/chromium/base/VisibleForTesting;
    .end annotation

    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 204
    new-instance v0, Lunet/org/chromium/net/HttpNegotiateAuthenticator;

    invoke-direct {v0, p0}, Lunet/org/chromium/net/HttpNegotiateAuthenticator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method getNextAuthToken(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 14
    .annotation build Lunet/org/chromium/base/VisibleForTesting;
    .end annotation

    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 218
    sget-boolean v3, Lunet/org/chromium/net/HttpNegotiateAuthenticator;->a:Z

    if-nez v3, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 220
    :cond_1
    :goto_0
    invoke-static {}, Lunet/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 221
    new-instance v4, Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    invoke-direct {v4}, Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;-><init>()V

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SPNEGO:HOSTBASED:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->d:Ljava/lang/String;

    .line 223
    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, v4, Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->b:Landroid/accounts/AccountManager;

    move-wide v5, p1

    .line 224
    iput-wide v5, v4, Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->a:J

    const-string v1, "SPNEGO"

    .line 225
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    .line 227
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v4, Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 229
    iget-object v1, v4, Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->c:Landroid/os/Bundle;

    const-string v5, "incomingAuthToken"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_2
    iget-object v1, v0, Lunet/org/chromium/net/HttpNegotiateAuthenticator;->b:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 233
    iget-object v1, v4, Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->c:Landroid/os/Bundle;

    iget-object v2, v0, Lunet/org/chromium/net/HttpNegotiateAuthenticator;->b:Landroid/os/Bundle;

    const-string v5, "spnegoContext"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 236
    :cond_3
    iget-object v1, v4, Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->c:Landroid/os/Bundle;

    const-string v2, "canDelegate"

    move/from16 v5, p5

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    invoke-static {}, Lunet/org/chromium/base/ApplicationStatus;->a()Landroid/app/Activity;

    move-result-object v9

    const/4 v1, 0x0

    const/16 v2, -0x157

    const-string v5, "net_auth"

    const-string v6, "android.permission.GET_ACCOUNTS"

    const/4 v7, 0x0

    const/4 v10, 0x1

    if-nez v9, :cond_5

    .line 1302
    invoke-static {v3, v6, v10}, Lunet/org/chromium/net/HttpNegotiateAuthenticator;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1310
    new-array v3, v7, [Ljava/lang/Object;

    const-string v6, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: GET_ACCOUNTS permission not granted. Aborting authentication."

    invoke-static {v5, v6, v3}, Lunet/org/chromium/base/Log;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1312
    iget-wide v3, v4, Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->a:J

    invoke-virtual {p0, v3, v4, v2, v1}, Lunet/org/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    return-void

    .line 1316
    :cond_4
    iget-object v1, v4, Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->b:Landroid/accounts/AccountManager;

    iget-object v2, v0, Lunet/org/chromium/net/HttpNegotiateAuthenticator;->c:Ljava/lang/String;

    new-instance v3, Lunet/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;

    invoke-direct {v3, p0, v4}, Lunet/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;-><init>(Lunet/org/chromium/net/HttpNegotiateAuthenticator;Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;)V

    new-instance v4, Landroid/os/Handler;

    .line 1317
    invoke-static {}, Lunet/org/chromium/base/ThreadUtils;->b()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1316
    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void

    .line 1336
    :cond_5
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-ge v11, v12, :cond_6

    const/4 v11, 0x1

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_7

    const-string v6, "android.permission.MANAGE_ACCOUNTS"

    .line 1348
    :cond_7
    invoke-static {v3, v6, v11}, Lunet/org/chromium/net/HttpNegotiateAuthenticator;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1349
    new-array v3, v10, [Ljava/lang/Object;

    aput-object v6, v3, v7

    const-string v6, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: %s permission not granted. Aborting authentication"

    invoke-static {v5, v6, v3}, Lunet/org/chromium/base/Log;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1351
    iget-wide v3, v4, Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->a:J

    invoke-virtual {p0, v3, v4, v2, v1}, Lunet/org/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    return-void

    .line 1356
    :cond_8
    iget-object v5, v4, Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->b:Landroid/accounts/AccountManager;

    iget-object v6, v0, Lunet/org/chromium/net/HttpNegotiateAuthenticator;->c:Ljava/lang/String;

    iget-object v7, v4, Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->d:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, v4, Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->c:Landroid/os/Bundle;

    new-instance v12, Lunet/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;

    invoke-direct {v12, p0, v4}, Lunet/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;-><init>(Lunet/org/chromium/net/HttpNegotiateAuthenticator;Lunet/org/chromium/net/HttpNegotiateAuthenticator$RequestData;)V

    new-instance v13, Landroid/os/Handler;

    .line 1358
    invoke-static {}, Lunet/org/chromium/base/ThreadUtils;->b()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1356
    invoke-virtual/range {v5 .. v13}, Landroid/accounts/AccountManager;->getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method native nativeSetResult(JILjava/lang/String;)V
    .annotation build Lunet/org/chromium/base/VisibleForTesting;
    .end annotation
.end method
