.class public Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;
.super Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;
.source "SmsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SmsActivity"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:I

.field private k:I

.field private l:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

.field private m:I

.field private n:Landroid/graphics/Rect;

.field private o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;-><init>()V

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->m:I

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->n:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

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

.method private a()V
    .locals 2

    .line 116
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->wrapper:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->h:Landroid/view/View;

    .line 117
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->sms_scroll:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->i:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .line 156
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->sms_other:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->g:Landroid/widget/TextView;

    const/4 v0, 0x0

    const-string v1, "smsOthers"

    .line 158
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->g:Landroid/widget/TextView;

    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$3;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->g:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;)V
    .locals 9

    const/4 v0, 0x0

    .line 417
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;->code:Ljava/lang/String;

    const-string v2, "VALIDATECODE_SEND_TIMES_LIMIT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string v2, "resend times limit"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->enableResend()V

    .line 420
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setEnabled(Z)V

    .line 421
    iget-object v0, p1, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->verifyidentity_wrong_data:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;->message:Ljava/lang/String;

    :goto_0
    move-object v3, p1

    const/4 v2, 0x0

    .line 423
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->i_know:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$9;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$9;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    goto :goto_4

    .line 430
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resend wrong "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    const-string v2, "null"

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;->code:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 431
    iget-object v0, p1, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 432
    :cond_3
    iget-object p1, p1, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;->message:Ljava/lang/String;

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->verifyidentity_wrong_data:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    move-object v3, p1

    const/4 v2, 0x0

    .line 433
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->i_know:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$10;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$10;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    .line 439
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->enableResend()V

    :goto_4
    return-void
.end method

.method private a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 10

    .line 318
    iget-boolean v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifySuccess:Z

    if-eqz v0, :cond_0

    .line 319
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string v1, "verify success"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->c(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    goto/16 :goto_3

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->clearInput()V

    .line 323
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    const-string v1, "VALIDATECODE_FAILURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 324
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string v2, "verify wrong normal"

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->verifyidentity_wrong_data:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    .line 325
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 328
    :cond_2
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    const-string v2, "VALIDATECODE_EXPIRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 329
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string v2, "verify wrong expired"

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->verifyidentity_wrong_data:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    .line 330
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->toast(Ljava/lang/String;I)V

    .line 333
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->enableResend()V

    goto :goto_3

    .line 334
    :cond_4
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    const-string v2, "VALIDATECODE_VALIDATE_TIMES_LIMIT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 335
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string v2, "verify wrong times limit"

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 337
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->verifyidentity_wrong_data:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    :goto_2
    move-object v4, v0

    const/4 v3, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->i_know:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$7;

    invoke-direct {v6, p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$7;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 344
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v2, p0

    .line 339
    invoke-virtual/range {v2 .. v9}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 346
    :cond_6
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verify wrong "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->c(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    :goto_3
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .line 403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    const-class v0, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 406
    iget-object v0, p1, Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;->code:Ljava/lang/String;

    const-string v1, "VALIDATECODE_SEND_SUCCESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string v0, "resend success"

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->j:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setCountDown(I)V

    .line 409
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->startCountDown()V

    const/4 p1, 0x1

    return p1

    .line 412
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a(Lcom/alipay/mobile/verifyidentity/module/sms/model/ResendResponseData;)V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/graphics/Rect;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->n:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/widget/Button;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->f:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->d()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->l:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->l:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->m:I

    return p0
.end method

.method static synthetic access$2000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$202(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->m:I

    return p1
.end method

.method static synthetic access$2100(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->c(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$2200(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->b(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->i:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->g()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->c()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$900(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->k:I

    return p0
.end method

.method private b()V
    .locals 2

    .line 176
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->sms_submit:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->f:Landroid/widget/Button;

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->f:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$4;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2

    .line 186
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->sms_input:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->sms_input_hint:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setHint(I)V

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->requestFocus()Z

    const-string v0, "smsCodeCount"

    const/4 v1, 0x6

    .line 191
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->k:I

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$5;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->k:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setMaxCodeCount(I)V

    const-string v0, "smsCountDown"

    const/16 v1, 0x3c

    .line 207
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->j:I

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    iget v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->j:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setCountDown(I)V

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$6;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setResendClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->startCountDown()V

    const-string v0, "resendResponse"

    .line 216
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private b(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Z
    .locals 2

    .line 393
    iget-boolean v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->success:Z

    if-nez v0, :cond_0

    .line 394
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string v1, "resend fail"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->c(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    const/4 p1, 0x0

    return p1

    .line 398
    :cond_0
    iget-object p1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->data:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private c()V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->f:Landroid/widget/Button;

    monitor-enter v0

    .line 255
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->f:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 256
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string v2, "Duplicate rpc request! Give up this one!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    monitor-exit v0

    return-void

    .line 259
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    const-string v1, ""

    .line 261
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;)V

    const-string v3, "RPC"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->dismissProgressDialog()V

    .line 265
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->f:Landroid/widget/Button;

    monitor-enter v1

    .line 266
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->f:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 267
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 259
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private c(Landroid/content/Intent;)V
    .locals 9

    .line 220
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->sms_tip:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->c:Landroid/widget/TextView;

    const-string v0, "smsTip"

    .line 222
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->sms_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "smsHighlight"

    .line 226
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$array;->sms_highlight:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 230
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 231
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    .line 232
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v6, v5, :cond_2

    .line 234
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$color;->linkColorBlue:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 235
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v5

    const/16 v7, 0x11

    .line 234
    invoke-virtual {v1, v6, v5, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    :cond_3
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private c(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 4

    .line 473
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string v1, "next"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->g()V

    .line 475
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;-><init>()V

    .line 476
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->setMICRpcResponse(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 477
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->setEnabled(Z)V

    .line 354
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    const-string v2, "RPC"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/content/Intent;)V
    .locals 2

    .line 242
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->sms_phone:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->d:Landroid/widget/TextView;

    const-string v0, "smsPhone"

    .line 244
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string v1, "no phone number"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e()V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private e()V
    .locals 6

    .line 455
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->g()V

    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string v5, "2002"

    invoke-direct {v4, v5}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void
.end method

.method private f()V
    .locals 6

    .line 467
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->g()V

    .line 469
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string v5, "1003"

    invoke-direct {v4, v5}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "input_method"

    .line 484
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    .line 485
    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 445
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->f()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 94
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$layout;->activity_sms:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->setContentView(I)V

    .line 97
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 99
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string v1, "no intent"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e()V

    :cond_0
    const-string v0, "verifyAction"

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->b:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string v1, "no action"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e()V

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a()V

    .line 108
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->d(Landroid/content/Intent;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->c(Landroid/content/Intent;)V

    .line 110
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->b()V

    .line 111
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a(Landroid/content/Intent;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->b(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onDestroy()V

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 123
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onStart()V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->e:Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$2;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 137
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onStop()V

    .line 139
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->a:Ljava/lang/String;

    const-string v2, "got errors when hideKeyboard onStop()"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
