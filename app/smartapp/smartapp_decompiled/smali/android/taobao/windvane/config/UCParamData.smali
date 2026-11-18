.class public Landroid/taobao/windvane/config/UCParamData;
.super Ljava/lang/Object;
.source "UCParamData.java"


# static fields
.field private static final COMMON_CLIENT_APP_PACKAGE_NAMES:[Ljava/lang/String;

.field private static final DEFAULT_HOST_UCM_VERSIONS:Ljava/lang/String; = ""

.field private static final HIGH_SECURITY_CLIENT_APP_PACKAGE_NAMES:[Ljava/lang/String;

.field private static final HOST_APP_PACKAGE_NAMES:[Ljava/lang/String;

.field private static final LOAD_POLICY_CD_ONLY_LEGAL_VALUE:Ljava/lang/String; = "sc_lshco"

.field private static final OTHER_APPS_CLIENT_UCM_VERSIONS:Ljava/lang/String; = ""

.field private static final SECURITY_CLIENT_UCM_VERSIONS:Ljava/lang/String; = ""


# instance fields
.field public cachePageNumber:I

.field public cdResourceEmbedSurfaceEmbedViewEnableList:Ljava/lang/String;

.field public cdResourceEmbedViewReAttachList:Ljava/lang/String;

.field public discardableLimitBytes:I

.field public discardableReleaseForAllocFailedSwitch:Z

.field public discardableReleaseFreeAfterSecond:I

.field public discardableReleaseFreeAfterTimeSwitch:Z

.field public discardableReleaseFreeUntilByte:I

.field public glLostReloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public glLostUnreloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public grDiscardableLimitByte:I

.field public grResourceCacheLimitByte:I

.field public hostUcmVersionsCd:Ljava/lang/String;

.field public openGPUWatchDogOptimize:Z

.field public scCopyToSdcardCd:Ljava/lang/String;

.field public scLoadPolicyCd:Ljava/lang/String;

.field public scPkgNames:Ljava/lang/String;

.field public scStillUpd:Ljava/lang/String;

.field public scWaitMilts:Ljava/lang/String;

.field public sdCopyPathCd:Ljava/lang/String;

.field public thirtyUcmVersionsCd:Ljava/lang/String;

.field public u4FocusAutoPopupInputHostList:Ljava/lang/String;

.field public ucPageTimerCount:Ljava/lang/String;

.field public webglErrorRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.youku.phone"

    const-string v1, "com.taobao.taobao"

    .line 30
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/taobao/windvane/config/UCParamData;->HOST_APP_PACKAGE_NAMES:[Ljava/lang/String;

    .line 35
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/taobao/windvane/config/UCParamData;->HIGH_SECURITY_CLIENT_APP_PACKAGE_NAMES:[Ljava/lang/String;

    const-string v1, "com.tmall.wireless"

    const-string v2, "com.huawei.hwvplayer.youku"

    const-string v3, "cn.damai"

    .line 38
    filled-new-array {v1, v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/taobao/windvane/config/UCParamData;->COMMON_CLIENT_APP_PACKAGE_NAMES:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 54
    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->u4FocusAutoPopupInputHostList:Ljava/lang/String;

    const-string v0, "0^^*,map,video,camera,ai-camera,canvas"

    .line 55
    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->cdResourceEmbedSurfaceEmbedViewEnableList:Ljava/lang/String;

    const-string v0, "map"

    .line 56
    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->cdResourceEmbedViewReAttachList:Ljava/lang/String;

    const-string v0, "2000"

    .line 57
    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->ucPageTimerCount:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Landroid/taobao/windvane/config/UCParamData;->openGPUWatchDogOptimize:Z

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/config/UCParamData;->glLostReloadList:Ljava/util/List;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/config/UCParamData;->glLostUnreloadList:Ljava/util/List;

    const/4 v1, 0x5

    .line 63
    iput v1, p0, Landroid/taobao/windvane/config/UCParamData;->cachePageNumber:I

    const/high16 v1, 0x8000000

    .line 64
    iput v1, p0, Landroid/taobao/windvane/config/UCParamData;->discardableLimitBytes:I

    .line 65
    iput-boolean v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableReleaseFreeAfterTimeSwitch:Z

    const/16 v0, 0x3c

    .line 66
    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableReleaseFreeAfterSecond:I

    const/high16 v0, 0x800000

    .line 67
    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableReleaseFreeUntilByte:I

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableReleaseForAllocFailedSwitch:Z

    const/high16 v0, 0x6000000

    .line 69
    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->grDiscardableLimitByte:I

    .line 70
    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->grResourceCacheLimitByte:I

    const/16 v0, 0xa

    .line 73
    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->webglErrorRate:I

    .line 76
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/config/UCParamData;->parse(Ljava/lang/String;)V

    return-void
.end method

.method private static commonClientApp()Z
    .locals 2

    .line 170
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/config/UCParamData;->COMMON_CLIENT_APP_PACKAGE_NAMES:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/taobao/windvane/config/UCParamData;->includedAppPackageName(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getClientUCMVersionConfig()Ljava/lang/String;
    .locals 2

    .line 186
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->highSecurityClientApp()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    :cond_0
    return-object v1
.end method

.method private getSdCopyPathCd(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 150
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static highSecurityClientApp()Z
    .locals 2

    .line 178
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/config/UCParamData;->HIGH_SECURITY_CLIENT_APP_PACKAGE_NAMES:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/taobao/windvane/config/UCParamData;->includedAppPackageName(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hostApp()Z
    .locals 2

    .line 194
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/config/UCParamData;->HOST_APP_PACKAGE_NAMES:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/taobao/windvane/config/UCParamData;->includedAppPackageName(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static includedAppPackageName(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 161
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 162
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static needLoadNeedShareCoreApp()Z
    .locals 1

    .line 203
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->commonClientApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->highSecurityClientApp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private notEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private obtainGLLostReloadList(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "glLostReloadArray"

    .line 119
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->glLostReloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 124
    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->glLostReloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 126
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 127
    iget-object v1, p0, Landroid/taobao/windvane/config/UCParamData;->glLostReloadList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private obtainGLLostUnreloadList(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "glLostUnreloadArray"

    .line 133
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->glLostUnreloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 138
    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->glLostUnreloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 140
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 141
    iget-object v1, p0, Landroid/taobao/windvane/config/UCParamData;->glLostUnreloadList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "UCParamData"

    const-string v0, "obtainGLLostUnreloadList: obtatin unreload url list error!"

    .line 145
    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "true"

    const-string v1, ""

    const-string v2, "UCParamData"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 81
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "sdCopyPathCd"

    const-string v7, "/alipay/com.eg.android.AlipayGphone/"

    .line 86
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/taobao/windvane/config/UCParamData;->getSdCopyPathCd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/taobao/windvane/config/UCParamData;->sdCopyPathCd:Ljava/lang/String;

    const-string v6, "hostUcmVersionsCd"

    .line 87
    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/taobao/windvane/config/UCParamData;->hostUcmVersionsCd:Ljava/lang/String;

    const-string/jumbo v6, "scLoadPolicyCd"

    .line 89
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->needLoadNeedShareCoreApp()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v1, "sc_lshco"

    .line 88
    :cond_1
    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/taobao/windvane/config/UCParamData;->scLoadPolicyCd:Ljava/lang/String;

    const-string/jumbo v1, "scCopyToSdcardCd"

    .line 90
    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/taobao/windvane/config/UCParamData;->scCopyToSdcardCd:Ljava/lang/String;

    const-string/jumbo v1, "thirtyUcmVersionsCd"

    .line 91
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->getClientUCMVersionConfig()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/taobao/windvane/config/UCParamData;->thirtyUcmVersionsCd:Ljava/lang/String;

    const-string v1, "com.eg.android.AlipayGphone^^com.taobao.taobao"

    const-string/jumbo v6, "scPkgNames"

    .line 93
    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/taobao/windvane/config/UCParamData;->scPkgNames:Ljava/lang/String;

    const-string/jumbo v1, "scStillUpd"

    .line 94
    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->scStillUpd:Ljava/lang/String;

    const-string/jumbo v0, "scWaitMilts"

    .line 95
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->needLoadNeedShareCoreApp()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    goto :goto_0

    :cond_2
    const-string v1, "600000"

    :goto_0
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->scWaitMilts:Ljava/lang/String;

    const-string/jumbo v0, "u4FocusAutoPopupInputHostList"

    .line 96
    iget-object v1, p0, Landroid/taobao/windvane/config/UCParamData;->u4FocusAutoPopupInputHostList:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->u4FocusAutoPopupInputHostList:Ljava/lang/String;

    const-string v0, "cachePageNumber"

    .line 98
    iget v1, p0, Landroid/taobao/windvane/config/UCParamData;->cachePageNumber:I

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->cachePageNumber:I

    const-string v0, "discardableLimitBytes"

    const/high16 v1, 0x8000000

    .line 99
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableLimitBytes:I

    const-string v0, "discardableReleaseFreeAfterTimeSwitch"

    .line 100
    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableReleaseFreeAfterTimeSwitch:Z

    const-string v0, "discardableReleaseFreeAfterSecond"

    const/16 v1, 0x3c

    .line 101
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableReleaseFreeAfterSecond:I

    const-string v0, "discardableReleaseFreeUntilByte"

    const/high16 v1, 0x800000

    .line 102
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableReleaseFreeUntilByte:I

    const-string v0, "discardableReleaseForAllocFailedSwitch"

    .line 103
    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/taobao/windvane/config/UCParamData;->discardableReleaseForAllocFailedSwitch:Z

    const-string v0, "grDiscardableLimitByte"

    const/high16 v1, 0x6000000

    .line 104
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->grDiscardableLimitByte:I

    const-string v0, "grResourceCacheLimitByte"

    .line 105
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->grResourceCacheLimitByte:I

    const-string v0, "cdResourceEmbedSurfaceEmbedViewEnableList"

    .line 106
    iget-object v1, p0, Landroid/taobao/windvane/config/UCParamData;->cdResourceEmbedSurfaceEmbedViewEnableList:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->cdResourceEmbedSurfaceEmbedViewEnableList:Ljava/lang/String;

    const-string v0, "cdResourceEmbedViewReAttachList"

    .line 107
    iget-object v1, p0, Landroid/taobao/windvane/config/UCParamData;->cdResourceEmbedViewReAttachList:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->cdResourceEmbedViewReAttachList:Ljava/lang/String;

    const-string/jumbo v0, "ucPageTimerCount"

    .line 108
    iget-object v1, p0, Landroid/taobao/windvane/config/UCParamData;->ucPageTimerCount:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->ucPageTimerCount:Ljava/lang/String;

    const-string v0, "openGPUWatchDogOptimize"

    .line 109
    iget-boolean v1, p0, Landroid/taobao/windvane/config/UCParamData;->openGPUWatchDogOptimize:Z

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/taobao/windvane/config/UCParamData;->openGPUWatchDogOptimize:Z

    .line 110
    invoke-direct {p0, v5}, Landroid/taobao/windvane/config/UCParamData;->obtainGLLostReloadList(Lorg/json/JSONObject;)V

    .line 111
    invoke-direct {p0, v5}, Landroid/taobao/windvane/config/UCParamData;->obtainGLLostUnreloadList(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "webglErrorRate"

    .line 112
    iget v1, p0, Landroid/taobao/windvane/config/UCParamData;->webglErrorRate:I

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/config/UCParamData;->webglErrorRate:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 114
    :catch_0
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "failed to parse uc params"

    invoke-static {v2, p1, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public validShareCoreFromSdcardParams()Z
    .locals 2

    .line 214
    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->sdCopyPathCd:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/UCParamData;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->thirtyUcmVersionsCd:Ljava/lang/String;

    .line 215
    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/UCParamData;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->scPkgNames:Ljava/lang/String;

    .line 216
    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/UCParamData;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->scLoadPolicyCd:Ljava/lang/String;

    const-string/jumbo v1, "sc_lshco"

    .line 217
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public validShareCoreToSdcardParams()Z
    .locals 1

    .line 208
    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->scCopyToSdcardCd:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/UCParamData;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->sdCopyPathCd:Ljava/lang/String;

    .line 209
    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/UCParamData;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/windvane/config/UCParamData;->hostUcmVersionsCd:Ljava/lang/String;

    .line 210
    invoke-direct {p0, v0}, Landroid/taobao/windvane/config/UCParamData;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
