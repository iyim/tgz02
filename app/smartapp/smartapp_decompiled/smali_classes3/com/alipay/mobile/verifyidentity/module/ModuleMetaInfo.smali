.class public Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;
.super Ljava/lang/Object;
.source "ModuleMetaInfo.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    .line 19
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v1, "MENU"

    .line 20
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    const-string v1, "com.alipay.mobile.verifyidentity.module.menu.MenuModule"

    .line 21
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 22
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v1, "PRIVACY_SHIELD"

    .line 25
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    const-string v2, "com.alipay.mobile.verifyidentity.module.shield.ShieldModule"

    .line 26
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 27
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v2, "SAFE_AREA"

    .line 31
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    const-string v2, "com.alipay.mobile.verifyidentity.module.safezone.SafeZoneModule"

    .line 32
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 33
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v2, "SIGN_LOGIN_FACE"

    .line 36
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    const-string v2, "com.alipay.module.face.BaseFaceCertModule"

    .line 37
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 38
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v3, "LOGIN_FACE"

    .line 41
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 42
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 43
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v3, "BANKCARD_BINDING"

    .line 46
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    const-string v3, "com.alipay.mobile.verifyidentity.module.bankcard.BankCardModule"

    .line 47
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 48
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v3, "NO_CAPTCHA"

    .line 51
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    const-string v3, "com.alipay.mobile.verifyidentity.module.nocaptcha.NoCaptchaModule"

    .line 52
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 53
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v3, "ACCOUNT_CERT_FACE"

    .line 56
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 57
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 58
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v3, "SYS_INPUT_CERT_FACE"

    .line 61
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 62
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 63
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v3, "USER_INPUT_CERT_FACE"

    .line 66
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    const-string v3, "com.alipay.module.face.FaceUserInputCertModule"

    .line 67
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 68
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v4, "X_ACCOUNT_CERT_FACE"

    .line 71
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 72
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 73
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v4, "FACEVERIFY"

    .line 76
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 77
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 78
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v4, "FACEVERIFY_INPUT"

    .line 81
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 82
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 83
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v3, "IDFACE"

    .line 86
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 87
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 88
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v3, "IDPAPERS"

    .line 91
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 92
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 93
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v3, "NATIVE_PAYMENT_PASSWORD"

    .line 96
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    const-string v3, "com.alipay.mobile.verifyidentity.module.password.pay.PayPwdModule"

    .line 97
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 98
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v3, "PAYMENT_PASSWORD_PLUS"

    .line 101
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    const-string v3, "com.alipay.mobile.verifyidentity.module.fingerprint.FingerprintModule"

    .line 102
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 103
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v3, "SMS"

    .line 106
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    const-string v4, "com.alipay.mobile.verifyidentity.module.sms.SmsModule"

    .line 107
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 108
    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v5, "ACCOUNT_BINDING_SMS"

    .line 111
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 112
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 113
    iget-object v6, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v6, "CUSTOMIZED_SMS"

    .line 116
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 117
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 118
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v4, "USER_INFO_PRIVACY"

    .line 121
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    const-string v4, "com.alipay.mobile.verifyidentity.module.namebirthday.NameBirthdayModule"

    .line 122
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 123
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v4, "X_CERT_FACE"

    .line 126
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 127
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 128
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v4, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v7, "ALIFACE"

    .line 132
    invoke-virtual {v0, v7}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    const-string v7, "com.alipay.module.face.AliFaceCertModule"

    .line 133
    invoke-virtual {v0, v7}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v4, "MOBILE_CERT"

    .line 137
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    const-string v4, "com.alipay.mobile.verifyidentity.module.cert.CertModule"

    .line 138
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 139
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v4, "HAND_WRITING"

    .line 142
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 143
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 144
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v4, "PAPERS"

    .line 147
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 148
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 149
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v2, "VI_DYNAMIC_CENTER"

    .line 152
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    const-string v2, "com.alipay.mobile.verifyidentity.module.dynamic.DynamicModule"

    .line 153
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 154
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v4, "SECRET_QUESTION"

    .line 157
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 158
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 159
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 162
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 163
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 164
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 167
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 168
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 169
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 172
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 173
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 174
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    .line 177
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 178
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 179
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v1, "REGISTER_CERTIFICATE"

    .line 182
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 183
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 184
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v1, "FAST_PAY_PRIVACY"

    .line 187
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 188
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 189
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v1, "FAST_PAY_PRIVACY_7DAY"

    .line 192
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 193
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 194
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v1, "AUTH_CODE"

    .line 197
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    const-string v1, "com.alipay.mobile.verifyidentity.module.qrcode.QrCodeModule"

    .line 198
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 199
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;-><init>()V

    const-string v1, "REMIND"

    .line 202
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 203
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 204
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
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
.method public getModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->a:Ljava/util/List;

    return-object v0
.end method
