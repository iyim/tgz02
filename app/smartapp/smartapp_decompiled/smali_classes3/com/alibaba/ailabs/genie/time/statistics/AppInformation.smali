.class public Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;
.super Ljava/lang/Object;
.source "AppInformation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppInformation"


# instance fields
.field private Icon:Landroid/graphics/drawable/Drawable;

.field private context:Landroid/content/Context;

.field private label:Ljava/lang/String;

.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private packageName:Ljava/lang/String;

.field private timeStampMoveToBackGround:J

.field private timeStampMoveToForeground:J

.field private times:I

.field private usageStats:Landroid/app/usage/UsageStats;

.field private usedTimeByDay:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    const-wide/16 v0, -0x1

    .line 98
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->timeStampMoveToForeground:J

    .line 100
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->timeStampMoveToBackGround:J

    return-void
.end method

.method public constructor <init>(Landroid/app/usage/UsageStats;Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    const-wide/16 v0, -0x1

    .line 98
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->timeStampMoveToForeground:J

    .line 100
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->timeStampMoveToBackGround:J

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->usageStats:Landroid/app/usage/UsageStats;

    .line 37
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->context:Landroid/content/Context;

    .line 40
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->GenerateInfo()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 42
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private GenerateInfo()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->usageStats:Landroid/app/usage/UsageStats;

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->packageName:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->label:Ljava/lang/String;

    .line 53
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->usageStats:Landroid/app/usage/UsageStats;

    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->usedTimeByDay:J

    .line 54
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->usageStats:Landroid/app/usage/UsageStats;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mLaunchCount"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->usageStats:Landroid/app/usage/UsageStats;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->times:I

    .line 56
    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->usedTimeByDay:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 57
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->Icon:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public static bootTime()J
    .locals 4

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public calculateRunningTime()V
    .locals 7

    .line 125
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->timeStampMoveToForeground:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-wide v4, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->timeStampMoveToBackGround:J

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    .line 130
    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->usedTimeByDay:J

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->usedTimeByDay:J

    const-wide/16 v0, -0x1

    .line 133
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->timeStampMoveToForeground:J

    .line 134
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->timeStampMoveToBackGround:J

    :cond_1
    :goto_0
    return-void
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->Icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStampMoveToBackGround()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->timeStampMoveToBackGround:J

    return-wide v0
.end method

.method public getTimeStampMoveToForeground()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->timeStampMoveToForeground:J

    return-wide v0
.end method

.method public getTimes()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->times:I

    return v0
.end method

.method public getUsageStats()Landroid/app/usage/UsageStats;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->usageStats:Landroid/app/usage/UsageStats;

    return-object v0
.end method

.method public getUsedTimeByDay()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->usedTimeByDay:J

    return-wide v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setTimeStampMoveToBackGround(J)V
    .locals 0

    .line 112
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->timeStampMoveToBackGround:J

    return-void
.end method

.method public setTimeStampMoveToForeground(J)V
    .locals 0

    .line 104
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->timeStampMoveToForeground:J

    return-void
.end method

.method public setTimes(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->times:I

    return-void
.end method

.method public setUsedTimeByDay(J)V
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->usedTimeByDay:J

    return-void
.end method

.method public timesPlusPlus()V
    .locals 1

    .line 108
    iget v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->times:I

    return-void
.end method
