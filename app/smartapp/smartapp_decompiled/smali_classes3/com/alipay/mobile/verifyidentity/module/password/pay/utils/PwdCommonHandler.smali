.class public Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;
.super Ljava/lang/Object;
.source "PwdCommonHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$NotifyResultHandler;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PwdCommonHandler"


# instance fields
.field private b:Landroid/content/Context;

.field protected mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

.field mNotifyResultHandler:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$NotifyResultHandler;

.field public mPlugin:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

.field public sourceToPwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->b:Landroid/content/Context;

    .line 44
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/verifyidentity/module/MicroModule;Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$NotifyResultHandler;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->b:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 49
    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mPlugin:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

    .line 50
    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mNotifyResultHandler:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$NotifyResultHandler;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mPlugin:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->updateVerifyStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public addLogicModuleName(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->sourceToPwd:Ljava/lang/String;

    const-string v1, "PAYMENT_PASSWORD_PLUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->setLogicModuleName(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 162
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 163
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setExtParams(Landroid/os/Bundle;)V

    .line 165
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

.method public doNextStep(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 2

    .line 110
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a:Ljava/lang/String;

    const-string v1, "next step"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 113
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;-><init>()V

    .line 114
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->setMICRpcResponse(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string p1, "1001"

    invoke-direct {v0, p1}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    .line 118
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void
.end method

.method protected getLogicModuleName()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->sourceToPwd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->sourceToPwd:Ljava/lang/String;

    return-object v0
.end method

.method public goGetBackPPW()V
    .locals 3

    :try_start_0
    const-string v0, "alipays://platformapi/startapp?appId=20000013&preAuth=YES"

    .line 56
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->pwd_install:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->toast(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public notifyCancel()V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->notifyCancel(Ljava/lang/String;)V

    return-void
.end method

.method public notifyCancel(Ljava/lang/String;)V
    .locals 3

    .line 138
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel [subcode]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string v1, "1003"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->setExtInfo(Ljava/util/HashMap;)V

    .line 144
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "subCode"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void
.end method

.method public notifyError()V
    .locals 2

    .line 122
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a:Ljava/lang/String;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string v1, "2002"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void
.end method

.method public notifyRPCError()V
    .locals 2

    .line 128
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a:Ljava/lang/String;

    const-string v1, "rpc error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string v1, "2003"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void
.end method

.method public notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mNotifyResultHandler:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$NotifyResultHandler;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$NotifyResultHandler;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    :cond_0
    return-void
.end method

.method public processError(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 9

    .line 65
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    const-string v1, "PPW_LOCK_FIND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a:Ljava/lang/String;

    const-string v1, "lock findable"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    iget-object v4, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->pwd_find_later:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$1;

    invoke-direct {v6, p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->b:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->pwd_find_now:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$2;

    invoke-direct {v8, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$2;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;)V

    const-string v3, ""

    .line 67
    invoke-virtual/range {v2 .. v8}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 81
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    const-string v1, "PPW_LOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a:Ljava/lang/String;

    const-string v1, "lock notify"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    iget-object v4, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->i_know:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$3;

    invoke-direct {v6, p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$3;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, ""

    invoke-virtual/range {v2 .. v8}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 91
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unhandled error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->verifyidentity_wrong_data:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->toast(Ljava/lang/String;I)V

    const-string v0, "abort"

    .line 93
    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->a(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->doNextStep(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    :goto_1
    return-void
.end method

.method public writeAddPWDBehavorLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "UC-MobileIC-161201-1"

    .line 193
    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->writeBehavorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected writeBehavorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 184
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 185
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->getLogicModuleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "module"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "code"

    .line 186
    invoke-interface {v7, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "binIndx"

    .line 187
    invoke-interface {v7, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 189
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v5

    const-string v2, "20000666"

    const-string v3, "hsbmts"

    const/4 v6, 0x0

    move-object v1, p1

    .line 188
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public writePWDErrorBehavorLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "UC-MobileIC-161201-2"

    .line 197
    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->writeBehavorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
