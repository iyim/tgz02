.class public Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final LUNAR_FESTIVAL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SOLAR_FESTIVAL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SOLAR_TERM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "DateTime"


# instance fields
.field private chineseFestival:Ljava/lang/String;

.field private chineseFestivalCode:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private internationalFestival:Ljava/lang/String;

.field private internationalFestivalCode:Ljava/lang/String;

.field private lunarDate:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private originData:Ljava/lang/Object;

.field private solarDate:Ljava/lang/String;

.field private solarTerm:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private week:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_FESTIVAL:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->LUNAR_FESTIVAL:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    .line 62
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->LUNAR_FESTIVAL:Ljava/util/Map;

    const-string v1, "1"

    const-string v2, "\u814a\u516b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->LUNAR_FESTIVAL:Ljava/util/Map;

    const-string v2, "2"

    const-string v3, "\u9664\u5915"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->LUNAR_FESTIVAL:Ljava/util/Map;

    const-string v3, "3"

    const-string v4, "\u6625\u8282"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->LUNAR_FESTIVAL:Ljava/util/Map;

    const-string v4, "4"

    const-string v5, "\u5143\u5bb5\u8282"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->LUNAR_FESTIVAL:Ljava/util/Map;

    const-string v5, "5"

    const-string v6, "\u7aef\u5348\u8282"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->LUNAR_FESTIVAL:Ljava/util/Map;

    const-string v6, "6"

    const-string v7, "\u4e03\u5915\u8282"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->LUNAR_FESTIVAL:Ljava/util/Map;

    const-string v7, "7"

    const-string v8, "\u4e2d\u79cb\u8282"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->LUNAR_FESTIVAL:Ljava/util/Map;

    const-string v8, "8"

    const-string v9, "\u91cd\u9633\u8282"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_FESTIVAL:Ljava/util/Map;

    const-string v9, "\u5143\u65e6"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_FESTIVAL:Ljava/util/Map;

    const-string v9, "\u5987\u5973\u8282"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_FESTIVAL:Ljava/util/Map;

    const-string v9, "\u690d\u7269\u8282"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_FESTIVAL:Ljava/util/Map;

    const-string v9, "\u52b3\u52a8\u8282"

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_FESTIVAL:Ljava/util/Map;

    const-string v9, "\u4e94\u56db\u9752\u5e74\u8282"

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_FESTIVAL:Ljava/util/Map;

    const-string v9, "\u513f\u7ae5\u8282"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_FESTIVAL:Ljava/util/Map;

    const-string v9, "\u5efa\u515a\u8282"

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_FESTIVAL:Ljava/util/Map;

    const-string v9, "\u5efa\u519b\u8282"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_FESTIVAL:Ljava/util/Map;

    const-string v9, "9"

    const-string v10, "\u6559\u5e08\u8282"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_FESTIVAL:Ljava/util/Map;

    const-string v10, "10"

    const-string v11, "\u56fd\u5e86\u8282"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_FESTIVAL:Ljava/util/Map;

    const-string v11, "11"

    const-string v12, "\u5e73\u5b89\u591c"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_FESTIVAL:Ljava/util/Map;

    const-string v12, "12"

    const-string v13, "\u5723\u8bde\u8282"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v13, "\u6625\u5206"

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "\u6e05\u660e"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "\u8c37\u96e8"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "\u7acb\u590f"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "\u5c0f\u6ee1"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "\u8292\u79cd"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "\u590f\u81f3"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "\u5c0f\u6691"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "\u5927\u6691"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "\u7acb\u79cb"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "\u5904\u6691"

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "\u767d\u9732"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "13"

    const-string v2, "\u79cb\u5206"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "14"

    const-string v2, "\u5bd2\u9732"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "15"

    const-string v2, "\u971c\u964d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "16"

    const-string v2, "\u7acb\u51ac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "17"

    const-string v2, "\u5c0f\u96ea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "18"

    const-string v2, "\u5927\u96ea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "19"

    const-string v2, "\u51ac\u81f3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "20"

    const-string v2, "\u5c0f\u5bd2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "21"

    const-string v2, "\u5927\u5bd2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "22"

    const-string v2, "\u7acb\u6625"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "23"

    const-string v2, "\u96e8\u6c34"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    const-string v1, "24"

    const-string v2, "\u60ca\u86f0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->originData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get12HourTime()Ljava/lang/String;
    .locals 5

    .line 221
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getTime()Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 225
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "hh:mm"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 226
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simpleDateFormat.parse(time) error, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DateTime"

    invoke-static {v3, v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public get24HourTime()Ljava/lang/String;
    .locals 5

    .line 235
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getTime()Ljava/lang/String;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 238
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 239
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 240
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get24HourTime simpleDateFormat.parse(time) error, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DateTime"

    invoke-static {v3, v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public getAmpm12HourTime()Ljava/lang/String;
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->isAm()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u4e0a\u5348 "

    goto :goto_0

    :cond_0
    const-string v1, "\u4e0b\u5348 "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->get12HourTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChineseFestival()Ljava/lang/String;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->chineseFestival:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->originData:Ljava/lang/Object;

    const-string v1, "chineseFestival"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->chineseFestival:Ljava/lang/String;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->chineseFestival:Ljava/lang/String;

    return-object v0
.end method

.method public getChineseFestivalCode()Ljava/lang/String;
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->chineseFestivalCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->originData:Ljava/lang/Object;

    const-string v1, "chineseFestivalCode"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->chineseFestivalCode:Ljava/lang/String;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->chineseFestivalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->city:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->originData:Ljava/lang/Object;

    const-string v1, "city"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->city:Ljava/lang/String;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->country:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->originData:Ljava/lang/Object;

    const-string v1, "country"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->country:Ljava/lang/String;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedLunarDate()Ljava/lang/String;
    .locals 31

    const-string v1, "\u521d\u4e00"

    const-string v2, "\u521d\u4e8c"

    const-string v3, "\u521d\u4e09"

    const-string v4, "\u521d\u56db"

    const-string v5, "\u521d\u4e94"

    const-string v6, "\u521d\u516d"

    const-string v7, "\u521d\u4e03"

    const-string v8, "\u521d\u516b"

    const-string v9, "\u521d\u4e5d"

    const-string v10, "\u521d\u5341"

    const-string v11, "\u5341\u4e00"

    const-string v12, "\u5341\u4e8c"

    const-string v13, "\u5341\u4e09"

    const-string v14, "\u5341\u56db"

    const-string v15, "\u5341\u4e94"

    const-string v16, "\u5341\u516d"

    const-string v17, "\u5341\u4e03"

    const-string v18, "\u5341\u516b"

    const-string v19, "\u5341\u4e5d"

    const-string v20, "\u4e8c\u5341"

    const-string v21, "\u5eff\u4e00"

    const-string v22, "\u5eff\u4e8c"

    const-string v23, "\u5eff\u4e09"

    const-string v24, "\u5eff\u56db"

    const-string v25, "\u5eff\u4e94"

    const-string v26, "\u5eff\u516d"

    const-string v27, "\u5eff\u4e03"

    const-string v28, "\u5eff\u516b"

    const-string v29, "\u5eff\u4e5d"

    const-string v30, "\u4e09\u5341"

    .line 282
    filled-new-array/range {v1 .. v30}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6b63\u6708"

    const-string v2, "\u4e8c\u6708"

    const-string v3, "\u4e09\u6708"

    const-string v4, "\u56db\u6708"

    const-string v5, "\u4e94\u6708"

    const-string v6, "\u516d\u6708"

    const-string v7, "\u4e03\u6708"

    const-string v8, "\u516b\u6708"

    const-string v9, "\u4e5d\u6708"

    const-string v10, "\u5341\u6708"

    const-string v11, "\u5341\u4e00\u6708"

    const-string v12, "\u814a\u6708"

    .line 285
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getLunarDate()Ljava/lang/String;

    move-result-object v2

    .line 288
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 290
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getLunarDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 291
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 292
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    aget-object v1, v1, v5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simpleDateFormat.parse(time) error, lunar date:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getLunarDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DateTime"

    invoke-static {v3, v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public getInternationalFestival()Ljava/lang/String;
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->internationalFestival:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->originData:Ljava/lang/Object;

    const-string v1, "internationalFestival"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->internationalFestival:Ljava/lang/String;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->internationalFestival:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalFestivalCode()Ljava/lang/String;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->internationalFestivalCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->originData:Ljava/lang/Object;

    const-string v1, "internationalFestivalCode"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->internationalFestivalCode:Ljava/lang/String;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->internationalFestivalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLunarDate()Ljava/lang/String;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->lunarDate:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->originData:Ljava/lang/Object;

    const-string v1, "lunarDate"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->lunarDate:Ljava/lang/String;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->lunarDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLunarFestival()Ljava/lang/String;
    .locals 2

    .line 305
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->LUNAR_FESTIVAL:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getChineseFestivalCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->LUNAR_FESTIVAL:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getChineseFestivalCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 309
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLunarFestival err, getChineseFestivalCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getChineseFestivalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DateTime"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSolarDate()Ljava/lang/String;
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->solarDate:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->originData:Ljava/lang/Object;

    const-string v1, "solarDate"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->solarDate:Ljava/lang/String;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->solarDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSolarFestival()Ljava/lang/String;
    .locals 2

    .line 319
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_FESTIVAL:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getInternationalFestivalCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 321
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSolarFestival error, getInternationalFestivalCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getInternationalFestivalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DateTime"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public getSolarTerm()Ljava/lang/String;
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->solarTerm:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->originData:Ljava/lang/Object;

    const-string v1, "solarTerm"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->solarTerm:Ljava/lang/String;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->solarTerm:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 200
    sget-object v1, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->SOLAR_TERM:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->time:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->originData:Ljava/lang/Object;

    const-string v1, "time"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->time:Ljava/lang/String;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getViewFormattedSolarDate()Ljava/lang/String;
    .locals 5

    .line 259
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getSolarDate()Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 262
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getSolarDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 263
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy.MM.dd"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 264
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simpleDateFormat.parse(time) error, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DateTime"

    invoke-static {v3, v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public getViewWeek()Ljava/lang/String;
    .locals 9

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getWeek()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getWeek()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "\u65e5"

    const-string v3, "\u4e00"

    const-string v4, "\u4e8c"

    const-string v5, "\u4e09"

    const-string v6, "\u56db"

    const-string v7, "\u4e94"

    const-string v8, "\u516d"

    .line 276
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u661f\u671f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getWeek()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getWeek()Ljava/lang/Integer;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->week:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->originData:Ljava/lang/Object;

    const-string v1, "week"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->week:Ljava/lang/Integer;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->week:Ljava/lang/Integer;

    return-object v0
.end method

.method public isAm()Z
    .locals 4

    .line 208
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 210
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "aa"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 212
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simpleDateFormat.parse(time) error, time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DateTime"

    invoke-static {v2, v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    .line 216
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "am"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->mType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DateTime{city=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", country=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", time=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", week="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getWeek()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", solarDate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getSolarDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lunarDate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getLunarDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", internationalFestival=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getInternationalFestival()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", chineseFestival=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getChineseFestival()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", solarTerm=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->getSolarTerm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
