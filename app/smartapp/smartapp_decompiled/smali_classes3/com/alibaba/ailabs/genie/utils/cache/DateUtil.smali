.class public Lcom/alibaba/ailabs/genie/utils/cache/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field public static final TIME_UNIT_DAY:J = 0x5265c00L

.field public static final TIME_UNIT_HOUR:J = 0x36ee80L

.field public static final TIME_UNIT_MINUTE:J = 0xea60L

.field public static final TIME_UNIT_MONTH:J = 0x9a7ec800L

.field public static final TIME_UNIT_SECOND:J = 0x3e8L

.field public static final TIME_UNIT_YEAR:J = 0xdc46c32800L

.field static final dateFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/utils/cache/DateUtil;->dateFormat:Ljava/text/DateFormat;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static currentDateString()Ljava/lang/String;
    .locals 1

    .line 27
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/cache/DateUtil;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static dateToString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/cache/DateUtil;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static isCacheItemAlive(Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;)Z
    .locals 4

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->getDeleteTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
