.class public Lcom/alibaba/ailabs/genie/pay/GeniePay;
.super Ljava/lang/Object;
.source "GeniePay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/pay/GeniePay$SingletonHolder;
    }
.end annotation


# static fields
.field private static final AUTH_INFO_STRING_EMPTY:Ljava/lang/String; = ""

.field public static final CODE_CANCLE:Ljava/lang/String; = "-2"

.field public static final CODE_EXCEPTION:Ljava/lang/String; = "-3"

.field private static final CODE_FAIL:Ljava/lang/String; = "-1"

.field public static final CODE_SUCCESS:Ljava/lang/String; = "0"

.field public static final CODE_TIME_OUT:Ljava/lang/String; = "-4"

.field public static final IS_MEMBER:Ljava/lang/String; = "1"

.field public static final IS_NOT_MEMBER:Ljava/lang/String; = "0"

.field public static final MEMBER_TYPE:Ljava/lang/String; = "member_type"

.field public static final PAY_AMOUNT:Ljava/lang/String; = "pay_amount"

.field public static final PAY_AUTH_INFO:Ljava/lang/String; = "pay_auth_info"

.field public static final PAY_EXTEND:Ljava/lang/String; = "pay_extend"

.field public static final PAY_ITEM_ID:Ljava/lang/String; = "pay_item_id"

.field public static final PAY_PRICE:Ljava/lang/String; = "pay_price"

.field public static final PAY_SHOW_RAW_ID:Ljava/lang/String; = "pay_show_raw_id"

.field public static final PAY_SOURCE:Ljava/lang/String; = "pay_source"

.field public static final PAY_STATUS_NOTPAY:Ljava/lang/String; = "NOT_PAY"

.field public static final PAY_STATUS_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final PAY_STATUS_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final PAY_SUB_TITLE:Ljava/lang/String; = "pay_sub_title"

.field public static final PAY_TITLE:Ljava/lang/String; = "pay_title"

.field public static final PAY_TYPE:Ljava/lang/String; = "type"

.field public static final PAY_TYPE_V0:Ljava/lang/String; = "pay_type_v0"

.field public static final PAY_TYPE_V6:Ljava/lang/String; = "pay_type_v6"

.field public static final SELL_TYPE_ONE:Ljava/lang/String; = "1"

.field public static final SELL_TYPE_TWO:Ljava/lang/String; = "2"

.field private static final TAG:Ljava/lang/String; = "GeniePay"

.field private static mAppInstance:Landroid/app/Application;


# instance fields
.field private mCurrentPayModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

.field private mGeniePayListener:Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

.field private mGeniePayResult:Lcom/alibaba/ailabs/genie/pay/GeniePayResult;

