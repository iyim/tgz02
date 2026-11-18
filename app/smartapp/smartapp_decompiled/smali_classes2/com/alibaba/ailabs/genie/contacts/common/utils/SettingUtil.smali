.class public Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;
.super Ljava/lang/Object;
.source "SettingUtil.java"


# static fields
.field public static KEY_UUID:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field public static VALUE_SYSTEM_CMCC:Ljava/lang/String;

.field public static VALUE_SYSTEM_CUNICOM:Ljava/lang/String;

.field public static VALUE_SYSTEM_NTELECOM:Ljava/lang/String;

.field private static VALUE_UNKNOWN:Ljava/lang/String;

.field public static model:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SettingUtil"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->TAG:Ljava/lang/String;

    const-string v0, "unknown"

    .line 19
    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->VALUE_UNKNOWN:Ljava/lang/String;

    const-string v0, "ro.genie.uuid"

    .line 20
    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->KEY_UUID:Ljava/lang/String;

    const-string v0, "AILABS_S1L_CM"

    .line 22
    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->VALUE_SYSTEM_CMCC:Ljava/lang/String;

    const-string v0, "AILABS_S1L_CU"

    .line 24
    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->VALUE_SYSTEM_CUNICOM:Ljava/lang/String;

    const-string v0, "AILABS_S1L_NT"

    .line 26
    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->VALUE_SYSTEM_NTELECOM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getSettingProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 33
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    .line 34
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 35
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    sget-object v3, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->VALUE_UNKNOWN:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    sget-object p1, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSettingProperty key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",value = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 38
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_1
    return-object p1
.end method

.method public static isCMCC()Z
    .locals 2

    .line 74
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->model:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "ro.product.model"

    .line 75
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->model:Ljava/lang/String;

    .line 77
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->model:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_CM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCmccDevice()Z
    .locals 2

    .line 46
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->VALUE_SYSTEM_CMCC:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 50
    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isCuDevice()Z
    .locals 2

    .line 57
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->VALUE_SYSTEM_CUNICOM:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 61
    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isUniComCustom()Z
    .locals 2

    .line 67
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->model:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "ro.product.model"

    .line 68
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->model:Ljava/lang/String;

    .line 70
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->model:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/common/utils/SettingUtil;->model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_CU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
