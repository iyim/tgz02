.class public Lcom/alibaba/ailabs/genie/message/utils/MessageCenterDateUtils;
.super Ljava/lang/Object;
.source "MessageCenterDateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getFormat()Ljava/text/SimpleDateFormat;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTimeDisplay(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 30
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/utils/MessageCenterDateUtils;->getFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    :goto_0
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 39
    :cond_0
    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/genie/message/utils/MessageCenterDateUtils;->getTimeShowString(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeShowString(JLandroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 60
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 61
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xb

    .line 63
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 64
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 65
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    .line 66
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 67
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 68
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    sub-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 70
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 71
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "HH:mm"

    invoke-direct {v5, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 72
    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    .line 79
    div-long/2addr v0, p0

    const-wide/16 p0, 0x3c

    .line 80
    div-long/2addr v0, p0

    .line 81
    div-long p0, v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-lez v4, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget p0, Lcom/alibaba/ailabs/genie/message/R$string;->str_hours_ago:I

    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget p1, Lcom/alibaba/ailabs/genie/message/R$string;->str_mins_ago:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "1"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/alibaba/ailabs/genie/message/R$string;->str_mins_ago:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 89
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "\u6628\u5929"

    goto :goto_0

    .line 91
    :cond_3
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/message/utils/MessageCenterDateUtils;->isSameWeekDates(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 92
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/utils/MessageCenterDateUtils;->getWeekOfDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getWeekOfDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 7

    const-string v0, "\u661f\u671f\u65e5"

    const-string v1, "\u661f\u671f\u4e00"

    const-string v2, "\u661f\u671f\u4e8c"

    const-string v3, "\u661f\u671f\u4e09"

    const-string v4, "\u661f\u671f\u56db"

    const-string v5, "\u661f\u671f\u4e94"

    const-string v6, "\u661f\u671f\u516d"

    .line 134
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 137
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x7

    .line 138
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 139
    aget-object p0, v0, p0

    return-object p0
.end method

.method private static isSameWeekDates(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 7

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 110
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 111
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 112
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez p1, :cond_1

    .line 114
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 115
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const/4 v4, 0x2

    const/16 v5, 0xb

    if-ne p0, p1, :cond_3

    .line 116
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 118
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 119
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0

    :cond_3
    const/4 v6, -0x1

    if-ne v6, p1, :cond_5

    .line 120
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne v5, p1, :cond_5

    .line 121
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 122
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return p0

    :cond_5
    return v2
.end method