.field private mModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/pay/GeniePay$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePay;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/pay/GeniePay;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->openProductActivity()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static checkEnv()V
    .locals 2

    .line 191
    sget-object v0, Lcom/alibaba/ailabs/genie/pay/GeniePay;->mAppInstance:Landroid/app/Application;

    if-eqz v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mAppInstance is null \nyou must invoke GeniePay.init in you Applicaion\'s onCreate method!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 194
    throw v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 199
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->checkEnv()V

    .line 200
    sget-object v0, Lcom/alibaba/ailabs/genie/pay/GeniePay;->mAppInstance:Landroid/app/Application;

    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;
    .locals 1

    .line 140
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay$SingletonHolder;->access$100()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 5

    .line 144
    sput-object p0, Lcom/alibaba/ailabs/genie/pay/GeniePay;->mAppInstance:Landroid/app/Application;

    .line 146
    new-instance p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    invoke-static {}, Lmtopsdk/mtop/domain/EnvModeEnum;->values()[Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "INNER"

    invoke-direct {p0, v2, v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;-><init>(Ljava/lang/String;Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 147
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object p0

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->build()Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    move-result-object p0

    .line 149
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->readSystemEnv()I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 151
    new-instance p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    invoke-static {}, Lmtopsdk/mtop/domain/EnvModeEnum;->values()[Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-direct {p0, v2, v4}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;-><init>(Ljava/lang/String;Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 152
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAuthCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object p0

    new-array v2, v3, [Ljava/lang/Object;

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "default-ide-project-staging%d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->projectStaging(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->build()Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    move-result-object p0

    .line 157
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/second/SDKInitController;

    sget-object v1, Lcom/alibaba/ailabs/genie/pay/GeniePay;->mAppInstance:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/second/SDKInitController;-><init>(Landroid/app/Application;)V

    .line 158
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setMtopConfig(Lcom/alibaba/ailabs/genie/second/config/MtopConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object p0

    .line 159
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->isDebug()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->openSdkLog(Z)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object p0

    .line 160
    invoke-virtual {p0, v3, v3}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setASRConfig(ZZ)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->init()Lcom/alibaba/ailabs/genie/second/SDKInitController;

    return-void
.end method

.method public static initDebug(Landroid/app/Application;)V
    .locals 4

    .line 165
    sput-object p0, Lcom/alibaba/ailabs/genie/pay/GeniePay;->mAppInstance:Landroid/app/Application;

    .line 167
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->readSystemEnv()I

    move-result p0

    .line 168
    new-instance v0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    invoke-static {}, Lmtopsdk/mtop/domain/EnvModeEnum;->values()[Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v3, "INNER"

    invoke-direct {v0, v3, v1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;-><init>(Ljava/lang/String;Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 169
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 170
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v1, v3

    const-string p0, "default-ide-project-staging%d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->projectStaging(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->build()Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    move-result-object p0

    .line 172
    new-instance v0, Lcom/alibaba/ailabs/genie/second/SDKInitController;

    sget-object v1, Lcom/alibaba/ailabs/genie/pay/GeniePay;->mAppInstance:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/second/SDKInitController;-><init>(Landroid/app/Application;)V

    .line 173
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setMtopConfig(Lcom/alibaba/ailabs/genie/second/config/MtopConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object p0

    .line 174
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->isDebug()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->openSdkLog(Z)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object p0

    .line 175
    invoke-virtual {p0, v2, v2}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setASRConfig(ZZ)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object p0

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->init()Lcom/alibaba/ailabs/genie/second/SDKInitController;

    return-void
.end method

.method private openProductActivity()V
    .locals 3

    .line 454
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 455
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 456
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 458
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "GeniePay"

    const-string v1, "GeniePay paystartActivity error !!!"

    .line 459
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private payByMember(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V
    .locals 2

    .line 399
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 401
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;-><init>()V

    .line 402
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->authInfo(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    move-result-object v0

    .line 403
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->paramMode(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/GeniePay$4;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/genie/pay/GeniePay$4;-><init>(Lcom/alibaba/ailabs/genie/pay/GeniePay;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V

    .line 404
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->listener(Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    move-result-object p1

    .line 432
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->build()Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    move-result-object p1

    .line 433
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi;->fetchVideoMemberItem(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V

    return-void
.end method

.method private payByNotMember(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V
    .locals 2

    .line 308
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getSellType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 309
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->paySellTypeOne(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V

    goto :goto_0

    :cond_0
    const-string v1, "2"

    .line 311
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->paySellTypeTwo(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V

    goto :goto_0

    .line 314
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sellType is wrong !!! "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GeniePay"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 316
    new-instance p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;

    const-string v0, "sellType is wrong !!!"

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayError;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayListener;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private payInner(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V
    .locals 3

    .line 292
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getType()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->setGeniePayListener(Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V

    .line 294
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/utils/UtUtil;->onPay(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;)V

    const-string v1, "1"

    .line 295
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->payByMember(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 297
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->payByNotMember(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V

    goto :goto_0

    .line 300
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " type is wrong !!! Member is 1, Not Member is 0 ,your type is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "GeniePay"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 302
    new-instance p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayError;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayListener;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private paySellTypeOne(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V
    .locals 2

    .line 323
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;-><init>()V

    .line 326
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->authInfo(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    move-result-object v0

    .line 327
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->paramMode(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/GeniePay$2;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/genie/pay/GeniePay$2;-><init>(Lcom/alibaba/ailabs/genie/pay/GeniePay;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V

    .line 328
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->listener(Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->build()Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    move-result-object p1

    .line 356
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi;->fetchAlbumOneContentItem(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V

    return-void
.end method

.method private paySellTypeTwo(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V
    .locals 2

    .line 360
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v1, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;-><init>()V

    .line 363
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->authInfo(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    move-result-object v0

    .line 364
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->paramMode(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/GeniePay$3;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/genie/pay/GeniePay$3;-><init>(Lcom/alibaba/ailabs/genie/pay/GeniePay;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V

    .line 365
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->listener(Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    move-result-object p1

    .line 393
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->build()Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    move-result-object p1

    .line 394
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi;->fetchAlbumItem(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V

    return-void
.end method

.method private static readSystemEnv()I
    .locals 4

    const-string v0, "GeniePay"

    :try_start_0
    const-string v1, "persist.sys.genie.env"

    const-string v2, "0"

    .line 181
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist.sys.genie.env = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 185
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getCurrentPayModelBean()Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay;->mCurrentPayModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    return-object v0
.end method

.method public getGeniePayResult()Lcom/alibaba/ailabs/genie/pay/GeniePayResult;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay;->mGeniePayResult:Lcom/alibaba/ailabs/genie/pay/GeniePayResult;

    return-object v0
.end method

.method public getModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;",
            ">;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay;->mGeniePayResult:Lcom/alibaba/ailabs/genie/pay/GeniePayResult;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mModelList:Ljava/util/List;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCallback(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;)V
    .locals 1

    .line 273
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, p3}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;->setDetail(Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;)V

    .line 276
    invoke-virtual {v0, p4}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;->setAppInfo(Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;)V

    if-eqz p5, :cond_0

    .line 278
    invoke-interface {p5, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;->onCallback(Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;)V

    goto :goto_0

    :cond_0
    const-string p5, "GeniePay"

    const-string v0, "callback == null"

    .line 280
    invoke-static {p5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/pay/utils/UtUtil;->onPayResult(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;)V

    return-void
.end method

.method public onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay;->mGeniePayListener:Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    if-eqz v0, :cond_0

    .line 465
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayListener;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/pay/GeniePayResult;)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay;->mGeniePayListener:Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    if-eqz v0, :cond_0

    .line 471
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayListener;->onSuccess(Lcom/alibaba/ailabs/genie/pay/GeniePayResult;)V

    :cond_0
    return-void
.end method

.method public pay(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V
    .locals 0

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->payInner(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public pay(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "GeniePay"

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pay param = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    :try_start_1
    new-instance v2, Lcom/alibaba/ailabs/genie/pay/GeniePay$1;

    invoke-direct {v2, p0, v1, p2}, Lcom/alibaba/ailabs/genie/pay/GeniePay$1;-><init>(Lcom/alibaba/ailabs/genie/pay/GeniePay;Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;)V

    invoke-direct {p0, v1, v2}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->payInner(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 266
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string p1, "json = null"

    :goto_1
    move-object v4, p1

    .line 268
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getCurrentPayModelBean()Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    move-result-object v5

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getAppInfo()Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;

    move-result-object v0

    :goto_2
    move-object v6, v0

    const-string v3, "-3"

    move-object v2, p0

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->onCallback(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;Lcom/alibaba/ailabs/genie/pay/model/GeniePayBaseModel$AppInfoBean;Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;)V

    :goto_3
    return-void
.end method

.method public pay(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V
    .locals 3

    .line 232
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    const-string v0, "GeniePay"

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pay param = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->payInner(Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_0

    .line 238
    new-instance p1, Lcom/alibaba/ailabs/genie/pay/GeniePayError;

    const-string v0, "GeniePayParamModel == null "

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayError;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayListener;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCurrentPayModelBean(Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay;->mCurrentPayModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

    return-void
.end method

.method public setGeniePayListener(Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay;->mGeniePayListener:Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    return-void
.end method

.method public setGeniePayResult(Lcom/alibaba/ailabs/genie/pay/GeniePayResult;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePay;->mGeniePayResult:Lcom/alibaba/ailabs/genie/pay/GeniePayResult;

    return-void
.end method
