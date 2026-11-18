.class public Lcom/alibaba/ailabs/genie/utils/DateFormatUtil;
.super Ljava/lang/Object;
.source "DateFormatUtil.java"


# static fields
.field private static mSimpleDateFormatCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/utils/DateFormatUtil;->mSimpleDateFormatCache:Ljava/util/HashMap;

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

.method private static createSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createSimpleDateFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;
    .locals 1

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 2

    .line 22
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->isManiThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/DateFormatUtil;->mSimpleDateFormatCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 25
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/DateFormatUtil;->createSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/alibaba/ailabs/genie/utils/DateFormatUtil;->mSimpleDateFormatCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 30
    :cond_1
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/DateFormatUtil;->createSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getSimpleDateFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;
    .locals 1

    .line 35
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->isManiThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/DateFormatUtil;->mSimpleDateFormatCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 38
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/DateFormatUtil;->createSimpleDateFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 39
    sget-object p1, Lcom/alibaba/ailabs/genie/utils/DateFormatUtil;->mSimpleDateFormatCache:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 43
    :cond_1
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/DateFormatUtil;->createSimpleDateFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    return-object p0
.end method
