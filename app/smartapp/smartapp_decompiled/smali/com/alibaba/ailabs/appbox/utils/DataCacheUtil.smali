.class public Lcom/alibaba/ailabs/appbox/utils/DataCacheUtil;
.super Ljava/lang/Object;
.source "DataCacheUtil.java"


# static fields
.field public static final KEY_DEFAUT_APP_LIST:Ljava/lang/String; = "default_app_list"

.field private static final TIME_DAY:I = 0x5265c00

.field private static final TIME_HOUR:I = 0x36ee80

.field private static final TIME_MIN:I = 0xea60

.field private static final TIME_SECOND:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static cacheData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static cacheDefaultAppList(Ljava/lang/String;)V
    .locals 1

    const-string v0, "default_app_list"

    .line 15
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/appbox/utils/DataCacheUtil;->cacheData(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getCacheByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 27
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultAppListCache()Ljava/lang/String;
    .locals 1

    const-string v0, "default_app_list"

    .line 19
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/DataCacheUtil;->getCacheByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
