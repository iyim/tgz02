.class public Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;
.super Lcom/alipay/mobile/verifyidentity/module/MicroModule;
.source "SmsModule.java"


# static fields
.field public static final DEFAULT_CODE_COUNT:I = 0x6

.field public static final KEY_CODE_COUNT:Ljava/lang/String; = "smsCodeCount"

.field public static final KEY_COUNT_DOWN:Ljava/lang/String; = "smsCountDown"

.field public static final KEY_HIGHLIGHT:Ljava/lang/String; = "smsHighlight"

.field public static final KEY_OTHERS:Ljava/lang/String; = "smsOthers"

.field public static final KEY_PHONE:Ljava/lang/String; = "smsPhone"

.field public static final KEY_SEND_SMS_RESPONSE:Ljava/lang/String; = "resendResponse"

.field public static final KEY_TIP:Ljava/lang/String; = "smsTip"

.field public static final KEY_VERIFY_ACTION:Ljava/lang/String; = "verifyAction"

.field private static final a:Ljava/lang/String; = "SmsModule"


# instance fields
.field private b:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;-><init>()V

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


# virtual methods
.method protected onCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 38
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "module data: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 41
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "module data can\'t be converted to jsonobject: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_0
    const-class p2, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;

    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;

    if-nez p2, :cond_1

    .line 46
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "json can\'t be converted to bean: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_1
    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    .line 50
    iget-object p4, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    if-nez p4, :cond_2

    .line 51
    sget-object p4, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->a:Ljava/lang/String;

    const-string v0, "empty bundle"

    invoke-static {p4, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    .line 54
    :cond_2
    iget-object p4, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    iget-object v0, p2, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;->mobile_no:Ljava/lang/String;

    const-string v1, "smsPhone"

    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p4, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    iget v0, p2, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;->codeCount:I

    const-string v1, "smsCodeCount"

    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    iget-object p4, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    iget v0, p2, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;->countDown:I

    const-string v1, "smsCountDown"

    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    iget-object p4, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result p1

    const-string v0, "smsOthers"

    invoke-virtual {p4, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    iget-object p4, p2, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;->keyHeadline:Ljava/lang/String;

    const-string v0, "smsTip"

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    iget-object p4, p2, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;->highlightTxt:[Ljava/lang/String;

    const-string v0, "smsHighlight"

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    iget-object p2, p2, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;->verifyAction:Ljava/lang/String;

    const-string p4, "verifyAction"

    invoke-virtual {p1, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    const-string p2, "resendResponse"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onStart()V
    .locals 6

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->a:Ljava/lang/String;

    const-string v1, "wrong input params"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->getMicroModuleContext()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string v5, "2002"

    invoke-direct {v4, v5}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void

    .line 71
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/SmsModule;->getMicroModuleContext()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->startActivity(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Landroid/content/Intent;)V

    return-void
.end method
