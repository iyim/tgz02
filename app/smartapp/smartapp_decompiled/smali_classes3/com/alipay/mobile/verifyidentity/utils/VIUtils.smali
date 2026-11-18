.class public Lcom/alipay/mobile/verifyidentity/utils/VIUtils;
.super Ljava/lang/Object;
.source "VIUtils.java"


# static fields
.field private static final a:Ljava/lang/String; = "VIUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
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

.method public static a(I)Ljava/lang/String;
    .locals 2

    .line 187
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 189
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a:Ljava/lang/String;

    const-string v1, "getString \u51fa\u9519\uff01"

    invoke-static {v0, v1, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    .line 208
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string v2, "com.alipay.mobile.common.logging.api.LoggerFactory"

    const-string v3, "init"

    invoke-static {v2, v3, v1, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->getInstance()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v0

    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->isDebug(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->setDebug(Z)V

    return-void
.end method

.method public static a(Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;Landroid/app/Activity;Lcom/alipay/mobile/verifyidentity/module/MicroModule;)V
    .locals 3

    .line 102
    instance-of v0, p1, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;

    if-eqz v0, :cond_0

    .line 103
    move-object v0, p1

    nop

    nop

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->getDialogHelper()Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyFragmentActivity;

    if-eqz v0, :cond_1

    .line 105
    move-object v0, p1

    nop

    nop

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyFragmentActivity;->getDialogHelper()Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 107
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;-><init>(Landroid/app/Activity;)V

    .line 108
    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string v2, "1002"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    goto :goto_1

    :cond_3
    const-string v1, ""

    .line 111
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->showProgressDialog(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/verifyidentity/utils/b;

    invoke-direct {v2, p2, v0, p0, p1}, Lcom/alipay/mobile/verifyidentity/utils/b;-><init>(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;Landroid/app/Activity;)V

    const-string p0, "goOtherVerifyProduct"

    invoke-virtual {v1, v2, p0}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static a()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.alipay.mobile.verifyidentity.common.ExportBeacon"

    const-string v2, "gotThis"

    const/4 v3, 0x0

    .line 148
    invoke-static {v1, v2, v3, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 154
    :cond_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInExport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 156
    sget-object v2, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a:Ljava/lang/String;

    const-string v3, "isInExport \u5224\u65ad\u65f6\u5f02\u5e38"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method public static a(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 2

    const/4 v0, 0x0

    .line 89
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string v1, "HAS_OTHERS"

    .line 91
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 96
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 0

    .line 84
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 85
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result p0

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    const-string v0, "com.alipay.mobile.verifyidentity.alipay.util.UserInfoHelper"

    const-string v1, "getUserId"

    .line 198
    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "SIGN_LOGIN_FACE"

    .line 167
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LOGIN_FACE"

    .line 168
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ACCOUNT_CERT_FACE"

    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SYS_INPUT_CERT_FACE"

    .line 170
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "USER_INPUT_CERT_FACE"

    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "X_ACCOUNT_CERT_FACE"

    .line 172
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "X_CERT_FACE"

    .line 173
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FACEVERIFY"

    .line 174
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FACEVERIFY_INPUT"

    .line 175
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "IDFACE"

    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "IDPAPERS"

    .line 177
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HAND_WRITING"

    .line 178
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PAPERS"

    .line 179
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
