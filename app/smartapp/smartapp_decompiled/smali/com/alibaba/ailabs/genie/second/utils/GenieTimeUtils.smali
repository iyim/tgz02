.class public Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;
.super Ljava/lang/Object;
.source "GenieTimeUtils.java"


# static fields
.field public static final COLD_START:Ljava/lang/String; = "cold_start"

.field private static final GLOBAL_SP:Ljava/lang/String; = "global_sp"

.field public static final HOT_START:Ljava/lang/String; = "hot_start"

.field private static final HOUR_1:J = 0x36ee80L

.field private static final HOUR_12:J = 0x2932e00L

.field private static final KEY_CLEAR_IMAGE_CACHE_LAST_TIME:Ljava/lang/String; = "KEY_CLEAR_IMAGE_CACHE_LAST_TIME"

.field private static final KEY_MEM_INFO_UPLOAD_LAST_TIME:Ljava/lang/String; = "KEY_UPLOAD_MEM_INFO_TIME"

.field private static final MIN_1:J = 0xea60L

.field private static final MIN_30:J = 0x1b7740L

.field private static final TAG:Ljava/lang/String; = "GenieTimeUtils"

.field private static sCalTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static sColdStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->sCalTimeMap:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    .line 32
    sput-wide v0, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->sColdStartTime:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static beginTimeCalculate(Ljava/lang/String;)V
    .locals 4

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 40
    sget-object v2, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->sCalTimeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_0

    .line 41
    sget-object v2, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->sCalTimeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 43
    :cond_0
    sget-object v2, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->sCalTimeMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static calculateStartTime()V
    .locals 5

    const-string v0, "GenieTimeUtils"

    const-string v1, "calculateStartTime"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cold_start"

    .line 83
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->getTimeCalculate(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 85
    :goto_0
    sput-wide v0, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->sColdStartTime:J

    const-string v0, "hot_start"

    .line 86
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->beginTimeCalculate(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static clearStartTimeCalculate()V
    .locals 2

    const-string v0, "hot_start"

    .line 76
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->clearTimeCalculate(Ljava/lang/String;)V

    const-string v0, "cold_start"

    .line 77
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->clearTimeCalculate(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 78
    sput-wide v0, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->sColdStartTime:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static clearTimeCalculate(Ljava/lang/String;)V
    .locals 1

    .line 69
    sget-object v0, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->sCalTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getTimeCalculate(Ljava/lang/String;)J
    .locals 4

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 54
    sget-object v2, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->sCalTimeMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 58
    :cond_0
    sget-object v3, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->sCalTimeMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static isOver(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 7

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "global_sp"

    .line 126
    invoke-static {p0, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/NewSharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 127
    invoke-interface {v3, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isOver currentTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " lastTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GenieTimeUtils"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-gez v3, :cond_0

    .line 130
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Return !!! because less than "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 133
    :cond_0
    invoke-static {p0, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/NewSharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 134
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 136
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method public static isOverTimeImageCacheCleared(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "KEY_CLEAR_IMAGE_CACHE_LAST_TIME"

    const-wide/32 v1, 0x2932e00

    .line 155
    invoke-static {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->isOver(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static isOverTimeMemInfoUploaded(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "KEY_UPLOAD_MEM_INFO_TIME"

    const-wide/32 v1, 0x36ee80

    .line 146
    invoke-static {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->isOver(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static reportStartTime()V
    .locals 11

    const-string v0, "hot_start"

    .line 90
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->getTimeCalculate(Ljava/lang/String;)J

    move-result-wide v1

    .line 91
    sget-wide v3, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->sColdStartTime:J

    const-string v5, "_field_arg1"

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    const-string v9, "GenieTimeUtils"

    cmp-long v10, v3, v7

    if-lez v10, :cond_0

    cmp-long v10, v1, v7

    if-lez v10, :cond_0

    add-long/2addr v3, v1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "coldStartTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 99
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cold_start"

    .line 100
    invoke-static {v9, v1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    cmp-long v3, v1, v7

    if-lez v3, :cond_1

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hotStartTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 110
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {v9, v0, v3}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method
