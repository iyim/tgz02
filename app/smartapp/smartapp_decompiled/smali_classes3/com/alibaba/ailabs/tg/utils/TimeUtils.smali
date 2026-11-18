.class public final Lcom/alibaba/ailabs/tg/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final CHINESE_ZODIAC:[Ljava/lang/String;

.field private static final DEFAULT_FORMAT:Ljava/text/DateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private static final ZODIAC:[Ljava/lang/String;

.field private static final ZODIAC_FLAGS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 17
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    const-string v2, "\u7334"

    const-string v3, "\u9e21"

    const-string v4, "\u72d7"

    const-string v5, "\u732a"

    const-string v6, "\u9f20"

    const-string v7, "\u725b"

    const-string v8, "\u864e"

    const-string v9, "\u5154"

    const-string v10, "\u9f99"

    const-string v11, "\u86c7"

    const-string v12, "\u9a6c"

    const-string v13, "\u7f8a"

    .line 1348
    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->CHINESE_ZODIAC:[Ljava/lang/String;

    const/16 v0, 0xc

    .line 1405
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->ZODIAC_FLAGS:[I

    const-string v1, "\u6c34\u74f6\u5ea7"

    const-string v2, "\u53cc\u9c7c\u5ea7"

    const-string v3, "\u767d\u7f8a\u5ea7"

    const-string v4, "\u91d1\u725b\u5ea7"

    const-string v5, "\u53cc\u5b50\u5ea7"

    const-string v6, "\u5de8\u87f9\u5ea7"

    const-string v7, "\u72ee\u5b50\u5ea7"

    const-string v8, "\u5904\u5973\u5ea7"

    const-string v9, "\u5929\u79e4\u5ea7"

    const-string v10, "\u5929\u874e\u5ea7"

    const-string v11, "\u5c04\u624b\u5ea7"

    const-string v12, "\u9b54\u7faf\u5ea7"

    .line 1406
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->ZODIAC:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x14
        0x13
        0x15
        0x15
        0x15
        0x16
        0x17
        0x17
        0x17
        0x18
        0x17
        0x16
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static date2Millis(Ljava/util/Date;)J
    .locals 2

    .line 127
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static date2String(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 106
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->date2String(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static date2String(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 0

    .line 117
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChineseWeek(J)Ljava/lang/String;
    .locals 1

    .line 1143
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getChineseWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChineseWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1112
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getChineseWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChineseWeek(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 0

    .line 1123
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getChineseWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChineseWeek(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 1133
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "E"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChineseZodiac(I)Ljava/lang/String;
    .locals 1

    .line 1402
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->CHINESE_ZODIAC:[Ljava/lang/String;

    rem-int/lit8 p0, p0, 0xc

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getChineseZodiac(J)Ljava/lang/String;
    .locals 0

    .line 1392
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2Date(J)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getChineseZodiac(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChineseZodiac(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1359
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getChineseZodiac(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChineseZodiac(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 0

    .line 1370
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getChineseZodiac(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChineseZodiac(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 1380
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1381
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1382
    sget-object p0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->CHINESE_ZODIAC:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0xc

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static getDate(JJI)Ljava/util/Date;
    .locals 0

    .line 861
    invoke-static {p2, p3, p4}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide p2

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2Date(J)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getDate(Ljava/lang/String;JI)Ljava/util/Date;
    .locals 1

    .line 883
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getDate(Ljava/lang/String;Ljava/text/DateFormat;JI)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getDate(Ljava/lang/String;Ljava/text/DateFormat;JI)Ljava/util/Date;
    .locals 0

    .line 906
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide p0

    invoke-static {p2, p3, p4}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide p2

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2Date(J)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getDate(Ljava/util/Date;JI)Ljava/util/Date;
    .locals 2

    .line 927
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->date2Millis(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1, p2, p3}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide p0

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2Date(J)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getDateByNow(JI)Ljava/util/Date;
    .locals 2

    .line 1003
    invoke-static {}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getNowMills()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getDate(JJI)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getFitTimeSpan(JJI)Ljava/lang/String;
    .locals 0

    sub-long/2addr p0, p2

    .line 317
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p0, p1, p4}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2FitTimeSpan(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFitTimeSpan(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 249
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v0

    sget-object p0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p1, p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    .line 250
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2FitTimeSpan(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFitTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)Ljava/lang/String;
    .locals 2

    .line 274
    invoke-static {p0, p2}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v0

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    .line 275
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p0, p1, p3}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2FitTimeSpan(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFitTimeSpan(Ljava/util/Date;Ljava/util/Date;I)Ljava/lang/String;
    .locals 2

    .line 295
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->date2Millis(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->date2Millis(Ljava/util/Date;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2FitTimeSpan(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFitTimeSpanByNow(JI)Ljava/lang/String;
    .locals 2

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getFitTimeSpan(JJI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFitTimeSpanByNow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 451
    invoke-static {}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getNowString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {v0, p0, v1, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getFitTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFitTimeSpanByNow(Ljava/lang/String;Ljava/text/DateFormat;I)Ljava/lang/String;
    .locals 1

    .line 473
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getNowString(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getFitTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFitTimeSpanByNow(Ljava/util/Date;I)Ljava/lang/String;
    .locals 1

    .line 492
    invoke-static {}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getNowDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getFitTimeSpan(Ljava/util/Date;Ljava/util/Date;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFriendlyTimeSpanByNow(J)Ljava/lang/String;
    .locals 9

    .line 589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 593
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%tc"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v4, 0x3e8

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    const-string p0, "\u521a\u521a"

    return-object p0

    :cond_1
    const-wide/32 v6, 0xea60

    cmp-long v8, v0, v6

    if-gez v8, :cond_2

    .line 597
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "%d\u79d2\u524d"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/32 v4, 0x36ee80

    cmp-long v8, v0, v4

    if-gez v8, :cond_3

    .line 599
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    div-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "%d\u5206\u949f\u524d"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 602
    :cond_3
    invoke-static {}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getWeeOfToday()J

    move-result-wide v0

    cmp-long v4, p0, v0

    if-ltz v4, :cond_4

    .line 604
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "\u4eca\u5929%tR"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-wide/32 v4, 0x5265c00

    sub-long/2addr v0, v4

    cmp-long v4, p0, v0

    if-ltz v4, :cond_5

    .line 606
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "\u6628\u5929%tR"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 608
    :cond_5
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%tF"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFriendlyTimeSpanByNow(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 531
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getFriendlyTimeSpanByNow(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFriendlyTimeSpanByNow(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 0

    .line 551
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getFriendlyTimeSpanByNow(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFriendlyTimeSpanByNow(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 570
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getFriendlyTimeSpanByNow(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMillis(JJI)J
    .locals 0

    .line 639
    invoke-static {p2, p3, p4}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide p2

    add-long/2addr p0, p2

    return-wide p0
.end method

.method public static getMillis(Ljava/lang/String;JI)J
    .locals 1

    .line 661
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getMillis(Ljava/lang/String;Ljava/text/DateFormat;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getMillis(Ljava/lang/String;Ljava/text/DateFormat;JI)J
    .locals 0

    .line 684
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide p0

    invoke-static {p2, p3, p4}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide p2

    add-long/2addr p0, p2

    return-wide p0
.end method

.method public static getMillis(Ljava/util/Date;JI)J
    .locals 2

    .line 705
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->date2Millis(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1, p2, p3}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static getMillisByNow(JI)J
    .locals 2

    .line 945
    invoke-static {}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getNowMills()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getMillis(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getNowDate()Ljava/util/Date;
    .locals 1

    .line 355
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public static getNowMills()J
    .locals 2

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNowString()Ljava/lang/String;
    .locals 3

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNowString(Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 2

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(JJI)Ljava/lang/String;
    .locals 6

    .line 727
    sget-object v2, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    move-wide v0, p0

    move-wide v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getString(JLjava/text/DateFormat;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(JLjava/text/DateFormat;JI)Ljava/lang/String;
    .locals 0

    .line 750
    invoke-static {p3, p4, p5}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide p3

    add-long/2addr p0, p3

    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;JI)Ljava/lang/String;
    .locals 1

    .line 772
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getString(Ljava/lang/String;Ljava/text/DateFormat;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/text/DateFormat;JI)Ljava/lang/String;
    .locals 2

    .line 795
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v0

    invoke-static {p2, p3, p4}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide p2

    add-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/util/Date;JI)Ljava/lang/String;
    .locals 1

    .line 817
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getString(Ljava/util/Date;Ljava/text/DateFormat;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/util/Date;Ljava/text/DateFormat;JI)Ljava/lang/String;
    .locals 2

    .line 840
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->date2Millis(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p2, p3, p4}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide p2

    add-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringByNow(JI)Ljava/lang/String;
    .locals 1

    .line 964
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getStringByNow(JLjava/text/DateFormat;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringByNow(JLjava/text/DateFormat;I)Ljava/lang/String;
    .locals 6

    .line 985
    invoke-static {}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getNowMills()J

    move-result-wide v0

    move-object v2, p2

    move-wide v3, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getString(JLjava/text/DateFormat;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeSpan(JJI)J
    .locals 0

    sub-long/2addr p0, p2

    .line 226
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p0, p1, p4}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2TimeSpan(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getTimeSpan(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 1

    .line 159
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)J
    .locals 2

    .line 183
    invoke-static {p0, p2}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v0

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 182
    invoke-static {p0, p1, p3}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2TimeSpan(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getTimeSpan(Ljava/util/Date;Ljava/util/Date;I)J
    .locals 2

    .line 205
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->date2Millis(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->date2Millis(Ljava/util/Date;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2TimeSpan(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getTimeSpanByNow(JI)J
    .locals 2

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getTimeSpan(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getTimeSpanByNow(Ljava/lang/String;I)J
    .locals 2

    .line 374
    invoke-static {}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getNowString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {v0, p0, v1, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getTimeSpanByNow(Ljava/lang/String;Ljava/text/DateFormat;I)J
    .locals 1

    .line 395
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getNowString(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getTimeSpanByNow(Ljava/util/Date;I)J
    .locals 1

    .line 413
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getTimeSpan(Ljava/util/Date;Ljava/util/Date;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getUSWeek(J)Ljava/lang/String;
    .locals 1

    .line 1185
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getUSWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUSWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1154
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getUSWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUSWeek(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 0

    .line 1165
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getUSWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUSWeek(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 1175
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEEE"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getWeeOfToday()J
    .locals 3

    .line 613
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    .line 614
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 615
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 616
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 617
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 618
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getWeekIndex(J)I
    .locals 0

    .line 1257
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2Date(J)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getWeekIndex(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method public static getWeekIndex(Ljava/lang/String;)I
    .locals 1

    .line 1203
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getWeekIndex(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method public static getWeekIndex(Ljava/lang/String;Ljava/text/DateFormat;)I
    .locals 0

    .line 1221
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getWeekIndex(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method public static getWeekIndex(Ljava/util/Date;)I
    .locals 1

    .line 1238
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1239
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x7

    .line 1240
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getWeekOfMonth(J)I
    .locals 0

    .line 1301
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2Date(J)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getWeekOfMonth(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method public static getWeekOfMonth(Ljava/lang/String;)I
    .locals 1

    .line 1268
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getWeekOfMonth(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method public static getWeekOfMonth(Ljava/lang/String;Ljava/text/DateFormat;)I
    .locals 0

    .line 1279
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getWeekOfMonth(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method public static getWeekOfMonth(Ljava/util/Date;)I
    .locals 1

    .line 1289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1290
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x4

    .line 1291
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getWeekOfYear(J)I
    .locals 0

    .line 1345
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2Date(J)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getWeekOfYear(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method public static getWeekOfYear(Ljava/lang/String;)I
    .locals 1

    .line 1312
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getWeekOfYear(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method public static getWeekOfYear(Ljava/lang/String;Ljava/text/DateFormat;)I
    .locals 0

    .line 1323
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getWeekOfYear(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method public static getWeekOfYear(Ljava/util/Date;)I
    .locals 1

    .line 1333
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1334
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x3

    .line 1335
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getZodiac(II)Ljava/lang/String;
    .locals 3

    .line 1465
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->ZODIAC:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->ZODIAC_FLAGS:[I

    add-int/lit8 v2, p0, -0x1

    aget v1, v1, v2

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0xa

    rem-int/lit8 v2, p0, 0xc

    :goto_0
    aget-object p0, v0, v2

    return-object p0
.end method

.method public static getZodiac(J)Ljava/lang/String;
    .locals 0

    .line 1454
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2Date(J)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getZodiac(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getZodiac(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1419
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getZodiac(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getZodiac(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 0

    .line 1430
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getZodiac(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getZodiac(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 1440
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1441
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x2

    .line 1442
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    const/4 v1, 0x5

    .line 1443
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1444
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getZodiac(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isLeapYear(I)Z
    .locals 1

    .line 1101
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLeapYear(J)Z
    .locals 0

    .line 1091
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2Date(J)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->isLeapYear(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public static isLeapYear(Ljava/lang/String;)Z
    .locals 1

    .line 1057
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->isLeapYear(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public static isLeapYear(Ljava/lang/String;Ljava/text/DateFormat;)Z
    .locals 0

    .line 1068
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->isLeapYear(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public static isLeapYear(Ljava/util/Date;)Z
    .locals 1

    .line 1078
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1079
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 1080
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 1081
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->isLeapYear(I)Z

    move-result p0

    return p0
.end method

.method public static isToday(J)Z
    .locals 4

    .line 1045
    invoke-static {}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->getWeeOfToday()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isToday(Ljava/lang/String;)Z
    .locals 2

    .line 1014
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->isToday(J)Z

    move-result p0

    return p0
.end method

.method public static isToday(Ljava/lang/String;Ljava/text/DateFormat;)Z
    .locals 0

    .line 1025
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->isToday(J)Z

    move-result p0

    return p0
.end method

.method public static isToday(Ljava/util/Date;)Z
    .locals 2

    .line 1035
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->isToday(J)Z

    move-result p0

    return p0
.end method

.method public static millis2Date(J)Ljava/util/Date;
    .locals 1

    .line 137
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private static millis2FitTimeSpan(JI)Ljava/lang/String;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_4

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x5

    .line 1480
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const-string v3, "\u5929"

    const-string v4, "\u5c0f\u65f6"

    const-string v5, "\u5206\u949f"

    const-string v6, "\u79d2"

    const-string v7, "\u6beb\u79d2"

    .line 1481
    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    cmp-long v5, p0, v0

    if-nez v5, :cond_1

    .line 1482
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    aget-object p1, v3, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1483
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1484
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    :goto_0
    if-ge v4, p2, :cond_3

    .line 1486
    aget v2, v1, v4

    int-to-long v5, v2

    cmp-long v2, p0, v5

    if-ltz v2, :cond_2

    .line 1487
    aget v2, v1, v4

    int-to-long v5, v2

    div-long v5, p0, v5

    .line 1488
    aget v2, v1, v4

    int-to-long v7, v2

    mul-long v7, v7, v5

    sub-long/2addr p0, v7

    .line 1489
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    aget-object v2, v3, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1492
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x5265c00
        0x36ee80
        0xea60
        0x3e8
        0x1
    .end array-data
.end method

.method public static millis2String(J)Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static millis2String(JLjava/text/DateFormat;)Ljava/lang/String;
    .locals 1

    .line 41
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static millis2TimeSpan(JI)J
    .locals 2

    int-to-long v0, p2

    .line 1475
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static string2Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 79
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;
    .locals 0

    .line 91
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static string2Millis(Ljava/lang/String;)J
    .locals 2

    .line 52
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->DEFAULT_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J
    .locals 0

    .line 64
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private static timeSpan2Millis(JI)J
    .locals 2

    int-to-long v0, p2

    mul-long p0, p0, v0

    return-wide p0
.end method
