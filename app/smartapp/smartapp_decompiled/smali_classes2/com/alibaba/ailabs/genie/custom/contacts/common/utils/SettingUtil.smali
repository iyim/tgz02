.class public Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;
.super Ljava/lang/Object;
.source "SettingUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static VALUE_SYSTEM_CMCC:Ljava/lang/String;

.field public static VALUE_SYSTEM_CUNICOM:Ljava/lang/String;

.field public static VALUE_SYSTEM_NTELECOM:Ljava/lang/String;

.field public static model:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SettingUtil"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->TAG:Ljava/lang/String;

    const-string v0, "AILABS_S1L_CM"

    .line 17
    sput-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->VALUE_SYSTEM_CMCC:Ljava/lang/String;

    const-string v0, "AILABS_S1L_CU"

    .line 19
    sput-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->VALUE_SYSTEM_CUNICOM:Ljava/lang/String;

    const-string v0, "AILABS_S1L_NT"

    .line 21
    sput-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->VALUE_SYSTEM_NTELECOM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isCMCC()Z
    .locals 2

    .line 55
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->model:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "ro.product.model"

    .line 56
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->model:Ljava/lang/String;

    .line 58
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->model:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->model:Ljava/lang/String;

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

    .line 27
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->VALUE_SYSTEM_CMCC:Ljava/lang/String;

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

    .line 31
    sget-object v1, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isCuDevice()Z
    .locals 2

    .line 38
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->VALUE_SYSTEM_CUNICOM:Ljava/lang/String;

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

    .line 42
    sget-object v1, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isUniComCustom()Z
    .locals 2

    .line 48
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->model:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "ro.product.model"

    .line 49
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->model:Ljava/lang/String;

    .line 51
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->model:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/common/utils/SettingUtil;->model:Ljava/lang/String;

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
