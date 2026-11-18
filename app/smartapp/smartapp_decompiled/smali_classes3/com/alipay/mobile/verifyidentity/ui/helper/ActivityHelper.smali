.class public Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;
.super Ljava/lang/Object;
.source "ActivityHelper.java"


# static fields
.field public static final TASK_MODULENAME:Ljava/lang/String; = "task_modulename"

.field public static final TASK_TOKEN:Ljava/lang/String; = "task_token"

.field public static final TASK_VERIFYID:Ljava/lang/String; = "task_verifyid"

.field private static final a:Ljava/lang/String; = "ActivityHelper"

.field private static d:[Ljava/lang/String;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

.field protected mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

.field protected mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "com.alipay.mobile.verifyidentity.ui.helper.DialogActivity"

    const-string v1, "com.alipay.mobile.verifyidentity.ui.helper.NoticeActivity"

    const-string v2, "com.alipay.mobile.security.faceauth.ui.bank.WebNavigationActivity"

    const-string v3, "com.alipay.mobile.security.faceauth.ui.uniform.FaceLoginActivity"

    const-string v4, "com.alipay.mobile.security.faceauth.ui.uniform.FaceSampleActivity"

    const-string v5, "com.alipay.mobile.verifyidentity.helper.ui.VerifyParamsActivity"

    const-string v6, "com.alipay.mobile.verifyidentity.helper.ui.BuildVerifyActivity"

    const-string v7, "com.alipay.mobile.verifyidentity.helper.ui.RpcShowActivity"

    const-string v8, "com.alipay.mobile.verifyidentity.helper.ui.VerifyLogShowActivity"

    const-string v9, "com.alipay.mobile.verifyidentity.helper.zxing.activity.CaptureActivity"

    const-string v10, "com.alipay.mobile.verifyidentity.prod.manager.fingeropen.ui.FingerOpenActivity"

    const-string v11, "com.alipay.mobile.verifyidentity.prod.manager.fingeropen.ui.FromTaoActivity"

    const-string v12, "com.alipay.mobile.verifyidentity.prod.manager.fingeropen.ui.ProtoReadActivity"

    .line 275
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->d:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7

    const-string v0, ""

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->b:Landroid/app/Activity;

    .line 57
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;->getInstance()Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;->recordActivity(Landroid/app/Activity;)V

    .line 58
    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    .line 63
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "task_verifyid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 64
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "task_token"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    :try_start_2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "task_modulename"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v2, v0

    goto :goto_0

    :catch_2
    move-exception v3

    move-object v1, v0

    move-object v2, v1

    .line 67
    :goto_0
    sget-object v4, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->a:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v0

    .line 69
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    .line 70
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    invoke-virtual {v4, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->findModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 71
    sget-object v4, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " token: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " moduleName: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 73
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->setIsPrevent(Z)V

    .line 74
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->pushActivity(Landroid/app/Activity;)V

    goto :goto_2

    .line 76
    :cond_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityHelper mModule is null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {v1, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static isInWhiteList(Ljava/lang/String;)Z
    .locals 5

    .line 237
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->d:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 238
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 239
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The mModule of a [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ] can be null... "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mModule of [ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ] is null!!! "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Bundle;)V

    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Bundle;)V
    .locals 8

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Bundle;)V

    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 10

    move-object v0, p0

    .line 136
    iget-object v1, v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Landroid/os/Bundle;)V

    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->dismissProgressDialog()V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->removeActivity(Landroid/app/Activity;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->dismissProgressDialog()V

    return-void
.end method

.method public getDialogHelper()Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    return-object v0
.end method

.method public getMicroModuleContext()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    return-object v0
.end method

.method public getModule()Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->setIsPrevent(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResume()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->isNeedReportVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->writeLogFirstModuleVisible()V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->setNeedReportVisible(Z)V

    :cond_0
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method public toast(Ljava/lang/String;II)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->c:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->toast(Ljava/lang/String;II)V

    return-void
.end method

.method public whenModuleIsNull()Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .line 252
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object v0
.end method

.method protected writeLogFirstModuleVisible()V
    .locals 11

    .line 300
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672c\u6b21task\u7684\u7b2c\u4e00\u4e2aModule\u7684\u7b2c\u4e00\u4e2a\u754c\u9762\u53ef\u89c1\uff0c\u505a\u57cb\u70b9\uff08Activity\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->b:Landroid/app/Activity;

    .line 301
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    :goto_0
    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 304
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 305
    iget-object v1, v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->sceneId:Ljava/lang/String;

    const-string v2, "sceneId"

    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v1, v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->bizId:Ljava/lang/String;

    const-string v2, "bizId"

    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "module"

    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getCompatibleVerifyType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verifyType"

    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 310
    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getTaskCreateTime()J

    move-result-wide v9

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v2, "UC-MobileIC-160816-1"

    const-string v3, "20000666"

    const-string v4, "dygjmkj"

    .line 309
    invoke-static/range {v1 .. v8}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavorRightAway(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 311
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getTaskCreateTime()J

    move-result-wide v2

    const-string v0, "\u9996\u4e2a\u9875\u9762\u5524\u8d77\u603b\u8017\u65f6\uff1a"

    invoke-static {v1, v0, v2, v3}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method
