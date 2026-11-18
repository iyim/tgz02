.class public abstract Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;
.super Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;
.source "AbsPayPwdActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;
    }
.end annotation


# static fields
.field public static final SCENE_KEY:Ljava/lang/String; = "VI_PWD_SCENE"

.field public static final SCENE_VALUE_MYBANK:Ljava/lang/String; = "MYBANK"

.field private static final a:Ljava/lang/String; = "AbsPayPwdActivity"


# instance fields
.field private b:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/lang/Object;

.field protected isSimplePwd:Z

.field protected mIsLogicInterrupted:Z

.field protected mPubKey:Ljava/lang/String;

.field protected mTimestamp:Ljava/lang/String;

.field protected predata:Ljava/lang/String;

.field protected pwdTopTip:Ljava/lang/String;

.field protected sourceToPwd:Ljava/lang/String;

.field protected uriToGetBackPwd:Ljava/lang/String;

.field protected uriToGetBackPwdMybank:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;-><init>()V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mTimestamp:Ljava/lang/String;

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->isSimplePwd:Z

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->d:Ljava/lang/Object;

    .line 68
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mIsLogicInterrupted:Z

    const-string v0, "alipays://platformapi/startapp?appId=20000013&preAuth=YES"

    .line 72
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->uriToGetBackPwd:Ljava/lang/String;

    const-string v0, "mybank://setting/pwdManage"

    .line 73
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->uriToGetBackPwdMybank:Ljava/lang/String;

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

.method private a(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->sourceToPwd:Ljava/lang/String;

    const-string v1, "PAYMENT_PASSWORD_PLUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->setLogicModuleName(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 325
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 326
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 327
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setExtParams(Landroid/os/Bundle;)V

    .line 329
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "proVerifyType"

    const-string v2, "pwd"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method private a(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 211
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$5;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Exception;Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;)V
    .locals 1

    .line 202
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 203
    invoke-direct {p0, p2, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "UC-MobileIC-161201-1"

    .line 353
    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->writeBehavorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->b:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    return-object p0
.end method

.method static synthetic access$602(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->b:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    return-object p1
.end method

.method static synthetic access$700(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$800(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;Ljava/lang/Exception;Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a(Ljava/lang/Exception;Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$900(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public doNextStep()V
    .locals 2

    .line 220
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a:Ljava/lang/String;

    const-string v1, "next step"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->b:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;-><init>()V

    .line 224
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->b:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->setMICRpcResponse(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    goto :goto_0

    .line 226
    :cond_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string v1, "1001"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    .line 228
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void
.end method

.method protected final generatePubKey(Ljava/lang/String;)V
    .locals 1

    .line 133
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->getPubKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mPubKey:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mPubKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 139
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->notifyError()V

    :goto_0
    return-void
.end method

.method protected getLogicModuleName()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->sourceToPwd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->sourceToPwd:Ljava/lang/String;

    return-object v0
.end method

.method protected goGetBackPPW()V
    .locals 3

    .line 301
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[uriToGetBackPwd]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->uriToGetBackPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->uriToGetBackPwd:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.antfortune.wealth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "afwealth://platformapi/startapp?appId=20000013&preAuth=YES"

    .line 308
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 311
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 312
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->pwd_install:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->toast(Ljava/lang/String;I)V

    :goto_0
    const-string v0, "103"

    .line 316
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->notifyCancel(Ljava/lang/String;)V

    return-void
.end method

.method public notifyCancel()V
    .locals 1

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->notifyCancel(Ljava/lang/String;)V

    return-void
.end method

.method public notifyCancel(Ljava/lang/String;)V
    .locals 3

    .line 278
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel [subcode]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string v1, "1003"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 281
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 282
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->setExtInfo(Ljava/util/HashMap;)V

    .line 284
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "subCode"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void
.end method

.method public notifyError()V
    .locals 2

    .line 262
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a:Ljava/lang/String;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string v1, "2002"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void
.end method

.method public notifyRPCError()V
    .locals 2

    .line 268
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a:Ljava/lang/String;

    const-string v1, "rpc error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string v1, "2003"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void
.end method

.method public notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V
    .locals 4

    .line 290
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;

    move-result-object p1

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 292
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 77
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 78
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "pwdTopTip"

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->pwdTopTip:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->pwdTopTip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->pwdTopTip:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->toast(Ljava/lang/String;I)V

    :cond_1
    const-string v0, "VI_PWD_SCENE"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MYBANK"

    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->uriToGetBackPwdMybank:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->uriToGetBackPwd:Ljava/lang/String;

    :cond_2
    const-string v0, "sourceToPwd"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->sourceToPwd:Ljava/lang/String;

    const-string v0, "havePpw"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mIsLogicInterrupted:Z

    const-string v0, "addPpwUrl"

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->no_pwd:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->verifyidentity_confirm:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$1;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 104
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v3, ""

    move-object v2, p0

    .line 100
    invoke-virtual/range {v2 .. v9}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->no_pwd:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->pwd_add_ppw:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$2;

    invoke-direct {v7, p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$2;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->pwd_find_later:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$3;

    invoke-direct {v9, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$3;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)V

    .line 118
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v4, ""

    move-object v3, p0

    .line 106
    invoke-virtual/range {v3 .. v10}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    :goto_0
    return-void

    :cond_4
    const-string v0, "timestamp"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mTimestamp:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mTimestamp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    .line 124
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mTimestamp:Ljava/lang/String;

    :cond_5
    const-string v0, "predata"

    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->predata:Ljava/lang/String;

    const-string v0, "pubKey"

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->generatePubKey(Ljava/lang/String;)V

    return-void

    .line 79
    :cond_6
    :goto_1
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a:Ljava/lang/String;

    const-string v0, "null intent params"

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->notifyError()V

    return-void
.end method

.method protected processError()V
    .locals 10

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->b:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iget-object v0, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    const-string v1, "PPW_LOCK_FIND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a:Ljava/lang/String;

    const-string v1, "lock findable"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->b:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iget-object v4, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->pwd_find_later:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$6;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$6;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)V

    .line 240
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->pwd_find_now:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$7;

    invoke-direct {v8, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$7;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)V

    const-string v3, ""

    move-object v2, p0

    .line 234
    invoke-virtual/range {v2 .. v9}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->b:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iget-object v0, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    const-string v2, "PPW_LOCK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a:Ljava/lang/String;

    const-string v1, "lock notify"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->b:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iget-object v4, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->i_know:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$8;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$8;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, ""

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 255
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unhandled error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->b:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iget-object v3, v3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->b:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iget-object v0, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->verifyidentity_wrong_data:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->b:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iget-object v0, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->toast(Ljava/lang/String;I)V

    .line 257
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->doNextStep()V

    :goto_1
    return-void
.end method

.method public verify(Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a:Ljava/lang/String;

    const-string p2, "Duplicate rpc request! Give up this one!"

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    monitor-exit v0

    return-void

    .line 150
    :cond_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a:Ljava/lang/String;

    const-string v2, "set mIsVerifying true"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 152
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;)V

    const-string p1, "RPC"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->a:Ljava/lang/String;

    const-string p2, "set mIsVerifying false"

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 152
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected writeBehavorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 344
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 345
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->getLogicModuleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "module"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "code"

    .line 346
    invoke-interface {v7, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "binIndx"

    .line 347
    invoke-interface {v7, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 349
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v5

    const-string v2, "20000666"

    const-string v3, "hsbmts"

    const/4 v6, 0x0

    move-object v1, p1

    .line 348
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected writePWDErrorBehavorLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "UC-MobileIC-161201-2"

    .line 357
    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->writeBehavorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
