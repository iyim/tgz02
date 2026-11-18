.class public Lcom/alibaba/ailabs/genie/task/standby/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final KEY_END_TIME:Ljava/lang/String; = "persist.time_standby.end"

.field private static final KEY_STANDBY_SWITCH:Ljava/lang/String; = "persist.time_standby.screen"

.field private static final KEY_START_TIME:Ljava/lang/String; = "persist.time_standby.start"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getCurTime()I
    .locals 4

    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x9

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0xa

    .line 47
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x3c

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v3, v0

    return v3
.end method

.method public static getEndTime()I
    .locals 1

    const-string v0, "persist.time_standby.end"

    .line 28
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/standby/TimeUtils;->getMinutes(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getMinutes(Ljava/lang/String;)I
    .locals 2

    .line 32
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    .line 34
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 37
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    div-int/lit8 p0, p0, 0x3c
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static getStartTime()I
    .locals 1

    const-string v0, "persist.time_standby.start"

    .line 24
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/standby/TimeUtils;->getMinutes(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isStandbyTimerOn()Z
    .locals 2

    const-string v0, "persist.time_standby.screen"

    .line 20
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
