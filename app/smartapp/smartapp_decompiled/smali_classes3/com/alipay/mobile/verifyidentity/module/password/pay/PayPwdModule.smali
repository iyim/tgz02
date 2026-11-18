.class public Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;
.super Lcom/alipay/mobile/verifyidentity/module/MicroModule;
.source "PayPwdModule.java"


# static fields
.field public static final ACTION_TIP:Ljava/lang/String; = "pwd_action"

.field public static final ADD_PPW_URL:Ljava/lang/String; = "addPpwUrl"

.field public static final CONTENT:Ljava/lang/String; = "footRemark"

.field public static final HAVE_PPW:Ljava/lang/String; = "havePpw"

.field public static final IS_FIND_PPW:Ljava/lang/String; = "isFindPPW"

.field public static final IS_SIMPLE_PWD:Ljava/lang/String; = "isSimplePwd"

.field public static final KEY:Ljava/lang/String; = "pubKey"

.field public static final LOADING_TIP:Ljava/lang/String; = "loadingTip"

.field public static final OTHERS:Ljava/lang/String; = "hasOthers"

.field public static final OTHER_TIP:Ljava/lang/String; = "pwd_other"

.field public static final PASS_TIP:Ljava/lang/String; = "pwd_PASS"

.field public static final PREDATA:Ljava/lang/String; = "predata"

.field public static final PWD_TOP_TIP:Ljava/lang/String; = "pwdTopTip"

.field public static final REF:Ljava/lang/String; = "refer"

.field public static final SUBTITLE:Ljava/lang/String; = "subtitle"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final USERNAME:Ljava/lang/String; = "username"

.field private static final a:Ljava/lang/String; = "PayPwdModule"

.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Bundle;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->e:Ljava/util/HashMap;

    .line 58
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->e:Ljava/util/HashMap;

    const-class v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;

    const-string v2, "half"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->e:Ljava/util/HashMap;

    const-class v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdFullActivity;

    const-string v2, "full"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
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

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 163
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;-><init>()V

    .line 164
    iput-object p1, v0, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->token:Ljava/lang/String;

    .line 165
    iput-object p2, v0, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->data:Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->getModuleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->nextStep:Ljava/lang/String;

    .line 167
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    return-object p1
.end method

.method private a()V
    .locals 6

    .line 159
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->getMicroModuleContext()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string v5, "2002"

    invoke-direct {v4, v5}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 66
    :try_start_0
    const-class p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;

    invoke-static {p3, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    .line 72
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "module data can\'t be converted to jsonobject: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->a()V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    const-string v1, "isPluginMode"

    .line 77
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->d:Z

    .line 78
    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->d:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->isPluginMode:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->d:Z

    .line 79
    iget-object v0, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->sourcePluginName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->getVerifyId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->sourcePluginName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->getPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 83
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    const-string v1, "viToPWD"

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->doCommonAction(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 84
    iget-boolean p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->d:Z

    if-eqz p2, :cond_4

    return-void

    .line 90
    :cond_4
    iget-boolean p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->d:Z

    if-eqz p2, :cond_6

    .line 92
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->getVerifyId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PasswordInputUnifiedPlugin"

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->getPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 94
    sget-object p2, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->a:Ljava/lang/String;

    const-string p4, "PasswordInputUnifiedPlugin Mode!"

    invoke-static {p2, p4}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1, p0, p3}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->bindModule(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Ljava/lang/String;)V

    :cond_5
    return-void

    .line 101
    :cond_6
    sget-object p2, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->e:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->pageStyle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->b:Ljava/lang/Class;

    .line 102
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->b:Ljava/lang/Class;

    if-nez p2, :cond_7

    .line 103
    sget-object p2, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->a:Ljava/lang/String;

    const-string v0, "page style not recognized"

    invoke-static {p2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-class p2, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->b:Ljava/lang/Class;

    .line 108
    :cond_7
    iget-object p2, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->pubKey:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 109
    sget-object p2, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->a:Ljava/lang/String;

    const-string v0, "\u652f\u4ed8\u5bc6\u7801\u521d\u59cb\u5316\uff0c\u670d\u52a1\u7aef\u6ca1\u6709\u4e0b\u53d1\u516c\u94a5"

    invoke-static {p2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 111
    :cond_8
    sget-object p2, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->a:Ljava/lang/String;

    const-string v0, "\u652f\u4ed8\u5bc6\u7801\u521d\u59cb\u5316\uff0c\u670d\u52a1\u7aef\u4e0b\u53d1\u4e86\u516c\u94a5"

    invoke-static {p2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    .line 116
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    invoke-virtual {p2, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 117
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-boolean p4, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->isSimplePPW:Z

    const-string v0, "isSimplePwd"

    invoke-virtual {p2, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-object p4, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->pubKey:Ljava/lang/String;

    const-string v0, "pubKey"

    invoke-virtual {p2, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-object p4, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->timestamp:Ljava/lang/String;

    const-string v0, "timestamp"

    invoke-virtual {p2, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-object p4, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->keyHeadline:Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {p2, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-object p4, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->bodyContent:Ljava/lang/String;

    const-string v0, "subtitle"

    invoke-virtual {p2, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-object p4, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->keyFootRemark:Ljava/lang/String;

    const-string v0, "footRemark"

    invoke-virtual {p2, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-object p4, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->loadingTip:Ljava/lang/String;

    const-string v0, "loadingTip"

    invoke-virtual {p2, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    invoke-static {p3}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(Ljava/lang/String;)Z

    move-result p3

    const-string p4, "hasOthers"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-object p3, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->logonId:Ljava/lang/String;

    const-string p4, "username"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-object p3, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->refer:Ljava/lang/String;

    const-string p4, "refer"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-object p3, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->predata:Ljava/lang/String;

    const-string p4, "predata"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-boolean p3, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->isFindPPW:Z

    const-string p4, "isFindPPW"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-object p3, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->sourceToPwd:Ljava/lang/String;

    const-string p4, "sourceToPwd"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-boolean p3, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->isExistPPW:Z

    const-string p4, "havePpw"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-object p3, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->completePPWUrl:Ljava/lang/String;

    const-string p4, "addPpwUrl"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-object p3, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->action:Ljava/lang/String;

    const-string p4, "pwd_action"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-object p3, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->PASS:Ljava/lang/String;

    const-string p4, "pwd_PASS"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-object p3, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->other:Ljava/lang/String;

    const-string p4, "pwd_other"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/InitDataModel;->pwdTopTip:Ljava/lang/String;

    const-string p3, "pwdTopTip"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onStart()V
    .locals 3

    .line 140
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->b:Ljava/lang/Class;

    if-nez v0, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->b:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->getMicroModuleContext()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->startActivity(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Landroid/content/Intent;)V

    return-void

    .line 144
    :cond_2
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->a:Ljava/lang/String;

    const-string v1, "wrong input params"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PayPwdModule;->a()V

    return-void
.end method
