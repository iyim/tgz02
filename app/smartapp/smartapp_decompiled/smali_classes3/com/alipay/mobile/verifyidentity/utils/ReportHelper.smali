.class public Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;
.super Ljava/lang/Object;
.source "ReportHelper.java"


# static fields
.field public static a:Ljava/lang/String; = "KEY_LAST_REPORT_TIME"

.field public static b:Ljava/lang/String; = "stopFrontReport"

.field public static c:Ljava/lang/String; = "stopReport"

.field public static d:Ljava/lang/String; = "containsTokens"

.field public static e:Ljava/lang/String; = "CMStart"

.field public static f:Ljava/lang/String; = "secdataOriIF"

.field public static g:Ljava/lang/String; = "oldLocSZ"

.field public static h:Ljava/lang/String; = "closeLogging"

.field public static i:Ljava/lang/String; = "noUpSceneVID"

.field public static j:Ljava/lang/String; = "maxLogNum"

.field public static k:Ljava/lang/String; = "synShutPre"

.field static l:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static m:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Ljava/lang/String; = "KEY_INFO_FOR_REPORTER"

.field private static o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    .line 60
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->m:Ljava/util/Set;

    .line 77
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->m:Ljava/util/Set;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->o:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a()Ljava/lang/String;
    .locals 7

    .line 169
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    const/4 v2, 0x0

    .line 172
    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getFpSecdataJO(Z)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_0

    .line 174
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONArray;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v0, v2, v4}, Lcom/alibaba/fastjson/JSONArray;->add(ILjava/lang/Object;)V

    :goto_0
    const/4 v3, 0x0

    .line 179
    sget-object v5, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->d:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Y"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    const-string v3, "ReportHelper"

    const-string v6, "\u670d\u52a1\u7aef\u5df2\u4e0b\u53d1[\u9700\u8981]\u4e0a\u62a5Tokens\u7684\u6307\u4ee4"

    .line 180
    invoke-static {v3, v6}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x2

    .line 183
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    const/4 v5, 0x3

    if-eqz v2, :cond_2

    move-object v6, v4

    goto :goto_2

    .line 184
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getApdidToken()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-static {v0, v3, v6}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    const/4 v3, 0x4

    .line 185
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    const/4 v5, 0x5

    .line 186
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    const/4 v3, 0x6

    .line 187
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getViSdkVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    const/4 v5, 0x7

    .line 188
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    const/16 v3, 0x8

    .line 189
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    const/16 v5, 0x9

    .line 190
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getMobileManufacturer()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    const/16 v3, 0xa

    .line 191
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getMobileModel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    const/16 v5, 0xb

    .line 192
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBioMetaInfo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    const/16 v3, 0xc

    .line 193
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBirdNestInfo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getIsSupportFP()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    if-eqz v2, :cond_3

    goto :goto_3

    .line 195
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getUmidToken()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-static {v0, v1, v4}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    .line 223
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 228
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VI_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "ReportHelper"

    const-string p1, "response is null"

    .line 241
    invoke-static {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 244
    :cond_0
    iget-object p1, p1, Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;->config:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Ljava/util/Map;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 253
    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Landroid/content/Context;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Z)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "ReportHelper"

    const-string p1, "response is null"

    .line 258
    invoke-static {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 261
    :cond_0
    iget-object p1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->config:Ljava/util/Map;

    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Ljava/util/Map;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 307
    invoke-static {p0, p1, p2, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-nez p0, :cond_0

    .line 312
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "VI_"

    if-eqz p3, :cond_1

    .line 319
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 321
    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    const/4 p0, 0x2

    .line 323
    new-array p0, p0, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p0, p3

    const/4 p1, 0x1

    aput-object p2, p0, p1

    const-string p1, "\u66f4\u65b0VI_%s\u4e3a\uff1a%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReportHelper"

    invoke-static {p1, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 335
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 340
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 341
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ReportHelper"

    const-string v2, "VI_"

    if-eqz p1, :cond_1

    .line 342
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 343
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 344
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 345
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v6, 0x2

    .line 346
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    const-string v4, "\u66f4\u65b0VI_%s\u4e3a\uff1a%s"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 349
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 350
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 352
    invoke-interface {p0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5df2\u5220\u9664\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 359
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 361
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_2
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/Map;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-class v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;

    monitor-enter v0

    if-eqz p1, :cond_4

    .line 271
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 275
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 276
    sget-object v2, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 277
    sget-object v4, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->m:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 278
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->needCleanTasks()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    sget-object v4, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->o:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ReportHelper"

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u5728\u6838\u8eab\u8fc7\u7a0b\u4e2d\u4e0d\u7acb\u5373\u66f4\u65b0\uff0c\u5df2\u6682\u5b58\uff0c\u540e\u7eed\u66f4\u65b0"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "ReportHelper"

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u5f53\u524d\u6ca1\u6709\u6838\u8eab\u4efb\u52a1\u8fdb\u884c\uff0c\u7acb\u5373\u66f4\u65b0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 288
    invoke-static {p0, v1, p1, p2}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit v0

    return-void

    :cond_4
    :goto_1
    :try_start_1
    const-string p0, "ReportHelper"

    const-string p1, "\u8fd4\u56de\u4fe1\u606f\u4e0d\u6ee1\u8db3\u66f4\u65b0\u8981\u6c42\uff0c\u672c\u6b21\u4e0d\u66f4\u65b0"

    .line 272
    invoke-static {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static a(Lcom/alibaba/fastjson/JSONArray;ILjava/lang/String;)V
    .locals 1

    .line 200
    invoke-static {p2}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/JSONArray;->add(ILjava/lang/Object;)V

    const/4 p0, 0x2

    .line 201
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    aput-object p2, p0, p1

    const-string p1, "addToJsonarray | index: %s, value: %s "

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReportHelper"

    invoke-static {p1, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-static {v0, p0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(ZLjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 2

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "reportOccasion"

    .line 89
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    invoke-static {p0, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(ZLjava/util/HashMap;)V

    return-void
.end method

.method public static a(ZLjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 100
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ReportHelper.reportInfo() | isForced: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReportHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/verifyidentity/utils/a;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/verifyidentity/utils/a;-><init>(ZLjava/util/HashMap;)V

    const-string p0, "viReportInfo"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Z)Z
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->b(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 212
    invoke-static {v0, p0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized b()V
    .locals 7

    const-class v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;

    monitor-enter v0

    .line 295
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 296
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 297
    sget-object v3, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->m:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 298
    sget-object v5, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->o:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 299
    sget-object v5, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->o:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ReportHelper"

    .line 300
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u66f4\u65b0\u5230\u672c\u5730"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 303
    invoke-static {v2, v1, v3, v4}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private static declared-synchronized b(Ljava/lang/String;Z)Z
    .locals 6

    const-class v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "Y"

    .line 140
    sget-object v3, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "ReportHelper"

    const-string p1, "\u670d\u52a1\u7aef\u5df2\u4e0b\u53d1\u5173\u95ed\u6307\u4ee4"

    .line 141
    invoke-static {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit v0

    return v1

    .line 144
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v3, 0x1

    if-nez p1, :cond_2

    .line 145
    sget-object p1, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->n:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "md5"

    .line 146
    invoke-static {p0, v2}, Lcom/alipay/mobile/verifyidentity/utils/CipherHelper;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/utils/CipherHelper;->a([B)Ljava/lang/String;

    move-result-object p0

    .line 147
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "ReportHelper"

    const-string p1, "envData\u6ca1\u6709\u53d8\u5316\uff0c\u4e0d\u4e0a\u62a5"

    .line 148
    invoke-static {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    monitor-exit v0

    return v1

    :cond_1
    :try_start_2
    const-string p0, "ReportHelper"

    const-string p1, "envData\u6709\u53d8\u5316\uff0c\u9700\u8981\u4e0a\u62a5"

    .line 151
    invoke-static {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    monitor-exit v0

    return v3

    :cond_2
    const-wide/16 p0, 0x0

    .line 157
    :try_start_3
    sget-object v4, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 159
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 161
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p0

    const-wide/32 p0, 0xea60

    cmp-long v2, v4, p0

    if-gez v2, :cond_4

    const-string p0, "ReportHelper"

    const-string p1, "envData\u4e0a\u62a5\u95f4\u9694\u5c0f\u4e8e1\u5206\u949f\uff0c\u4e0d\u4e0a\u62a5"

    .line 162
    invoke-static {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    monitor-exit v0

    return v1

    .line 165
    :cond_4
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->n:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
