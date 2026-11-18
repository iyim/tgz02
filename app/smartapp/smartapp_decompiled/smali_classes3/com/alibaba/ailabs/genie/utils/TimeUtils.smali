.class public Lcom/alibaba/ailabs/genie/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final Day:J = 0x5265c00L

.field public static final Hour:J = 0x36ee80L

.field public static final Minute:J = 0xea60L

.field public static final Month:J = 0x9a7ec800L

.field public static final Second:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "TimeUtils"

.field public static final Year:J = 0xdc46c32800L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static beforeOrAfterTimeCycleModePeriod(IIII)I
    .locals 7

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xd

    .line 115
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 116
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/16 v4, 0xb

    .line 117
    invoke-virtual {v0, v4, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 118
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 119
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 120
    invoke-virtual {v0, v4, p2}, Ljava/util/Calendar;->set(II)V

    .line 121
    invoke-virtual {v0, p0, p3}, Ljava/util/Calendar;->set(II)V

    .line 122
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    const/4 p2, 0x1

    cmp-long p3, v5, p0

    if-lez p3, :cond_1

    cmp-long p0, v2, v5

    if-gez p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    cmp-long p3, v2, v5

    if-gez p3, :cond_2

    goto :goto_1

    :cond_2
    cmp-long p3, v2, v5

    if-ltz p3, :cond_3

    cmp-long p3, v2, p0

    if-gtz p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    .line 138
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "beforeOrAfterTimeCycleModePeriod return "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimeUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .locals 10

    const-wide/32 v0, 0x36ee80

    .line 24
    div-long v2, p0, v0

    .line 25
    rem-long v0, p0, v0

    const-wide/32 v4, 0xea60

    div-long/2addr v0, v4

    .line 26
    rem-long/2addr p0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr p0, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-lez v9, :cond_0

    const/4 v7, 0x3

    .line 29
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v7, v6

    const-string p0, "%02d:%02d:%02d"

    invoke-static {p0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_0
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v4

    const-string p0, "%02d:%02d"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateByString(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 42
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 44
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getShortTime(J)Ljava/lang/String;
    .locals 3

    .line 53
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->timestampToStr(J)Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->getDateByString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 60
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    div-long/2addr v0, p0

    const-wide/32 p0, 0x1e13380

    cmp-long v2, v0, p0

    if-lez v2, :cond_1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, p0

    long-to-int p0, v0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u5e74\u524d"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/32 p0, 0x15180

    cmp-long v2, v0, p0

    if-lez v2, :cond_2

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, p0

    long-to-int p0, v0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u5929\u524d"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-wide/16 p0, 0xe10

    cmp-long v2, v0, p0

    if-lez v2, :cond_3

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, p0

    long-to-int p0, v0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u5c0f\u65f6\u524d"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-wide/16 p0, 0x3c

    cmp-long v2, v0, p0

    if-lez v2, :cond_4

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, p0

    long-to-int p0, v0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u5206\u524d"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const-wide/16 p0, 0x1

    cmp-long v2, v0, p0

    if-lez v2, :cond_5

    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\u79d2\u524d"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    const-string p0, "1\u79d2\u524d"

    :goto_0
    return-object p0
.end method

.method public static isInTimeCycleModePeriod(IIII)Z
    .locals 6

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0xb

    .line 89
    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 90
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 91
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 92
    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 93
    invoke-virtual {v0, p0, p3}, Ljava/util/Calendar;->set(II)V

    .line 94
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    const/4 p2, 0x1

    const/4 p3, 0x0

    cmp-long v0, v4, p0

    if-lez v0, :cond_0

    cmp-long p0, v1, v4

    if-lez p0, :cond_1

    goto :goto_0

    :cond_0
    cmp-long v0, v1, v4

    if-ltz v0, :cond_1

    cmp-long v0, v1, p0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 105
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isInTimeCycleModePeriod return "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimeUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public static isLastToNextDay(IIII)Z
    .locals 4

    .line 148
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 149
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 150
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 151
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 152
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 153
    invoke-virtual {v0, p0, p3}, Ljava/util/Calendar;->set(II)V

    .line 154
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    cmp-long p2, v2, p0

    if-lez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static timeFormat(II)Ljava/lang/String;
    .locals 5

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    const-string v2, "0"

    const/16 v3, 0xa

    if-lt p0, v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt p1, v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static timestampToStr(J)Ljava/lang/String;
    .locals 1

    .line 78
    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, p0, p1}, Ljava/sql/Timestamp;-><init>(J)V

    const-string p0, "yyyy-MM-dd HH:mm:ss"

    .line 79
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/DateFormatUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    .line 80
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
