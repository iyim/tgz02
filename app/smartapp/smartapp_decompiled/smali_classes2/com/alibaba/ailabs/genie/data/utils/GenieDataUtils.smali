.class public Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;
.super Ljava/lang/Object;
.source "GenieDataUtils.java"


# static fields
.field private static final ADULT_PACKAGENAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.launcher"

.field public static final AUTHORITY:Ljava/lang/String; = "com.alibaba.ailabs.childmode.provider"

.field public static final CHILD_MODE_INFO_URI:Ljava/lang/String; = "content://com.alibaba.ailabs.childmode.provider/childMode"

.field private static final CHILD_PACKAGENAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.children"

.field public static final ChILD_MODE_SWICH_PROPERITY:Ljava/lang/String; = "persist.sys.is.child.mode"

.field public static final EIGHT_MINUTE_MILL_SECOND:I = 0x75300

.field private static final HOME_PROP:Ljava/lang/String; = "sys.ali.home.package"

.field public static final KEY_BETA_UPDATE_STATUS:Ljava/lang/String; = "beta"

.field public static final KEY_CHILD_RECOGNIZE:Ljava/lang/String; = "childFaceRecognize"

.field public static final KEY_GENIE_DATA_EYE_MODE:Ljava/lang/String; = "shieldEyeMode"

.field private static final KEY_GENIE_DATA_KID_MODE:Ljava/lang/String; = "kidMode"

.field public static final OUR_GSON:Lcom/google/gson/Gson;

.field private static final TAG:Ljava/lang/String; = "GenieDataUtils"

