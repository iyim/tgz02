.class public Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;
.super Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;
.source "PasswordInputUnifiedPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/alipay/android/app/template/FBFocusable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$DecorViewInfo;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PasswordInputUnifiedPlugin"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/android/app/template/FBPluginCtx;

.field private d:I

.field private e:Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;

.field private f:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

.field private g:Z

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field protected isShowGetBackPwd:Z

.field protected isSimplePwd:Z

.field private j:Landroid/widget/EditText;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field protected mPubKey:Ljava/lang/String;

.field protected mPwdInputLayout:Landroid/widget/LinearLayout;

.field protected mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

.field protected mTimestamp:Ljava/lang/String;

.field pageChangeBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/template/FBPluginCtx;I)V
    .locals 3

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;-><init>(Landroid/content/Context;Lcom/alipay/android/app/template/FBPluginCtx;)V

    const-string v0, ""

    .line 65
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mTimestamp:Ljava/lang/String;

    const/4 v1, 0x0

    .line 67
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->isShowGetBackPwd:Z

    const/4 v2, 0x1

    .line 71
    iput-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->isSimplePwd:Z

    .line 76
    iput-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->g:Z

    const-string v2, "payspwd"

    .line 105
    iput-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->k:Ljava/lang/String;

    .line 106
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->l:Z

    .line 107
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->m:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    .line 86
    iput p3, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->d:I

    .line 87
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 3

    if-nez p1, :cond_1

    .line 464
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->g:Z

    if-eqz p1, :cond_0

    .line 465
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->keyboard_layout:I

    goto :goto_0

    .line 467
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b:Landroid/content/Context;

    const-string v0, "flybird_main_layout"

    const-string v1, "id"

    const-string v2, "com.alipay.android.app"

    invoke-static {p1, v0, v1, v2}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 469
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->setKeyboardParentView(Landroid/view/View;)V

    .line 470
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->getKeyboardParentView()Landroid/view/View;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->e:Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->pwdTopTip:Ljava/lang/String;

    const-string v1, "pwdInputTip"

    .line 552
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->getActConf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 556
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 2

    if-nez p1, :cond_0

    .line 209
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a:Ljava/lang/String;

    const-string v0, "input pwd null result"

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->onNetError()V

    return-void

    .line 213
    :cond_0
    iget-boolean v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifySuccess:Z

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->f:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->doNextStep(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    goto :goto_0

    :cond_1
    const-string v0, "awaitUser"

    .line 216
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->updateVerifyStatus(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->clearInputContent()V

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->updateLocalPubKey(Landroid/content/Context;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b(Ljava/lang/String;)V

    .line 221
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    const-string v1, "RETRY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a:Ljava/lang/String;

    const-string v1, "input pwd retry"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->onPwdError(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    goto :goto_0

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->f:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->processError(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 172
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$5;-><init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;Ljava/lang/String;)V

    const-string p1, "RPC"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 309
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 312
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPwdBNAction] key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", data: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "payspwd"

    const/4 v2, 0x1

    if-nez p1, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "paypwd"

    .line 318
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->isSimplePwd:Z

    .line 320
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->k:Ljava/lang/String;

    .line 321
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->initPwdInput()V

    return v2

    :cond_2
    const/4 p1, 0x0

    .line 326
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 328
    sget-object v3, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "json fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p1, :cond_3

    const-string p2, "pubKey"

    .line 331
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b(Ljava/lang/String;)V

    return v2

    :cond_3
    return v1

    .line 314
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->isSimplePwd:Z

    .line 315
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->k:Ljava/lang/String;

    .line 316
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->initPwdInput()V

    return v2

    :cond_5
    :goto_2
    return v1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c()V

    return-void
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->e:Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->f:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Landroid/widget/EditText;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Lcom/alipay/android/app/template/FBPluginCtx;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->g:Z

    return p0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->viNativeExecuteJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->viNativeExecuteJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method private b()Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$DecorViewInfo;
    .locals 3

    .line 573
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$DecorViewInfo;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$DecorViewInfo;-><init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)V

    .line 575
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v1}, Lcom/alipay/android/app/template/FBPluginCtx;->getShowingDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v1}, Lcom/alipay/android/app/template/FBPluginCtx;->getShowingDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 577
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 579
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v2}, Lcom/alipay/android/app/template/FBPluginCtx;->getShowingDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 581
    :goto_1
    iput-object v2, v0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$DecorViewInfo;->decorView:Landroid/view/View;

    .line 582
    iput-boolean v1, v0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$DecorViewInfo;->isDialog:Z

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 241
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePubKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a:Ljava/lang/String;

    const-string v0, "\u670d\u52a1\u7aef\u6ca1\u6709\u63d0\u4f9b\u65b0\u7684\u516c\u94a5\uff0c\u4e0d\u66f4\u65b0"

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->generatePubKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mPubKey:Ljava/lang/String;

    .line 247
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    if-eqz p1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mPubKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setRsaPublicKey(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private c()V
    .locals 2

    .line 660
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b()Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$DecorViewInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$DecorViewInfo;->decorView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->hiddenKeyboardService(Landroid/view/View;Z)Z

    return-void
.end method

.method private d()V
    .locals 4

    .line 705
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$12;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$12;-><init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->pageChangeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 712
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->pageChangeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.alipay.phonecashier.framechange"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private e()V
    .locals 7

    .line 728
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->verifyidentity_wrong_data:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->verifyidentity_confirm:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$13;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$13;-><init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)V

    const-string v1, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static setSafeKeyboardSoftInput(Landroid/widget/EditText;)V
    .locals 6

    .line 339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 341
    :try_start_0
    const-class v2, Landroid/widget/EditText;

    const-string v3, "setShowSoftInputOnFocus"

    .line 342
    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 344
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 345
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 347
    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    .line 351
    :goto_0
    :try_start_1
    const-class v2, Landroid/widget/EditText;

    const-string v3, "setSoftInputShownOnFocus"

    .line 352
    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 354
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 355
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 357
    :catch_1
    sget-object p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a:Ljava/lang/String;

    const-string v0, "failed to invode setSoftInputShownOnFocus"

    invoke-static {p0, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public addPlugin(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    .line 485
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->g:Z

    if-nez p4, :cond_0

    .line 487
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const/4 v0, 0x1

    const-string v1, "needFindExist"

    .line 489
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 490
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->addPlugin(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;Landroid/os/Bundle;)V

    return-void
.end method

.method public bindModule(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Ljava/lang/String;)V
    .locals 3

    .line 495
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 496
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->moduleData:Ljava/lang/String;

    .line 498
    :try_start_0
    const-class p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;

    invoke-static {p2, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->e:Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 500
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 502
    :goto_0
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->e:Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;

    if-nez p1, :cond_0

    .line 503
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "module data can\'t be converted to jsonobject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->e()V

    return-void

    .line 507
    :cond_0
    iget-boolean p1, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->isSimplePPW:Z

    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->isSimplePwd:Z

    .line 508
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->e:Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;

    iget-object p2, p2, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->pubKey:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->generatePubKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mPubKey:Ljava/lang/String;

    .line 509
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->e:Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;

    iget-object p1, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->timestamp:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mTimestamp:Ljava/lang/String;

    .line 510
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mTimestamp:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    .line 511
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mTimestamp:Ljava/lang/String;

    .line 513
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->e:Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;

    iget-boolean p1, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->isFindPPW:Z

    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->isShowGetBackPwd:Z

    .line 514
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initSixPwd: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->isSimplePwd:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->isSimplePwd:Z

    if-eqz p1, :cond_2

    const-string p1, "spwd"

    .line 516
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->viType:Ljava/lang/String;

    const-string p1, "payspwd"

    .line 517
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->k:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, "pwd"

    .line 519
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->viType:Ljava/lang/String;

    const-string p1, "paypwd"

    .line 520
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->k:Ljava/lang/String;

    .line 523
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->initPwdInput()V

    .line 525
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string p2, "status"

    const-string v0, "start"

    .line 526
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "tip"

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->updateVerifyStatus(Lcom/alibaba/fastjson/JSONObject;)V

    .line 530
    new-instance p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$10;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$10;-><init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)V

    invoke-direct {p1, p2, v0, p0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;-><init>(Landroid/content/Context;Lcom/alipay/mobile/verifyidentity/module/MicroModule;Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$NotifyResultHandler;)V

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->f:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

    .line 536
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->f:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->e:Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;

    iget-object p2, p2, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->sourceToPwd:Ljava/lang/String;

    iput-object p2, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->sourceToPwd:Ljava/lang/String;

    .line 537
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mView.getVisibility(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$11;

    invoke-direct {p2, p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$11;-><init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method protected clearInputContent()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->clearText()V

    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 91
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$layout;->bf_plugin_vi_password:I

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->h:Landroid/view/View;

    .line 93
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->initPwdInput()V

    .line 94
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->d()V

    .line 95
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->h:Landroid/view/View;

    return-object p1
.end method

.method getBodyViewOpacity()F
    .locals 5

    .line 596
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getBodyView()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 600
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    const-string v2, "getOpacity"

    const/4 v3, 0x0

    .line 602
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 603
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 605
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getBusinessId()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->d:I

    return v0
.end method

.method public getInnerView()Landroid/view/View;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->h:Landroid/view/View;

    return-object v0
.end method

.method public getKeyboardParentView()Landroid/view/View;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->i:Landroid/view/View;

    return-object v0
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .line 478
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hiddenKeyboardService(Landroid/view/View;Z)Z
    .locals 2

    .line 673
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->isDefaultKeyboard()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_3

    if-nez v0, :cond_2

    .line 677
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {p2}, Lcom/alipay/android/app/template/FBPluginCtx;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    const/4 v0, 0x1

    :cond_3
    :goto_2
    return v0
.end method

.method protected initPwdInput()V
    .locals 3

    .line 110
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initPwdInput] isSimplePwd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->isSimplePwd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->h:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->paypwd_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mPwdInputLayout:Landroid/widget/LinearLayout;

    .line 112
    new-instance v0, Lcom/alipay/android/app/safepaybase/SafeInputContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->isSimplePwd:Z

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/safepaybase/SafeInputContext;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setOnConfirmListener(Lcom/alipay/android/app/safepaybase/OnConfirmListener;)V

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$2;-><init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$3;-><init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mPubKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setRsaPublicKey(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mTimestamp:Ljava/lang/String;

    sget-object v2, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setEncryptRandomStringAndType(Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)V

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->setSafeKeyboardSoftInput(Landroid/widget/EditText;)V

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mPwdInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mPwdInputLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v1}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mPwdInputLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$4;-><init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v0, "pwdInputBtn"

    .line 161
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->getActConf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pwdPlaceHolder"

    .line 162
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->getActConf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mSafeInputContext:Lcom/alipay/android/app/safepaybase/SafeInputContext;

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/safepaybase/SafeInputContext;->setOkButtonText(Ljava/lang/String;)V

    .line 166
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method isDefaultKeyboard()Z
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    .line 390
    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v1}, Lcom/alipay/android/app/template/FBPluginCtx;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V
    .locals 4

    .line 698
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->f:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->addLogicModuleName(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;

    move-result-object p1

    .line 699
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->onVerifyFinished(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 700
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getMicroModuleContext()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void
.end method

.method protected onBNPageClose()V
    .locals 2

    .line 717
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->onBNPageClose()V

    .line 718
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->pageChangeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 720
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->pageChangeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 589
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->showKeyboard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 591
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .line 612
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 615
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->getBodyViewOpacity()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    return-void

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->isOnloadFinish()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_5

    .line 622
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 623
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->k:Ljava/lang/String;

    const-string v0, "payspwd"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 624
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 626
    :cond_3
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->m:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/birdnest/util/UiUtil;->isUseDefaultKeyboard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 627
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->isDefaultKeyboard()Z

    move-result p1

    if-nez p1, :cond_4

    .line 628
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {p1}, Lcom/alipay/android/app/template/FBPluginCtx;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object p1

    .line 629
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b()Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$DecorViewInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$DecorViewInfo;->decorView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    .line 631
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->showKeyboard()V

    :cond_5
    if-eqz p2, :cond_6

    .line 635
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->getNode()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/alipay/android/app/template/FBPluginCtx;->deliverOnFocus(J)Z

    goto :goto_0

    .line 637
    :cond_6
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->getNode()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/alipay/android/app/template/FBPluginCtx;->deliverOnBlur(J)Z

    :cond_7
    :goto_0
    return-void
.end method

.method public onLoadFinish()Z
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->setSafeKeyboardSoftInput(Landroid/widget/EditText;)V

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->l:Z

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0, p0}, Lcom/alipay/android/app/template/FBPluginCtx;->setAutoFocus(Lcom/alipay/android/app/template/FBFocusable;)V

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 375
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 376
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 380
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected onNetError()V
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->isSimplePwd:Z

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->clearInputContent()V

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->showKeyboard()V

    return-void
.end method

.method protected onPwdError(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 7

    .line 258
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->isShowGetBackPwd:Z

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b:Landroid/content/Context;

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->pwd_forget:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    :goto_0
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->isShowGetBackPwd:Z

    if-nez p1, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$6;

    invoke-direct {p1, p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$6;-><init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)V

    move-object v4, p1

    :goto_1
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b:Landroid/content/Context;

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->pwd_input_again:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$7;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$7;-><init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)V

    const/4 v1, 0x0

    .line 258
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public requestFocus()V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->h:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 688
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 690
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->showKeyboard()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 692
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setKeyboardParentView(Landroid/view/View;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->i:Landroid/view/View;

    return-void
.end method

.method showKeyboard()V
    .locals 9

    .line 394
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showKeyboard mView.getVisibility(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b()Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$DecorViewInfo;

    move-result-object v0

    .line 400
    iget-object v5, v0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$DecorViewInfo;->decorView:Landroid/view/View;

    .line 401
    iget-boolean v6, v0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$DecorViewInfo;->isDialog:Z

    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v6, :cond_2

    .line 407
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v2}, Lcom/alipay/android/app/template/FBPluginCtx;->isFullscreen()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 408
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v2}, Lcom/alipay/android/app/template/FBPluginCtx;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 409
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->getKeyboardParentView()Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_3
    const v2, 0x1020002

    .line 411
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :goto_2
    move-object v3, v2

    .line 415
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v2}, Lcom/alipay/android/app/template/FBPluginCtx;->isOnloadFinish()Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v0, 0x258

    .line 420
    iget-object v7, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    new-instance v8, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$8;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$8;-><init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;Landroid/view/View;ZLandroid/view/View;Z)V

    int-to-long v0, v0

    invoke-virtual {v7, v8, v0, v1}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    if-eqz v0, :cond_5

    const/16 v0, 0x1f4

    const/16 v7, 0x1f4

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    if-nez v4, :cond_6

    .line 441
    invoke-direct {p0, v3, v5}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object v0, v3

    .line 443
    :goto_4
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    if-nez v1, :cond_7

    return-void

    .line 446
    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v1}, Lcom/alipay/android/app/template/FBPluginCtx;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->k:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/birdnest/util/UiUtil;->getKeyboardType(Ljava/lang/String;)Lcom/alipay/android/app/template/KeyboardType;

    move-result-object v3

    move-object v4, v5

    move-object v5, v0

    invoke-interface/range {v1 .. v7}, Lcom/alipay/android/app/template/TemplateKeyboardService;->showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z

    .line 449
    invoke-static {}, Lcom/alipay/birdnest/util/UiUtil;->isGTP8600()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 450
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$9;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$9;-><init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_5
    return-void
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 287
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->updateAttr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 290
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 293
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->g:Z

    if-eqz v0, :cond_2

    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 294
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->clearInputContent()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public updateFunc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string p2, "focus"

    .line 643
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 644
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->l:Z

    .line 645
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {p1, p0}, Lcom/alipay/android/app/template/FBPluginCtx;->setAutoFocus(Lcom/alipay/android/app/template/FBFocusable;)V

    .line 646
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {p1}, Lcom/alipay/android/app/template/FBPluginCtx;->isOnloadFinish()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 647
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->j:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 648
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->showKeyboard()V

    :cond_0
    return v0

    :cond_1
    const-string p2, "blur"

    .line 651
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 652
    iput-boolean p2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->l:Z

    .line 653
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->b()Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$DecorViewInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$DecorViewInfo;->decorView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->hiddenKeyboardService(Landroid/view/View;Z)Z

    return v0

    :cond_2
    return p2
.end method
