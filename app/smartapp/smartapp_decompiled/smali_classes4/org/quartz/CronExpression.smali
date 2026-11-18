.class public final Lorg/quartz/CronExpression;
.super Ljava/lang/Object;
.source "CronExpression.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final ALL_SPEC:Ljava/lang/Integer;

.field protected static final ALL_SPEC_INT:I = 0x63

.field protected static final DAY_OF_MONTH:I = 0x3

.field protected static final DAY_OF_WEEK:I = 0x5

.field protected static final HOUR:I = 0x2

.field public static final MAX_YEAR:I

.field protected static final MINUTE:I = 0x1

.field protected static final MONTH:I = 0x4

.field protected static final NO_SPEC:Ljava/lang/Integer;

.field protected static final NO_SPEC_INT:I = 0x62

.field protected static final SECOND:I = 0x0

.field protected static final YEAR:I = 0x6

.field protected static final dayMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final monthMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2e47e2f0fL


# instance fields
.field private final cronExpression:Ljava/lang/String;

.field protected transient daysOfMonth:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected transient daysOfWeek:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected transient expressionParsed:Z

.field protected transient hours:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected transient lastdayOfMonth:Z

.field protected transient lastdayOfWeek:Z

.field protected transient lastdayOffset:I

.field protected transient minutes:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected transient months:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected transient nearestWeekday:Z

.field protected transient nthdayOfWeek:I

.field protected transient seconds:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeZone:Ljava/util/TimeZone;