.field private static sIsMrGreen:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->OUR_GSON:Lcom/google/gson/Gson;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getBetaUpdateStatus(Landroid/content/Context;)Z
    .locals 2

    .line 303
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object p0

    const-string v0, "beta"

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 304
    const-class v0, Lcom/alibaba/ailabs/genie/data/bean/BetaUpdateSettingBean;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/data/bean/BetaUpdateSettingBean;

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get beta from device mirror data is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieDataUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/data/bean/BetaUpdateSettingBean;->isFirmware()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;
    .locals 3

    const-string v0, "GenieDataUtils"

    .line 102
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object p0

    const-string v1, "kidMode"

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChildModeSettingBean value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v1, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->OUR_GSON:Lcom/google/gson/Gson;

    const-class v2, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "getChildModeSettingBean Error !!!"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    const-string p0, "getChildModeSettingBean Error !!! create Default bean"

    .line 111
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static getChildRecognizeStatus(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "GenieDataUtils"

    .line 341
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object p0

    const-string v1, "childFaceRecognize"

    .line 342
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 344
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 346
    :try_start_0
    const-class v1, Lcom/alibaba/ailabs/genie/data/bean/ChildFaceRecognizeBean;

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/data/bean/ChildFaceRecognizeBean;

    if-eqz p0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/data/bean/ChildFaceRecognizeBean;->isEnable()Z

    move-result v2

    .line 351
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChildRecognizeStatus from device mirror data is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 353
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChildRecognizeStatus from device mirror parse json error "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2
.end method

.method public static getForbiddenEndTime(Landroid/content/Context;)I
    .locals 0

    .line 187
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    const/4 p0, 0x0

    return p0
.end method

.method public static getForbiddenStartTime(Landroid/content/Context;)I
    .locals 0

    .line 180
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    const/4 p0, 0x0

    return p0
.end method

.method public static getPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 119
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getPassword()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPlayTimePerEveryday(Landroid/content/Context;)I
    .locals 0

    .line 170
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getDailyAvailableTime()I

    move-result p0

    return p0
.end method

.method public static getPlayTimePerOnceTime(Landroid/content/Context;)I
    .locals 0

    .line 175
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object p0

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getSingleAvailableTime()I

    move-result p0

    return p0
.end method

.method public static getProtoVideoAutoTime(Landroid/content/Context;)I
    .locals 4

    const-string v0, "GenieDataUtils"

    .line 313
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object p0

    const-string v1, "protoSetting"

    .line 314
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getProductSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 316
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 318
    :try_start_0
    const-class v1, Lcom/alibaba/ailabs/genie/data/bean/ProtoSettingBean;

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/data/bean/ProtoSettingBean;

    if-eqz p0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/data/bean/ProtoSettingBean;->getProtoVideoAutoTime()I

    move-result v1

    mul-int/lit16 v2, v1, 0x3e8

    .line 323
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get protoVideoAutoTime from device mirror data is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 325
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get protoVideoAutoTime from device mirror parse json error "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    const v2, 0x75300

    :cond_2
    return v2
.end method

.method public static getVersion(Landroid/content/Context;)I
    .locals 0

    .line 194
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object p0

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getKidModeVersion()I

    move-result p0

    return p0
.end method

.method public static hasHomeProp()Z
    .locals 1

    const-string v0, "sys.ali.home.package"

    .line 145
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isChildMode(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "persist.sys.is.child.mode"

    .line 124
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getBooleanSystemProperties(Ljava/lang/String;)Z

    move-result v0

    .line 125
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object p0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isChildMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->isEnable()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " \u7cfb\u7edf\u91cc\u9762\u8bfb\u51fa\u6765\u7684\u513f\u7ae5\u6a21\u5f0f="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GenieDataUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isMrGreen()Z
    .locals 2

    .line 401
    sget-object v0, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->sIsMrGreen:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "ro.product.model"

    .line 402
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AILABS_S7A02_E2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->sIsMrGreen:Ljava/lang/Boolean;

    .line 404
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->sIsMrGreen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isNoah()Z
    .locals 1

    const-string v0, "persist.sys.is.noah"

    .line 378
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getBooleanSystemProperties(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isShieldEyeMode(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "isShieldEyeMode value = "

    const-string v1, "GenieDataUtils"

    .line 240
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object p0

    const-string v2, "shieldEyeMode"

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v2, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->OUR_GSON:Lcom/google/gson/Gson;

    const-class v3, Lcom/alibaba/ailabs/genie/data/bean/EyeModeSettingBean;

    invoke-virtual {v2, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/data/bean/EyeModeSettingBean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "getEyeModeSettingBean Error !!!"

    .line 244
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    const-string p0, "getEyeModeSettingBean Error !!! create Default bean"

    .line 249
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance p0, Lcom/alibaba/ailabs/genie/data/bean/EyeModeSettingBean;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/data/bean/EyeModeSettingBean;-><init>()V

    .line 252
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/data/bean/EyeModeSettingBean;->isEnable()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/data/bean/EyeModeSettingBean;->isEnable()Z

    move-result p0

    return p0
.end method

.method private static notifyChangeChildMode(Landroid/content/Context;Z)V
    .locals 2

    .line 224
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://com.alibaba.ailabs.childmode.provider/childMode"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?isOpened="

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 226
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 230
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static notifyChangeEyeMode(Landroid/content/Context;Z)V
    .locals 2

    .line 281
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://com.alibaba.ailabs.childmode.provider"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/eyeYieldMode"

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?isOpened="

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 284
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    nop

    nop

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 288
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static setBetaUpdateStatus(Landroid/content/Context;Z)Z
    .locals 3

    .line 293
    new-instance v0, Lcom/alibaba/ailabs/genie/data/bean/BetaUpdateSettingBean;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/data/bean/BetaUpdateSettingBean;-><init>()V

    .line 294
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/data/bean/BetaUpdateSettingBean;->setFirmware(Z)V

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set beta to device mirror data is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GenieDataUtils"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object p0

    .line 297
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v2, "beta"

    invoke-virtual {p0, v2, p1, v0, v0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->set(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set beta to device mirror "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static setChildMode(Landroid/content/Context;Z)V
    .locals 0

    .line 166
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setChildModeSelf(Landroid/content/Context;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setChildModeSelf(Landroid/content/Context;Z)V
    .locals 2

    .line 150
    invoke-static {}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isMrGreen()Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    .line 151
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setNoahMode(Z)V

    .line 153
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    .line 154
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isChildMode(Landroid/content/Context;)Z

    move-result v1

    if-eq p1, v1, :cond_1

    .line 155
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->notifyChangeChildMode(Landroid/content/Context;Z)V

    .line 157
    :cond_1
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->setEnable(Z)V

    .line 158
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setChildModeSettingBean(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V

    .line 159
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.is.child.mode"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p1, "com.alibaba.ailabs.genie.children"

    goto :goto_0

    :cond_2
    const-string p1, "com.alibaba.ailabs.genie.launcher"

    .line 160
    :goto_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setHomeSysProp(Ljava/lang/String;)V

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setChildModeSelf current mode isNoah= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isNoah()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isChild="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isChildMode(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isChildSys = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getBooleanSystemProperties(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NoahMode"

    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/genie/data/utils/AGUILog;->sendLogToWebGate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setChildModeSettingBean(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V
    .locals 4

    const-string v0, "GenieDataUtils"

    .line 79
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " save ChildModeSettingBean = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object v1

    const-string v2, "kidMode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->set(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "setChildModeSettingBean"

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/alibaba/ailabs/genie/data/utils/AGUILog;->sendLogToWebGate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object p0

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after save ChildModeSettingBean = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "updateChildModeSettingBean Error !!!"

    .line 91
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setChildRecognizeStatus(Landroid/content/Context;Z)Z
    .locals 3

    .line 365
    new-instance v0, Lcom/alibaba/ailabs/genie/data/bean/ChildFaceRecognizeBean;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildFaceRecognizeBean;-><init>()V

    .line 366
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildFaceRecognizeBean;->setEnable(Z)V

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set child recognize to device mirror data is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GenieDataUtils"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object p0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v2, "childFaceRecognize"

    invoke-virtual {p0, v2, p1, v0, v0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->set(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    .line 369
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set child recognize to device mirror "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static setEyeMode(Landroid/content/Context;Z)V
    .locals 4

    const-string v0, "GenieDataUtils"

    .line 260
    new-instance v1, Lcom/alibaba/ailabs/genie/data/bean/EyeModeSettingBean;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/data/bean/EyeModeSettingBean;-><init>()V

    .line 261
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/data/bean/EyeModeSettingBean;->setEnable(Z)V

    .line 263
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/data/bean/EyeModeSettingBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " save eyeModeSettingBean = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object v1

    const-string v2, "shieldEyeMode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->set(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 267
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isShieldEyeMode(Landroid/content/Context;)Z

    move-result p1

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after save isEyeMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "persist.sys.is.eyeshield.mode"

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 269
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "update isEyeMode Error !!!"

    .line 272
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 275
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setisEyeMode current mode isNoah= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isNoah()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isEyeMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isShieldEyeMode(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isChildSys = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "persist.sys.is.child.mode"

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getBooleanSystemProperties(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NoahMode"

    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/genie/data/utils/AGUILog;->sendLogToWebGate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setHomeSysProp(Ljava/lang/String;)V
    .locals 1

    .line 134
    invoke-static {}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isMrGreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "com.alibaba.ailabs.genie.children"

    :cond_0
    const-string v0, "sys.ali.home.package"

    .line 138
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setNoahMode(Z)V
    .locals 3

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNoah = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.sys.is.noah"

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getBooleanSystemProperties(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GenieDataUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    .line 387
    :goto_0
    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static setPassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 205
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->setPassword(Ljava/lang/String;)V

    .line 207
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setChildModeSettingBean(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V

    return-void
.end method

.method public static setPlayTimePerEveryday(Landroid/content/Context;I)V
    .locals 1

    .line 211
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->setDailyAvailableTime(I)V

    .line 213
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setChildModeSettingBean(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V

    return-void
.end method

.method public static setPlayTimePerOnceTime(Landroid/content/Context;I)V
    .locals 1

    .line 217
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    .line 218
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->setSingleAvailableTime(I)V

    .line 219
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setChildModeSettingBean(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V

    return-void
.end method

.method public static setVersion(Landroid/content/Context;I)V
    .locals 1

    .line 199
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    .line 200
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->setKidModeVersion(I)V

    .line 201
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setChildModeSettingBean(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V

    return-void
.end method
