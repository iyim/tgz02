.class public Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;
.super Ljava/lang/Object;
.source "AiCareStore.java"


# static fields
.field public static final CRY_ENABLE:Ljava/lang/String; = "persist.aicare.snapCry"

.field public static final END_HOUTS:Ljava/lang/String; = "persist.aicare.endHours"

.field public static final END_MINUTES:Ljava/lang/String; = "persist.aicare.endMinutes"

.field public static final FALL_ENABLE:Ljava/lang/String; = "persist.aicare.snapFall"

.field public static final HUMAN_ENABLE:Ljava/lang/String; = "persist.aicare.snapHuman"

.field public static final PET_ENABLE:Ljava/lang/String; = "persist.aicare.snapPet"

.field public static final SNAP_FALL_PUSH:Ljava/lang/String; = "persist.aicare.snapFallPush"

.field public static final START_HOURS:Ljava/lang/String; = "persist.aicare.startHours"

.field public static final START_MINUTES:Ljava/lang/String; = "persist.aicare.startMinutes"

.field public static final SWITCH_ENABLE:Ljava/lang/String; = "persist.aicare.enable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 55
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return p1
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 0

    .line 69
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 71
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide p1
.end method

.method public static parse(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p3

    .line 89
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p3
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static put(Ljava/lang/String;Z)V
    .locals 0

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