.field protected transient years:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x63

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/quartz/CronExpression;->ALL_SPEC:Ljava/lang/Integer;

    const/16 v0, 0x62

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/quartz/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/quartz/CronExpression;->monthMap:Ljava/util/Map;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/quartz/CronExpression;->dayMap:Ljava/util/Map;

    .line 218
    sget-object v0, Lorg/quartz/CronExpression;->monthMap:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "JAN"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lorg/quartz/CronExpression;->monthMap:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FEB"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lorg/quartz/CronExpression;->monthMap:Ljava/util/Map;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "MAR"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lorg/quartz/CronExpression;->monthMap:Ljava/util/Map;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "APR"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lorg/quartz/CronExpression;->monthMap:Ljava/util/Map;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "MAY"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lorg/quartz/CronExpression;->monthMap:Ljava/util/Map;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "JUN"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lorg/quartz/CronExpression;->monthMap:Ljava/util/Map;

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "JUL"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lorg/quartz/CronExpression;->monthMap:Ljava/util/Map;

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "AUG"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lorg/quartz/CronExpression;->monthMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v10, "SEP"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lorg/quartz/CronExpression;->monthMap:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v10, "OCT"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lorg/quartz/CronExpression;->monthMap:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v10, "NOV"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lorg/quartz/CronExpression;->monthMap:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v10, "DEC"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lorg/quartz/CronExpression;->dayMap:Ljava/util/Map;

    const-string v1, "SUN"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lorg/quartz/CronExpression;->dayMap:Ljava/util/Map;

    const-string v1, "MON"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lorg/quartz/CronExpression;->dayMap:Ljava/util/Map;

    const-string v1, "TUE"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lorg/quartz/CronExpression;->dayMap:Ljava/util/Map;

    const-string v1, "WED"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lorg/quartz/CronExpression;->dayMap:Ljava/util/Map;

    const-string v1, "THU"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lorg/quartz/CronExpression;->dayMap:Ljava/util/Map;

    const-string v1, "FRI"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lorg/quartz/CronExpression;->dayMap:Ljava/util/Map;

    const-string v1, "SAT"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    sput v0, Lorg/quartz/CronExpression;->MAX_YEAR:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lorg/quartz/CronExpression;->timeZone:Ljava/util/TimeZone;

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lorg/quartz/CronExpression;->lastdayOfWeek:Z

    .line 251
    iput v0, p0, Lorg/quartz/CronExpression;->nthdayOfWeek:I

    .line 252
    iput-boolean v0, p0, Lorg/quartz/CronExpression;->lastdayOfMonth:Z

    .line 253
    iput-boolean v0, p0, Lorg/quartz/CronExpression;->nearestWeekday:Z

    .line 254
    iput v0, p0, Lorg/quartz/CronExpression;->lastdayOffset:I

    .line 255
    iput-boolean v0, p0, Lorg/quartz/CronExpression;->expressionParsed:Z

    if-eqz p1, :cond_0

    .line 274
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/quartz/CronExpression;->cronExpression:Ljava/lang/String;

    .line 276
    iget-object p1, p0, Lorg/quartz/CronExpression;->cronExpression:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/quartz/CronExpression;->buildExpression(Ljava/lang/String;)V

    return-void

    .line 271
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cronExpression cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/quartz/CronExpression;)V
    .locals 1

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lorg/quartz/CronExpression;->timeZone:Ljava/util/TimeZone;

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lorg/quartz/CronExpression;->lastdayOfWeek:Z

    .line 251
    iput v0, p0, Lorg/quartz/CronExpression;->nthdayOfWeek:I

    .line 252
    iput-boolean v0, p0, Lorg/quartz/CronExpression;->lastdayOfMonth:Z

    .line 253
    iput-boolean v0, p0, Lorg/quartz/CronExpression;->nearestWeekday:Z

    .line 254
    iput v0, p0, Lorg/quartz/CronExpression;->lastdayOffset:I

    .line 255
    iput-boolean v0, p0, Lorg/quartz/CronExpression;->expressionParsed:Z

    .line 292
    invoke-virtual {p1}, Lorg/quartz/CronExpression;->getCronExpression()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/quartz/CronExpression;->cronExpression:Ljava/lang/String;

    .line 294
    :try_start_0
    iget-object v0, p0, Lorg/quartz/CronExpression;->cronExpression:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/quartz/CronExpression;->buildExpression(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    invoke-virtual {p1}, Lorg/quartz/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p1}, Lorg/quartz/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TimeZone;

    invoke-virtual {p0, p1}, Lorg/quartz/CronExpression;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    return-void

    .line 296
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private checkIncrementRange(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v0, 0x3b

    if-le p1, v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 705
    :cond_0
    new-instance p2, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Increment > 60 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_1
    :goto_0
    const/16 v0, 0x17

    if-le p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    goto :goto_1

    .line 707
    :cond_2
    new-instance p2, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Increment > 24 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_3
    :goto_1
    const/16 v0, 0x1f

    if-le p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    goto :goto_2

    .line 709
    :cond_4
    new-instance p2, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Increment > 31 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_5
    :goto_2
    const/4 v0, 0x7

    if-le p1, v0, :cond_7

    const/4 v0, 0x5

    if-eq p2, v0, :cond_6

    goto :goto_3

    .line 711
    :cond_6
    new-instance p2, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Increment > 7 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_7
    :goto_3
    const/16 v0, 0xc

    if-le p1, v0, :cond_9

    const/4 v0, 0x4

    if-eq p2, v0, :cond_8

    goto :goto_4

    .line 713
    :cond_8
    new-instance p2, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Increment > 12 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_9
    :goto_4
    return-void
.end method

.method public static isValidExpression(Ljava/lang/String;)Z
    .locals 1

    .line 417
    :try_start_0
    new-instance v0, Lorg/quartz/CronExpression;

    invoke-direct {v0, p0}, Lorg/quartz/CronExpression;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1647
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1649
    :try_start_0
    iget-object p1, p0, Lorg/quartz/CronExpression;->cronExpression:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/quartz/CronExpression;->buildExpression(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static validateExpression(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 427
    new-instance v0, Lorg/quartz/CronExpression;

    invoke-direct {v0, p0}, Lorg/quartz/CronExpression;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected addToSet(IIII)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p0

    move/from16 v4, p4

    .line 969
    invoke-virtual {v3, v4}, Lorg/quartz/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/16 v8, 0x17

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/16 v13, 0xc

    const/16 v14, 0x1f

    const/4 v15, 0x1

    const/16 v11, 0x63

    const/4 v12, -0x1

    if-eqz v4, :cond_10

    if-ne v4, v15, :cond_0

    goto/16 :goto_3

    :cond_0
    if-ne v4, v6, :cond_4

    if-ltz v0, :cond_1

    if-gt v0, v8, :cond_1

    if-le v1, v8, :cond_2

    :cond_1
    if-ne v0, v11, :cond_3

    :cond_2
    :goto_0
    const/16 v8, 0x3b

    const/4 v13, 0x7

    goto/16 :goto_5

    .line 979
    :cond_3
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Hour values must be between 0 and 23"

    invoke-direct {v0, v1, v12}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    const/16 v8, 0x62

    if-ne v4, v10, :cond_7

    if-lt v0, v15, :cond_5

    if-gt v0, v14, :cond_5

    if-le v1, v14, :cond_2

    :cond_5
    if-eq v0, v11, :cond_2

    if-ne v0, v8, :cond_6

    goto :goto_0

    .line 985
    :cond_6
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Day of month values must be between 1 and 31"

    invoke-direct {v0, v1, v12}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    if-ne v4, v9, :cond_a

    if-lt v0, v15, :cond_8

    if-gt v0, v13, :cond_8

    if-le v1, v13, :cond_2

    :cond_8
    if-ne v0, v11, :cond_9

    goto :goto_0

    .line 990
    :cond_9
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Month values must be between 1 and 12"

    invoke-direct {v0, v1, v12}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_a
    if-ne v4, v7, :cond_e

    if-eqz v0, :cond_b

    const/4 v13, 0x7

    if-gt v0, v13, :cond_c

    if-le v1, v13, :cond_f

    goto :goto_1

    :cond_b
    const/4 v13, 0x7

    :cond_c
    :goto_1
    if-eq v0, v11, :cond_f

    if-ne v0, v8, :cond_d

    goto :goto_2

    .line 996
    :cond_d
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Day-of-Week values must be between 1 and 7"

    invoke-direct {v0, v1, v12}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_e
    const/4 v13, 0x7

    :cond_f
    :goto_2
    const/16 v8, 0x3b

    goto :goto_5

    :cond_10
    :goto_3
    const/4 v13, 0x7

    if-ltz v0, :cond_11

    const/16 v8, 0x3b

    if-gt v0, v8, :cond_12

    if-le v1, v8, :cond_13

    goto :goto_4

    :cond_11
    const/16 v8, 0x3b

    :cond_12
    :goto_4
    if-ne v0, v11, :cond_2d

    :cond_13
    :goto_5
    if-eqz v2, :cond_14

    if-ne v2, v12, :cond_16

    :cond_14
    if-eq v0, v11, :cond_16

    if-eq v0, v12, :cond_15

    .line 1003
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1005
    :cond_15
    sget-object v0, Lorg/quartz/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual {v5, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_6
    return-void

    :cond_16
    if-ne v0, v11, :cond_17

    if-gtz v2, :cond_17

    .line 1016
    sget-object v2, Lorg/quartz/CronExpression;->ALL_SPEC:Ljava/lang/Integer;

    invoke-virtual {v5, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :cond_17
    const/16 v16, 0x0

    if-eqz v4, :cond_24

    if-ne v4, v15, :cond_18

    goto :goto_9

    :cond_18
    if-ne v4, v6, :cond_1a

    if-ne v1, v12, :cond_19

    const/16 v1, 0x17

    :cond_19
    if-eq v0, v12, :cond_26

    if-ne v0, v11, :cond_27

    goto :goto_a

    :cond_1a
    if-ne v4, v10, :cond_1d

    if-ne v1, v12, :cond_1b

    const/16 v1, 0x1f

    :cond_1b
    if-eq v0, v12, :cond_1c

    if-ne v0, v11, :cond_27

    :cond_1c
    :goto_7
    const/4 v0, 0x1

    goto :goto_b

    :cond_1d
    if-ne v4, v9, :cond_1f

    if-ne v1, v12, :cond_1e

    const/16 v1, 0xc

    :cond_1e
    if-eq v0, v12, :cond_1c

    if-ne v0, v11, :cond_27

    :goto_8
    goto :goto_7

    :cond_1f
    if-ne v4, v7, :cond_21

    if-ne v1, v12, :cond_20

    const/4 v1, 0x7

    :cond_20
    if-eq v0, v12, :cond_1c

    if-ne v0, v11, :cond_27

    goto :goto_8

    :cond_21
    const/4 v6, 0x6

    if-ne v4, v6, :cond_27

    if-ne v1, v12, :cond_22

    .line 1056
    sget v1, Lorg/quartz/CronExpression;->MAX_YEAR:I

    :cond_22
    if-eq v0, v12, :cond_23

    if-ne v0, v11, :cond_27

    :cond_23
    const/16 v0, 0x7b2

    goto :goto_b

    :cond_24
    :goto_9
    if-ne v1, v12, :cond_25

    const/16 v1, 0x3b

    :cond_25
    if-eq v0, v12, :cond_26

    if-ne v0, v11, :cond_27

    :cond_26
    :goto_a
    const/4 v0, 0x0

    :cond_27
    :goto_b
    if-ge v1, v0, :cond_28

    const/16 v6, 0x3c

    packed-switch v4, :pswitch_data_0

    .line 1076
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected type encountered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1075
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start year must be less than stop year"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v6, 0x7

    goto :goto_c

    :pswitch_2
    const/16 v6, 0xc

    goto :goto_c

    :pswitch_3
    const/16 v6, 0x1f

    goto :goto_c

    :pswitch_4
    const/16 v6, 0x18

    :goto_c
    :pswitch_5
    add-int/2addr v1, v6

    goto :goto_d

    :cond_28
    const/4 v6, -0x1

    :goto_d
    if-gt v0, v1, :cond_2c

    if-ne v6, v12, :cond_29

    .line 1084
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1087
    :cond_29
    rem-int v8, v0, v6

    if-nez v8, :cond_2b

    if-eq v4, v9, :cond_2a

    if-eq v4, v7, :cond_2a

    if-ne v4, v10, :cond_2b

    :cond_2a
    move v8, v6

    .line 1094
    :cond_2b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_e
    add-int/2addr v0, v2

    goto :goto_d

    :cond_2c
    return-void

    .line 973
    :cond_2d
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Minute and Second values must be between 0 and 59"

    invoke-direct {v0, v1, v12}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected buildExpression(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 438
    iput-boolean v0, p0, Lorg/quartz/CronExpression;->expressionParsed:Z

    const/4 v1, 0x0

    .line 442
    :try_start_0
    iget-object v2, p0, Lorg/quartz/CronExpression;->seconds:Ljava/util/TreeSet;

    if-nez v2, :cond_0

    .line 443
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lorg/quartz/CronExpression;->seconds:Ljava/util/TreeSet;

    .line 445
    :cond_0
    iget-object v2, p0, Lorg/quartz/CronExpression;->minutes:Ljava/util/TreeSet;

    if-nez v2, :cond_1

    .line 446
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lorg/quartz/CronExpression;->minutes:Ljava/util/TreeSet;

    .line 448
    :cond_1
    iget-object v2, p0, Lorg/quartz/CronExpression;->hours:Ljava/util/TreeSet;

    if-nez v2, :cond_2

    .line 449
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lorg/quartz/CronExpression;->hours:Ljava/util/TreeSet;

    .line 451
    :cond_2
    iget-object v2, p0, Lorg/quartz/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    if-nez v2, :cond_3

    .line 452
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lorg/quartz/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    .line 454
    :cond_3
    iget-object v2, p0, Lorg/quartz/CronExpression;->months:Ljava/util/TreeSet;

    if-nez v2, :cond_4

    .line 455
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lorg/quartz/CronExpression;->months:Ljava/util/TreeSet;

    .line 457
    :cond_4
    iget-object v2, p0, Lorg/quartz/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    if-nez v2, :cond_5

    .line 458
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lorg/quartz/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    .line 460
    :cond_5
    iget-object v2, p0, Lorg/quartz/CronExpression;->years:Ljava/util/TreeSet;

    if-nez v2, :cond_6

    .line 461
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lorg/quartz/CronExpression;->years:Ljava/util/TreeSet;

    .line 466
    :cond_6
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, " \t"

    invoke-direct {v2, p1, v3, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    .line 469
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-eqz v4, :cond_e

    if-gt v3, v6, :cond_e

    .line 470
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x4c

    const-string v8, ","

    const/4 v9, -0x1

    if-ne v3, v5, :cond_8

    .line 473
    :try_start_1
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v9, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v0, :cond_8

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    .line 474
    :cond_7
    new-instance p1, Ljava/text/ParseException;

    const-string v0, "Support for specifying \'L\' and \'LW\' with other days of the month is not implemented"

    invoke-direct {p1, v0, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_8
    :goto_1
    if-ne v3, v7, :cond_a

    .line 477
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v9, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v0, :cond_a

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_2

    .line 478
    :cond_9
    new-instance p1, Ljava/text/ParseException;

    const-string v0, "Support for specifying \'L\' with other days of the week is not implemented"

    invoke-direct {p1, v0, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_a
    :goto_2
    if-ne v3, v7, :cond_c

    const/16 v5, 0x23

    .line 480
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v9, :cond_c

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ne v5, v9, :cond_b

    goto :goto_3

    .line 481
    :cond_b
    new-instance p1, Ljava/text/ParseException;

    const-string v0, "Support for specifying multiple \"nth\" days is not implemented."

    invoke-direct {p1, v0, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 484
    :cond_c
    :goto_3
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v4, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :goto_4
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 486
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 487
    invoke-virtual {p0, v1, v4, v3}, Lorg/quartz/CronExpression;->storeExpressionVals(ILjava/lang/String;I)I

    goto :goto_4

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_e
    if-le v3, v7, :cond_14

    if-gt v3, v6, :cond_f

    const-string p1, "*"

    .line 499
    invoke-virtual {p0, v1, p1, v6}, Lorg/quartz/CronExpression;->storeExpressionVals(ILjava/lang/String;I)I

    .line 502
    :cond_f
    invoke-virtual {p0, v7}, Lorg/quartz/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object p1

    .line 503
    invoke-virtual {p0, v5}, Lorg/quartz/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object v2

    .line 506
    sget-object v3, Lorg/quartz/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, 0x1

    goto :goto_5

    :cond_10
    const/4 v2, 0x0

    .line 507
    :goto_5
    sget-object v3, Lorg/quartz/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual {p1, v3}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz v2, :cond_11

    if-eqz p1, :cond_12

    :cond_11
    if-eqz p1, :cond_13

    if-nez v2, :cond_13

    :cond_12
    return-void

    .line 511
    :cond_13
    new-instance p1, Ljava/text/ParseException;

    const-string v0, "Support for specifying both a day-of-week AND a day-of-month parameter is not implemented."

    invoke-direct {p1, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 494
    :cond_14
    new-instance v0, Ljava/text/ParseException;

    const-string v2, "Unexpected end of expression."

    .line 495
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v0, v2, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 518
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal cron expression format ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_1
    move-exception p1

    .line 516
    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method protected checkNext(ILjava/lang/String;II)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 723
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lt p1, v0, :cond_0

    .line 724
    invoke-virtual {p0, p3, v1, v1, p4}, Lorg/quartz/CronExpression;->addToSet(IIII)V

    return p1

    .line 728
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x4c

    const-string v3, ")"

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ne v0, v2, :cond_3

    if-ne p4, v4, :cond_2

    if-lt p3, v5, :cond_1

    const/4 p2, 0x7

    if-gt p3, p2, :cond_1

    .line 734
    iput-boolean v5, p0, Lorg/quartz/CronExpression;->lastdayOfWeek:Z

    .line 738
    invoke-virtual {p0, p4}, Lorg/quartz/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object p2

    .line 739
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, v5

    return p1

    .line 733
    :cond_1
    new-instance p1, Ljava/text/ParseException;

    const-string p2, "Day-of-Week values must be between 1 and 7"

    invoke-direct {p1, p2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 736
    :cond_2
    new-instance p2, Ljava/text/ParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\'L\' option is not valid here. (pos="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_3
    const/16 v2, 0x57

    if-ne v0, v2, :cond_6

    const/4 p2, 0x3

    if-ne p4, p2, :cond_5

    .line 746
    iput-boolean v5, p0, Lorg/quartz/CronExpression;->nearestWeekday:Z

    const/16 p2, 0x1f

    if-gt p3, p2, :cond_4

    .line 752
    invoke-virtual {p0, p4}, Lorg/quartz/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object p2

    .line 753
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, v5

    return p1

    .line 751
    :cond_4
    new-instance p2, Ljava/text/ParseException;

    const-string p3, "The \'W\' option does not make sense with values larger than 31 (max number of days in a month)"

    invoke-direct {p2, p3, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 748
    :cond_5
    new-instance p2, Ljava/text/ParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\'W\' option is not valid here. (pos="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_6
    const/16 v2, 0x23

    if-ne v0, v2, :cond_9

    if-ne p4, v4, :cond_8

    add-int/2addr p1, v5

    .line 764
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/quartz/CronExpression;->nthdayOfWeek:I

    .line 765
    iget p2, p0, Lorg/quartz/CronExpression;->nthdayOfWeek:I

    if-lt p2, v5, :cond_7

    iget p2, p0, Lorg/quartz/CronExpression;->nthdayOfWeek:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gt p2, v4, :cond_7

    .line 774
    invoke-virtual {p0, p4}, Lorg/quartz/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object p2

    .line 775
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, v5

    return p1

    .line 766
    :cond_7
    :try_start_1
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 769
    :catch_0
    new-instance p2, Ljava/text/ParseException;

    const-string p3, "A numeric value between 1 and 5 must follow the \'#\' option"

    invoke-direct {p2, p3, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 760
    :cond_8
    new-instance p2, Ljava/text/ParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\'#\' option is not valid here. (pos="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_9
    const/16 v2, 0x2d

    const/16 v3, 0x2f

    const/16 v4, 0x39

    const/16 v6, 0x30

    if-ne v0, v2, :cond_f

    add-int/2addr p1, v5

    .line 782
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 783
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr p1, v5

    .line 786
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p1, v1, :cond_a

    .line 787
    invoke-virtual {p0, p3, v0, v5, p4}, Lorg/quartz/CronExpression;->addToSet(IIII)V

    return p1

    .line 790
    :cond_a
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v6, :cond_b

    if-gt v1, v4, :cond_b

    .line 792
    invoke-virtual {p0, v0, p2, p1}, Lorg/quartz/CronExpression;->getValue(ILjava/lang/String;I)Lorg/quartz/ValueSet;

    move-result-object p1

    .line 793
    iget v0, p1, Lorg/quartz/ValueSet;->value:I

    .line 794
    iget p1, p1, Lorg/quartz/ValueSet;->pos:I

    .line 796
    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_e

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_e

    add-int/2addr p1, v5

    .line 798
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 799
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr p1, v5

    .line 801
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_c

    .line 802
    invoke-virtual {p0, p3, v0, v1, p4}, Lorg/quartz/CronExpression;->addToSet(IIII)V

    return p1

    .line 805
    :cond_c
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_d

    if-gt v2, v4, :cond_d

    .line 807
    invoke-virtual {p0, v1, p2, p1}, Lorg/quartz/CronExpression;->getValue(ILjava/lang/String;I)Lorg/quartz/ValueSet;

    move-result-object p1

    .line 808
    iget p2, p1, Lorg/quartz/ValueSet;->value:I

    .line 809
    invoke-virtual {p0, p3, v0, p2, p4}, Lorg/quartz/CronExpression;->addToSet(IIII)V

    .line 810
    iget p1, p1, Lorg/quartz/ValueSet;->pos:I

    return p1

    .line 813
    :cond_d
    invoke-virtual {p0, p3, v0, v1, p4}, Lorg/quartz/CronExpression;->addToSet(IIII)V

    return p1

    .line 817
    :cond_e
    invoke-virtual {p0, p3, v0, v5, p4}, Lorg/quartz/CronExpression;->addToSet(IIII)V

    return p1

    :cond_f
    if-ne v0, v3, :cond_13

    add-int/lit8 v0, p1, 0x1

    .line 823
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_12

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_12

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_12

    .line 828
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 829
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/2addr v0, v5

    .line 831
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_10

    .line 832
    invoke-direct {p0, p1, p4, v0}, Lorg/quartz/CronExpression;->checkIncrementRange(III)V

    .line 833
    invoke-virtual {p0, p3, v1, p1, p4}, Lorg/quartz/CronExpression;->addToSet(IIII)V

    return v0

    .line 836
    :cond_10
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_11

    if-gt v2, v4, :cond_11

    .line 838
    invoke-virtual {p0, p1, p2, v0}, Lorg/quartz/CronExpression;->getValue(ILjava/lang/String;I)Lorg/quartz/ValueSet;

    move-result-object p1

    .line 839
    iget p2, p1, Lorg/quartz/ValueSet;->value:I

    .line 840
    invoke-direct {p0, p2, p4, v0}, Lorg/quartz/CronExpression;->checkIncrementRange(III)V

    .line 841
    invoke-virtual {p0, p3, v1, p2, p4}, Lorg/quartz/CronExpression;->addToSet(IIII)V

    .line 842
    iget p1, p1, Lorg/quartz/ValueSet;->pos:I

    return p1

    .line 845
    :cond_11
    new-instance p1, Ljava/text/ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected character \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, "\' after \'/\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 824
    :cond_12
    new-instance p2, Ljava/text/ParseException;

    const-string p3, "\'/\' must be followed by an integer."

    invoke-direct {p2, p3, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_13
    const/4 p2, 0x0

    .line 849
    invoke-virtual {p0, p3, v1, p2, p4}, Lorg/quartz/CronExpression;->addToSet(IIII)V

    add-int/2addr p1, v5

    return p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1657
    new-instance v0, Lorg/quartz/CronExpression;

    invoke-direct {v0, p0}, Lorg/quartz/CronExpression;-><init>(Lorg/quartz/CronExpression;)V

    return-object v0
.end method

.method protected findNextWhiteSpace(ILjava/lang/String;)I
    .locals 2

    .line 959
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public getCronExpression()Ljava/lang/String;
    .locals 1

    .line 855
    iget-object v0, p0, Lorg/quartz/CronExpression;->cronExpression:Ljava/lang/String;

    return-object v0
.end method

.method protected getDayOfWeekNumber(Ljava/lang/String;)I
    .locals 1

    .line 1155
    sget-object v0, Lorg/quartz/CronExpression;->dayMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1161
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected getExpressionSetSummary(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 926
    sget-object v0, Lorg/quartz/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "?"

    return-object p1

    .line 929
    :cond_0
    sget-object v0, Lorg/quartz/CronExpression;->ALL_SPEC:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "*"

    return-object p1

    .line 933
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 935
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    .line 937
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 938
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 939
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_2

    const-string v1, ","

    .line 941
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    .line 947
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 900
    sget-object v0, Lorg/quartz/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "?"

    return-object p1

    .line 903
    :cond_0
    sget-object v0, Lorg/quartz/CronExpression;->ALL_SPEC:Ljava/lang/Integer;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "*"

    return-object p1

    .line 907
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 909
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    .line 911
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 912
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 913
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_2

    const-string v1, ","

    .line 915
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    .line 921
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExpressionSummary()Ljava/lang/String;
    .locals 3

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seconds: "

    .line 861
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    iget-object v1, p0, Lorg/quartz/CronExpression;->seconds:Ljava/util/TreeSet;

    invoke-virtual {p0, v1}, Lorg/quartz/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 863
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "minutes: "

    .line 864
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    iget-object v2, p0, Lorg/quartz/CronExpression;->minutes:Ljava/util/TreeSet;

    invoke-virtual {p0, v2}, Lorg/quartz/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "hours: "

    .line 867
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    iget-object v2, p0, Lorg/quartz/CronExpression;->hours:Ljava/util/TreeSet;

    invoke-virtual {p0, v2}, Lorg/quartz/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "daysOfMonth: "

    .line 870
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    iget-object v2, p0, Lorg/quartz/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    invoke-virtual {p0, v2}, Lorg/quartz/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "months: "

    .line 873
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    iget-object v2, p0, Lorg/quartz/CronExpression;->months:Ljava/util/TreeSet;

    invoke-virtual {p0, v2}, Lorg/quartz/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "daysOfWeek: "

    .line 876
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    iget-object v2, p0, Lorg/quartz/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    invoke-virtual {p0, v2}, Lorg/quartz/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lastdayOfWeek: "

    .line 879
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    iget-boolean v2, p0, Lorg/quartz/CronExpression;->lastdayOfWeek:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 881
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "nearestWeekday: "

    .line 882
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    iget-boolean v2, p0, Lorg/quartz/CronExpression;->nearestWeekday:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NthDayOfWeek: "

    .line 885
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    iget v2, p0, Lorg/quartz/CronExpression;->nthdayOfWeek:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 887
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lastdayOfMonth: "

    .line 888
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    iget-boolean v2, p0, Lorg/quartz/CronExpression;->lastdayOfMonth:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "years: "

    .line 891
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    iget-object v2, p0, Lorg/quartz/CronExpression;->years:Ljava/util/TreeSet;

    invoke-virtual {p0, v2}, Lorg/quartz/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFinalFireTime()Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLastDayOfMonth(II)I
    .locals 2

    const/16 v0, 0x1e

    const/16 v1, 0x1f

    packed-switch p1, :pswitch_data_0

    .line 1638
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal month number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    return v1

    :pswitch_1
    return v0

    :pswitch_2
    return v1

    :pswitch_3
    return v0

    :pswitch_4
    return v1

    :pswitch_5
    return v0

    :pswitch_6
    return v1

    :pswitch_7
    return v0

    :pswitch_8
    return v1

    .line 1616
    :pswitch_9
    invoke-virtual {p0, p2}, Lorg/quartz/CronExpression;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1d

    goto :goto_0

    :cond_0
    const/16 p1, 0x1c

    :goto_0
    return p1

    :pswitch_a
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getMonthNumber(Ljava/lang/String;)I
    .locals 1

    .line 1145
    sget-object v0, Lorg/quartz/CronExpression;->monthMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1151
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getNextInvalidTimeAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 7

    .line 349
    invoke-virtual {p0}, Lorg/quartz/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 350
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xe

    const/4 v1, 0x0

    .line 351
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 352
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    move-wide v2, v0

    :goto_0
    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    .line 362
    invoke-virtual {p0, p1}, Lorg/quartz/CronExpression;->getTimeAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 366
    :cond_0
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    move-object p1, v2

    :cond_1
    move-wide v2, v3

    goto :goto_0

    .line 373
    :cond_2
    :goto_1
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public getNextValidTimeAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 334
    invoke-virtual {p0, p1}, Lorg/quartz/CronExpression;->getTimeAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method protected getNumericValue(Ljava/lang/String;I)I
    .locals 1

    .line 1139
    invoke-virtual {p0, p2, p1}, Lorg/quartz/CronExpression;->findNextWhiteSpace(ILjava/lang/String;)I

    move-result v0

    .line 1140
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1141
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method getSet(I)Ljava/util/TreeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 1114
    :pswitch_0
    iget-object p1, p0, Lorg/quartz/CronExpression;->years:Ljava/util/TreeSet;

    return-object p1

    .line 1112
    :pswitch_1
    iget-object p1, p0, Lorg/quartz/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    return-object p1

    .line 1110
    :pswitch_2
    iget-object p1, p0, Lorg/quartz/CronExpression;->months:Ljava/util/TreeSet;

    return-object p1

    .line 1108
    :pswitch_3
    iget-object p1, p0, Lorg/quartz/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    return-object p1

    .line 1106
    :pswitch_4
    iget-object p1, p0, Lorg/quartz/CronExpression;->hours:Ljava/util/TreeSet;

    return-object p1

    .line 1104
    :pswitch_5
    iget-object p1, p0, Lorg/quartz/CronExpression;->minutes:Ljava/util/TreeSet;

    return-object p1

    .line 1102
    :pswitch_6
    iget-object p1, p0, Lorg/quartz/CronExpression;->seconds:Ljava/util/TreeSet;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTimeAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 17

    move-object/from16 v0, p0

    .line 1173
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Lorg/quartz/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1177
    new-instance v2, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1179
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x0

    const/16 v4, 0xe

    .line 1180
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_32

    .line 1187
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xbb7

    const/4 v8, 0x0

    if-le v6, v7, :cond_0

    return-object v8

    :cond_0
    const/16 v6, 0xd

    .line 1194
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v9, 0xc

    .line 1195
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 1198
    iget-object v11, v0, Lorg/quartz/CronExpression;->seconds:Ljava/util/TreeSet;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1199
    invoke-interface {v7}, Ljava/util/SortedSet;->size()I

    move-result v11

    if-eqz v11, :cond_1

    .line 1200
    invoke-interface {v7}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    .line 1202
    :cond_1
    iget-object v7, v0, Lorg/quartz/CronExpression;->seconds:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v10, v4

    .line 1204
    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1206
    :goto_1
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 1208
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v11, 0xb

    .line 1209
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 1213
    iget-object v13, v0, Lorg/quartz/CronExpression;->minutes:Ljava/util/TreeSet;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 1214
    invoke-interface {v13}, Ljava/util/SortedSet;->size()I

    move-result v15

    if-eqz v15, :cond_2

    .line 1216
    invoke-interface {v13}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_2

    .line 1218
    :cond_2
    iget-object v10, v0, Lorg/quartz/CronExpression;->minutes:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v12, v12, 0x1

    const/4 v10, -0x1

    :goto_2
    if-eq v13, v10, :cond_3

    .line 1222
    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 1223
    invoke-virtual {v1, v9, v13}, Ljava/util/Calendar;->set(II)V

    .line 1224
    invoke-virtual {v0, v1, v12}, Lorg/quartz/CronExpression;->setCalendarHour(Ljava/util/Calendar;I)V

    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_18

    .line 1227
    :cond_3
    invoke-virtual {v1, v9, v13}, Ljava/util/Calendar;->set(II)V

    .line 1229
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v12, 0x5

    .line 1230
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 1234
    iget-object v14, v0, Lorg/quartz/CronExpression;->hours:Ljava/util/TreeSet;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1235
    invoke-interface {v8}, Ljava/util/SortedSet;->size()I

    move-result v14

    if-eqz v14, :cond_4

    .line 1237
    invoke-interface {v8}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_4

    .line 1239
    :cond_4
    iget-object v8, v0, Lorg/quartz/CronExpression;->hours:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v15, v15, 0x1

    const/4 v10, -0x1

    :goto_4
    if-eq v8, v10, :cond_5

    .line 1243
    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 1244
    invoke-virtual {v1, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 1245
    invoke-virtual {v1, v12, v15}, Ljava/util/Calendar;->set(II)V

    .line 1246
    invoke-virtual {v0, v1, v8}, Lorg/quartz/CronExpression;->setCalendarHour(Ljava/util/Calendar;I)V

    goto :goto_3

    .line 1249
    :cond_5
    invoke-virtual {v1, v11, v8}, Ljava/util/Calendar;->set(II)V

    .line 1251
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/4 v10, 0x2

    .line 1252
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/2addr v15, v4

    .line 1259
    iget-object v10, v0, Lorg/quartz/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    sget-object v12, Lorg/quartz/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual {v10, v12}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v4

    .line 1260
    iget-object v12, v0, Lorg/quartz/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    sget-object v11, Lorg/quartz/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual {v12, v11}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v4

    const/4 v12, 0x7

    if-eqz v10, :cond_18

    if-nez v11, :cond_18

    .line 1262
    iget-object v10, v0, Lorg/quartz/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v10

    .line 1263
    iget-boolean v11, v0, Lorg/quartz/CronExpression;->lastdayOfMonth:Z

    if-eqz v11, :cond_e

    .line 1264
    iget-boolean v10, v0, Lorg/quartz/CronExpression;->nearestWeekday:Z

    if-nez v10, :cond_8

    .line 1266
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v15, v7}, Lorg/quartz/CronExpression;->getLastDayOfMonth(II)I

    move-result v7

    .line 1267
    iget v8, v0, Lorg/quartz/CronExpression;->lastdayOffset:I

    sub-int/2addr v7, v8

    if-le v14, v7, :cond_7

    add-int/lit8 v7, v15, 0x1

    if-le v7, v9, :cond_6

    const/16 v15, 0xd05

    .line 1273
    invoke-virtual {v1, v4, v4}, Ljava/util/Calendar;->add(II)V

    const/16 v7, 0xd05

    const/4 v15, 0x1

    goto :goto_5

    :cond_6
    move/from16 v16, v15

    move v15, v7

    move/from16 v7, v16

    :goto_5
    move v3, v14

    move v6, v15

    const/4 v14, 0x1

    move v15, v7

    goto/16 :goto_d

    :cond_7
    move v3, v14

    move v6, v15

    move v14, v7

    goto/16 :goto_d

    .line 1279
    :cond_8
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v0, v15, v10}, Lorg/quartz/CronExpression;->getLastDayOfMonth(II)I

    move-result v10

    .line 1280
    iget v11, v0, Lorg/quartz/CronExpression;->lastdayOffset:I

    sub-int/2addr v10, v11

    .line 1282
    invoke-virtual/range {p0 .. p0}, Lorg/quartz/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 1283
    invoke-virtual {v11, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 1284
    invoke-virtual {v11, v9, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xb

    .line 1285
    invoke-virtual {v11, v9, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v9, 0x5

    .line 1286
    invoke-virtual {v11, v9, v10}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v9, v15, -0x1

    const/4 v3, 0x2

    .line 1287
    invoke-virtual {v11, v3, v9}, Ljava/util/Calendar;->set(II)V

    .line 1288
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v11, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 1290
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v15, v3}, Lorg/quartz/CronExpression;->getLastDayOfMonth(II)I

    move-result v3

    .line 1291
    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v12, :cond_9

    if-ne v10, v4, :cond_9

    add-int/lit8 v10, v10, 0x2

    goto :goto_6

    :cond_9
    if-ne v6, v12, :cond_b

    add-int/lit8 v10, v10, -0x1

    :cond_a
    :goto_6
    const/16 v3, 0xd

    goto :goto_7

    :cond_b
    if-ne v6, v4, :cond_c

    if-ne v10, v3, :cond_c

    add-int/lit8 v10, v10, -0x2

    goto :goto_6

    :cond_c
    if-ne v6, v4, :cond_a

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 1303
    :goto_7
    invoke-virtual {v11, v3, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 1304
    invoke-virtual {v11, v3, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xb

    .line 1305
    invoke-virtual {v11, v3, v8}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 1306
    invoke-virtual {v11, v3, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x2

    .line 1307
    invoke-virtual {v11, v3, v9}, Ljava/util/Calendar;->set(II)V

    .line 1308
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 1309
    invoke-virtual {v3, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_d

    add-int/lit8 v3, v15, 0x1

    const/4 v10, 0x1

    goto :goto_8

    :cond_d
    move v3, v15

    :goto_8
    move v6, v3

    move v3, v14

    move v14, v10

    goto/16 :goto_d

    .line 1314
    :cond_e
    iget-boolean v3, v0, Lorg/quartz/CronExpression;->nearestWeekday:Z

    if-eqz v3, :cond_13

    .line 1316
    iget-object v3, v0, Lorg/quartz/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1318
    invoke-virtual/range {p0 .. p0}, Lorg/quartz/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    const/16 v9, 0xd

    const/4 v10, 0x0

    .line 1319
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xc

    .line 1320
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xb

    .line 1321
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v9, 0x5

    .line 1322
    invoke-virtual {v6, v9, v3}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v9, v15, -0x1

    const/4 v10, 0x2

    .line 1323
    invoke-virtual {v6, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 1324
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v6, v4, v10}, Ljava/util/Calendar;->set(II)V

    .line 1326
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v0, v15, v10}, Lorg/quartz/CronExpression;->getLastDayOfMonth(II)I

    move-result v10

    .line 1327
    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v11, v12, :cond_f

    if-ne v3, v4, :cond_f

    add-int/lit8 v3, v3, 0x2

    goto :goto_9

    :cond_f
    if-ne v11, v12, :cond_11

    add-int/lit8 v3, v3, -0x1

    :cond_10
    :goto_9
    const/16 v10, 0xd

    goto :goto_a

    :cond_11
    if-ne v11, v4, :cond_12

    if-ne v3, v10, :cond_12

    add-int/lit8 v3, v3, -0x2

    goto :goto_9

    :cond_12
    if-ne v11, v4, :cond_10

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1340
    :goto_a
    invoke-virtual {v6, v10, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    .line 1341
    invoke-virtual {v6, v7, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xb

    .line 1342
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    const/4 v7, 0x5

    .line 1343
    invoke-virtual {v6, v7, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v7, 0x2

    .line 1344
    invoke-virtual {v6, v7, v9}, Ljava/util/Calendar;->set(II)V

    .line 1345
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1346
    invoke-virtual {v6, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1347
    iget-object v3, v0, Lorg/quartz/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_b

    :cond_13
    if-eqz v10, :cond_15

    .line 1350
    invoke-interface {v10}, Ljava/util/SortedSet;->size()I

    move-result v3

    if-eqz v3, :cond_15

    .line 1352
    invoke-interface {v10}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1354
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v15, v6}, Lorg/quartz/CronExpression;->getLastDayOfMonth(II)I

    move-result v6

    if-le v3, v6, :cond_14

    .line 1356
    iget-object v3, v0, Lorg/quartz/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_b
    add-int/lit8 v6, v15, 0x1

    goto :goto_c

    :cond_14
    move v6, v15

    :goto_c
    move/from16 v16, v14

    move v14, v3

    move/from16 v3, v16

    goto :goto_d

    .line 1360
    :cond_15
    iget-object v3, v0, Lorg/quartz/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v6, v15, 0x1

    move v14, v3

    const/4 v3, -0x1

    :goto_d
    if-ne v14, v3, :cond_17

    if-eq v6, v15, :cond_16

    goto :goto_f

    :cond_16
    :goto_e
    const/4 v11, 0x5

    const/4 v12, 0x2

    goto/16 :goto_16

    :cond_17
    :goto_f
    const/16 v3, 0xd

    const/4 v7, 0x0

    .line 1365
    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 1366
    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xb

    .line 1367
    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 1368
    invoke-virtual {v1, v3, v14}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v6, v6, -0x1

    const/4 v3, 0x2

    .line 1369
    invoke-virtual {v1, v3, v6}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_3

    :cond_18
    if-eqz v11, :cond_31

    if-nez v10, :cond_31

    .line 1375
    iget-boolean v3, v0, Lorg/quartz/CronExpression;->lastdayOfWeek:Z

    if-eqz v3, :cond_1e

    .line 1377
    iget-object v3, v0, Lorg/quartz/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1379
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ge v6, v3, :cond_19

    sub-int v7, v3, v6

    goto :goto_10

    :cond_19
    const/4 v7, 0x0

    :goto_10
    if-le v6, v3, :cond_1a

    sub-int/2addr v12, v6

    add-int v7, v3, v12

    .line 1388
    :cond_1a
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v15, v3}, Lorg/quartz/CronExpression;->getLastDayOfMonth(II)I

    move-result v3

    add-int v6, v14, v7

    if-le v6, v3, :cond_1b

    const/16 v6, 0xd

    const/4 v8, 0x0

    .line 1392
    invoke-virtual {v1, v6, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 1393
    invoke-virtual {v1, v3, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xb

    .line 1394
    invoke-virtual {v1, v3, v8}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 1395
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x2

    .line 1396
    invoke-virtual {v1, v3, v15}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_3

    :cond_1b
    :goto_11
    add-int v6, v14, v7

    add-int/lit8 v8, v6, 0x7

    if-gt v8, v3, :cond_1c

    add-int/lit8 v7, v7, 0x7

    goto :goto_11

    :cond_1c
    if-lez v7, :cond_1d

    const/16 v3, 0xd

    const/4 v7, 0x0

    .line 1409
    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 1410
    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xb

    .line 1411
    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 1412
    invoke-virtual {v1, v3, v6}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v15, v15, -0x1

    const/4 v3, 0x2

    .line 1413
    invoke-virtual {v1, v3, v15}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_3

    :cond_1d
    move v14, v6

    goto/16 :goto_e

    .line 1418
    :cond_1e
    iget v3, v0, Lorg/quartz/CronExpression;->nthdayOfWeek:I

    if-eqz v3, :cond_26

    .line 1420
    iget-object v3, v0, Lorg/quartz/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1422
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ge v6, v3, :cond_1f

    sub-int/2addr v3, v6

    goto :goto_12

    :cond_1f
    if-le v6, v3, :cond_20

    rsub-int/lit8 v6, v6, 0x7

    add-int/2addr v3, v6

    goto :goto_12

    :cond_20
    const/4 v3, 0x0

    :goto_12
    if-lez v3, :cond_21

    const/4 v6, 0x1

    goto :goto_13

    :cond_21
    const/4 v6, 0x0

    :goto_13
    add-int/2addr v14, v3

    .line 1436
    div-int/lit8 v3, v14, 0x7

    .line 1437
    rem-int/lit8 v7, v14, 0x7

    if-lez v7, :cond_22

    add-int/lit8 v3, v3, 0x1

    .line 1441
    :cond_22
    iget v7, v0, Lorg/quartz/CronExpression;->nthdayOfWeek:I

    sub-int/2addr v7, v3

    mul-int/lit8 v7, v7, 0x7

    add-int/2addr v14, v7

    if-ltz v7, :cond_25

    .line 1445
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1444
    invoke-virtual {v0, v15, v3}, Lorg/quartz/CronExpression;->getLastDayOfMonth(II)I

    move-result v3

    if-le v14, v3, :cond_23

    goto :goto_14

    :cond_23
    if-gtz v7, :cond_24

    if-eqz v6, :cond_16

    :cond_24
    const/16 v3, 0xd

    const/4 v6, 0x0

    .line 1454
    invoke-virtual {v1, v3, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    .line 1455
    invoke-virtual {v1, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xb

    .line 1456
    invoke-virtual {v1, v8, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v9, 0x5

    .line 1457
    invoke-virtual {v1, v9, v14}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v15, v15, -0x1

    const/4 v10, 0x2

    .line 1458
    invoke-virtual {v1, v10, v15}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_3

    :cond_25
    :goto_14
    const/16 v3, 0xd

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/16 v8, 0xb

    const/4 v9, 0x5

    const/4 v10, 0x2

    .line 1446
    invoke-virtual {v1, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 1447
    invoke-virtual {v1, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 1448
    invoke-virtual {v1, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 1449
    invoke-virtual {v1, v9, v4}, Ljava/util/Calendar;->set(II)V

    .line 1450
    invoke-virtual {v1, v10, v15}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_3

    .line 1463
    :cond_26
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1464
    iget-object v6, v0, Lorg/quartz/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    invoke-virtual {v6}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1466
    iget-object v7, v0, Lorg/quartz/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v7

    if-eqz v7, :cond_27

    .line 1467
    invoke-interface {v7}, Ljava/util/SortedSet;->size()I

    move-result v8

    if-lez v8, :cond_27

    .line 1468
    invoke-interface {v7}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_27
    if-ge v3, v6, :cond_28

    sub-int v7, v6, v3

    goto :goto_15

    :cond_28
    const/4 v7, 0x0

    :goto_15
    if-le v3, v6, :cond_29

    sub-int/2addr v12, v3

    add-int v7, v6, v12

    .line 1479
    :cond_29
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v15, v3}, Lorg/quartz/CronExpression;->getLastDayOfMonth(II)I

    move-result v3

    add-int v6, v14, v7

    if-le v6, v3, :cond_2a

    const/16 v3, 0xd

    const/4 v8, 0x0

    .line 1483
    invoke-virtual {v1, v3, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xc

    .line 1484
    invoke-virtual {v1, v9, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xb

    .line 1485
    invoke-virtual {v1, v10, v8}, Ljava/util/Calendar;->set(II)V

    const/4 v11, 0x5

    .line 1486
    invoke-virtual {v1, v11, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v12, 0x2

    .line 1487
    invoke-virtual {v1, v12, v15}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_3

    :cond_2a
    const/16 v3, 0xd

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/16 v10, 0xb

    const/4 v11, 0x5

    const/4 v12, 0x2

    if-lez v7, :cond_2b

    .line 1491
    invoke-virtual {v1, v3, v8}, Ljava/util/Calendar;->set(II)V

    .line 1492
    invoke-virtual {v1, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 1493
    invoke-virtual {v1, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 1494
    invoke-virtual {v1, v11, v6}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v15, v15, -0x1

    .line 1495
    invoke-virtual {v1, v12, v15}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_3

    .line 1505
    :cond_2b
    :goto_16
    invoke-virtual {v1, v11, v14}, Ljava/util/Calendar;->set(II)V

    .line 1507
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v14, v3, 0x1

    .line 1510
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1515
    sget v6, Lorg/quartz/CronExpression;->MAX_YEAR:I

    if-le v3, v6, :cond_2c

    const/4 v6, 0x0

    return-object v6

    .line 1520
    :cond_2c
    iget-object v6, v0, Lorg/quartz/CronExpression;->months:Ljava/util/TreeSet;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v6

    if-eqz v6, :cond_2d

    .line 1521
    invoke-interface {v6}, Ljava/util/SortedSet;->size()I

    move-result v7

    if-eqz v7, :cond_2d

    .line 1523
    invoke-interface {v6}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_17

    .line 1525
    :cond_2d
    iget-object v6, v0, Lorg/quartz/CronExpression;->months:Ljava/util/TreeSet;

    invoke-virtual {v6}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v3, v3, 0x1

    const/4 v14, -0x1

    :goto_17
    if-eq v6, v14, :cond_2e

    const/16 v7, 0xd

    const/4 v8, 0x0

    .line 1529
    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    .line 1530
    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xb

    .line 1531
    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->set(II)V

    const/4 v7, 0x5

    .line 1532
    invoke-virtual {v1, v7, v4}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x2

    .line 1533
    invoke-virtual {v1, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 1536
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_3

    :cond_2e
    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x1

    .line 1539
    invoke-virtual {v1, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 1543
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1547
    iget-object v6, v0, Lorg/quartz/CronExpression;->years:Ljava/util/TreeSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v6

    if-eqz v6, :cond_30

    .line 1548
    invoke-interface {v6}, Ljava/util/SortedSet;->size()I

    move-result v7

    if-eqz v7, :cond_30

    .line 1550
    invoke-interface {v6}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v3, :cond_2f

    const/16 v3, 0xd

    const/4 v7, 0x0

    .line 1556
    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 1557
    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xb

    .line 1558
    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 1559
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x2

    .line 1560
    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 1563
    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    :goto_18
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_2f
    const/4 v7, 0x0

    .line 1566
    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_30
    const/4 v1, 0x0

    return-object v1

    .line 1502
    :cond_31
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Support for specifying both a day-of-week AND a day-of-month parameter is not implemented."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1571
    :cond_32
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getTimeBefore(Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/quartz/CronExpression;->timeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_0

    .line 382
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lorg/quartz/CronExpression;->timeZone:Ljava/util/TimeZone;

    .line 385
    :cond_0
    iget-object v0, p0, Lorg/quartz/CronExpression;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method protected getValue(ILjava/lang/String;I)Lorg/quartz/ValueSet;
    .locals 2

    .line 1121
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    const/16 p1, 0x30

    if-lt v0, p1, :cond_1

    const/16 p1, 0x39

    if-gt v0, p1, :cond_1

    .line 1124
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    .line 1126
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p3, p1, :cond_0

    goto :goto_1

    .line 1129
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 1131
    :cond_1
    :goto_1
    new-instance p1, Lorg/quartz/ValueSet;

    invoke-direct {p1}, Lorg/quartz/ValueSet;-><init>()V

    .line 1133
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p3, p2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p3, p3, 0x1

    :goto_2
    iput p3, p1, Lorg/quartz/ValueSet;->pos:I

    .line 1134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lorg/quartz/ValueSet;->value:I

    return-object p1
.end method

.method protected isLeapYear(I)Z
    .locals 1

    .line 1607
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSatisfiedBy(Ljava/util/Date;)Z
    .locals 4

    .line 313
    invoke-virtual {p0}, Lorg/quartz/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 314
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x0

    const/16 v1, 0xe

    .line 315
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 316
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const/16 v2, 0xd

    const/4 v3, -0x1

    .line 318
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 320
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/quartz/CronExpression;->getTimeAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method protected setCalendarHour(Ljava/util/Calendar;I)V
    .locals 2

    const/16 v0, 0xb

    .line 1582
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 1583
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_0

    const/16 v1, 0x18

    if-eq p2, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 1584
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    :cond_0
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lorg/quartz/CronExpression;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method protected skipWhiteSpace(ILjava/lang/String;)I
    .locals 2

    .line 951
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method protected storeExpressionVals(ILjava/lang/String;I)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 527
    invoke-virtual {p0, p1, p2}, Lorg/quartz/CronExpression;->skipWhiteSpace(ILjava/lang/String;)I

    move-result p1

    .line 528
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    return p1

    .line 531
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    const/16 v2, 0x4c

    const/16 v3, 0x2d

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, -0x1

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-lt v0, v1, :cond_d

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_d

    const-string v1, "L"

    .line 532
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "LW"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "^L-[0-9]*[W]?"

    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    add-int/lit8 v0, p1, 0x3

    .line 533
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x4

    const-string v10, "\'"

    if-ne p3, v9, :cond_5

    .line 537
    invoke-virtual {p0, v1}, Lorg/quartz/CronExpression;->getMonthNumber(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v8

    if-lez v2, :cond_4

    .line 541
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 542
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, p1, 0x3

    .line 545
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 546
    invoke-virtual {p0, p2}, Lorg/quartz/CronExpression;->getMonthNumber(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v8

    if-lez v0, :cond_1

    move v9, v2

    goto/16 :goto_1

    .line 548
    :cond_1
    new-instance p3, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Month value: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p3

    :cond_2
    move v9, v2

    :cond_3
    :goto_0
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 539
    :cond_4
    new-instance p2, Ljava/text/ParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Month value: \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_5
    if-ne p3, v5, :cond_c

    .line 553
    invoke-virtual {p0, v1}, Lorg/quartz/CronExpression;->getDayOfWeekNumber(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_b

    .line 558
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_3

    .line 559
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_7

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, p1, 0x3

    .line 562
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 563
    invoke-virtual {p0, p2}, Lorg/quartz/CronExpression;->getDayOfWeekNumber(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    goto :goto_1

    .line 565
    :cond_6
    new-instance p3, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Day-of-Week value: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p3

    :cond_7
    const/16 v1, 0x23

    if-ne v0, v1, :cond_9

    add-int/lit8 p1, p1, 0x4

    .line 572
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/quartz/CronExpression;->nthdayOfWeek:I

    .line 573
    iget p2, p0, Lorg/quartz/CronExpression;->nthdayOfWeek:I

    if-lt p2, v8, :cond_8

    iget p2, p0, Lorg/quartz/CronExpression;->nthdayOfWeek:I

    if-gt p2, v5, :cond_8

    goto :goto_0

    .line 574
    :cond_8
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :catch_0
    new-instance p2, Ljava/text/ParseException;

    const-string p3, "A numeric value between 1 and 5 must follow the \'#\' option"

    invoke-direct {p2, p3, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_9
    if-ne v0, v2, :cond_3

    .line 582
    iput-boolean v8, p0, Lorg/quartz/CronExpression;->lastdayOfWeek:Z

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :goto_1
    if-eq v0, v6, :cond_a

    const/4 v4, 0x1

    .line 595
    :cond_a
    invoke-virtual {p0, v9, v0, v4, p3}, Lorg/quartz/CronExpression;->addToSet(IIII)V

    add-int/2addr p1, v7

    return p1

    .line 555
    :cond_b
    new-instance p2, Ljava/text/ParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Day-of-Week value: \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 588
    :cond_c
    new-instance p2, Ljava/text/ParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal characters for this position: \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_d
    const/16 v1, 0x3f

    const/16 v9, 0x9

    const/16 v10, 0x20

    if-ne v0, v1, :cond_14

    add-int/2addr p1, v8

    add-int/lit8 v0, p1, 0x1

    .line 601
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 602
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v10, :cond_f

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_e

    goto :goto_2

    .line 603
    :cond_e
    new-instance p3, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character after \'?\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p3

    :cond_f
    :goto_2
    if-eq p3, v5, :cond_11

    if-ne p3, v7, :cond_10

    goto :goto_3

    .line 607
    :cond_10
    new-instance p2, Ljava/text/ParseException;

    const-string p3, "\'?\' can only be specified for Day-of-Month or Day-of-Week."

    invoke-direct {p2, p3, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_11
    :goto_3
    if-ne p3, v5, :cond_13

    .line 611
    iget-boolean p2, p0, Lorg/quartz/CronExpression;->lastdayOfMonth:Z

    if-nez p2, :cond_13

    .line 612
    iget-object p2, p0, Lorg/quartz/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    invoke-virtual {p2}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x62

    if-eq p2, v0, :cond_12

    goto :goto_4

    .line 614
    :cond_12
    new-instance p2, Ljava/text/ParseException;

    const-string p3, "\'?\' can only be specified for Day-of-Month -OR- Day-of-Week."

    invoke-direct {p2, p3, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_13
    :goto_4
    const/16 p2, 0x62

    .line 620
    invoke-virtual {p0, p2, v6, v4, p3}, Lorg/quartz/CronExpression;->addToSet(IIII)V

    return p1

    :cond_14
    const/16 v1, 0x2f

    const/16 v11, 0x2a

    if-eq v0, v11, :cond_1f

    if-ne v0, v1, :cond_15

    goto/16 :goto_6

    :cond_15
    if-ne v0, v2, :cond_1b

    add-int/2addr p1, v8

    if-ne p3, v7, :cond_16

    .line 658
    iput-boolean v8, p0, Lorg/quartz/CronExpression;->lastdayOfMonth:Z

    :cond_16
    if-ne p3, v5, :cond_17

    const/4 v0, 0x7

    const/4 v1, 0x7

    .line 661
    invoke-virtual {p0, v0, v1, v4, p3}, Lorg/quartz/CronExpression;->addToSet(IIII)V

    :cond_17
    if-ne p3, v7, :cond_1a

    .line 663
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-le p3, p1, :cond_1a

    .line 664
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-ne p3, v3, :cond_19

    add-int/lit8 p1, p1, 0x1

    .line 666
    invoke-virtual {p0, v4, p2, p1}, Lorg/quartz/CronExpression;->getValue(ILjava/lang/String;I)Lorg/quartz/ValueSet;

    move-result-object p3

    .line 667
    iget v0, p3, Lorg/quartz/ValueSet;->value:I

    iput v0, p0, Lorg/quartz/CronExpression;->lastdayOffset:I

    .line 668
    iget v0, p0, Lorg/quartz/CronExpression;->lastdayOffset:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_18

    .line 670
    iget p1, p3, Lorg/quartz/ValueSet;->pos:I

    goto :goto_5

    .line 669
    :cond_18
    new-instance p2, Ljava/text/ParseException;

    const-string p3, "Offset from last day must be <= 30"

    invoke-direct {p2, p3, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 672
    :cond_19
    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-le p3, p1, :cond_1a

    .line 673
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 p3, 0x57

    if-ne p2, p3, :cond_1a

    .line 675
    iput-boolean v8, p0, Lorg/quartz/CronExpression;->nearestWeekday:Z

    add-int/lit8 p1, p1, 0x1

    :cond_1a
    return p1

    :cond_1b
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1e

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1e

    .line 682
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr p1, v8

    .line 684
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_1c

    .line 685
    invoke-virtual {p0, v0, v6, v6, p3}, Lorg/quartz/CronExpression;->addToSet(IIII)V

    return p1

    .line 687
    :cond_1c
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v1, :cond_1d

    const/16 v1, 0x39

    if-gt v2, v1, :cond_1d

    .line 689
    invoke-virtual {p0, v0, p2, p1}, Lorg/quartz/CronExpression;->getValue(ILjava/lang/String;I)Lorg/quartz/ValueSet;

    move-result-object p1

    .line 690
    iget v0, p1, Lorg/quartz/ValueSet;->value:I

    .line 691
    iget p1, p1, Lorg/quartz/ValueSet;->pos:I

    .line 693
    :cond_1d
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/quartz/CronExpression;->checkNext(ILjava/lang/String;II)I

    move-result p1

    return p1

    .line 697
    :cond_1e
    new-instance p2, Ljava/text/ParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected character: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_1f
    :goto_6
    const/16 v2, 0x63

    if-ne v0, v11, :cond_20

    add-int/lit8 v3, p1, 0x1

    .line 625
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_20

    .line 626
    invoke-virtual {p0, v2, v6, v4, p3}, Lorg/quartz/CronExpression;->addToSet(IIII)V

    return v3

    :cond_20
    if-ne v0, v1, :cond_22

    add-int/lit8 v3, p1, 0x1

    .line 629
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_21

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v10, :cond_21

    .line 630
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v9, :cond_21

    goto :goto_7

    .line 631
    :cond_21
    new-instance p2, Ljava/text/ParseException;

    const-string p3, "\'/\' must be followed by an integer."

    invoke-direct {p2, p3, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_22
    :goto_7
    if-ne v0, v11, :cond_23

    add-int/lit8 p1, p1, 0x1

    .line 635
    :cond_23
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_26

    add-int/lit8 p1, p1, 0x1

    .line 638
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_25

    .line 642
    invoke-virtual {p0, p2, p1}, Lorg/quartz/CronExpression;->getNumericValue(Ljava/lang/String;I)I

    move-result p2

    add-int/2addr p1, v8

    const/16 v0, 0xa

    if-le p2, v0, :cond_24

    add-int/lit8 p1, p1, 0x1

    .line 648
    :cond_24
    invoke-direct {p0, p2, p3, p1}, Lorg/quartz/CronExpression;->checkIncrementRange(III)V

    goto :goto_8

    .line 639
    :cond_25
    new-instance p2, Ljava/text/ParseException;

    const-string p3, "Unexpected end of string."

    invoke-direct {p2, p3, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_26
    const/4 p2, 0x1

    .line 653
    :goto_8
    invoke-virtual {p0, v2, v6, p2, p3}, Lorg/quartz/CronExpression;->addToSet(IIII)V

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 403
    iget-object v0, p0, Lorg/quartz/CronExpression;->cronExpression:Ljava/lang/String;

    return-object v0
.end method
