.class public Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;
.super Ljava/lang/Object;
.source "ForbiddenTimeManager.java"


# static fields
.field public static final KEY_END_HOUR:Ljava/lang/String; = "key_end_hour"

.field public static final KEY_END_MIN:Ljava/lang/String; = "key_end_min"

.field public static final KEY_FORBIDDEN_TIME_NAME:Ljava/lang/String; = "key_name"

.field public static final KEY_START_HOUR:Ljava/lang/String; = "key_start_hour"

.field public static final KEY_START_MIN:Ljava/lang/String; = "key_start_min"

.field public static final KEY_WEEK:Ljava/lang/String; = "key_week"

.field private static final MAX_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ForbiddenManager"

.field private static sInstance:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;->sInstance:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ForbiddenManager"

    const-string v1, "ForbiddenTimeManager init "

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;->sInstance:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;

    return-object v0
.end method


# virtual methods
.method public addBean(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;)V
    .locals 2

    .line 62
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getForbiddenTime()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;->save(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addBean mChildModeSettingBean "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ForbiddenManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cancelAlarm(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;I)V
    .locals 0

    if-nez p1, :cond_0

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getData()Ljava/util/List;
    .locals 1

    .line 40
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getForbiddenTime()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBean()Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;
    .locals 3

    .line 50
    new-instance v0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;-><init>()V

    const-string v1, "\u7981\u6b62\u65f6\u95f4\u6bb51"

    .line 51
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->setName(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->setValue(Z)V

    const/16 v2, 0x16

    .line 53
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->setStartHour(I)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->setStartMin(I)V

    const/16 v2, 0x8

    .line 55
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->setEndHour(I)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->setEndMin(I)V

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->setWeek(Ljava/util/List;)V

    return-object v0
.end method

.method public init()V
    .locals 5

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 136
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init forbidden Time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ForbiddenManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->isValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;->setAlarm(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isOverLimited()Z
    .locals 2

    .line 102
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getForbiddenTime()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getForbiddenTime()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public save(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V
    .locals 1

    .line 95
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setChildModeSettingBean(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAlarm(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;I)V
    .locals 0

    if-nez p1, :cond_0

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateBean(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;)V
    .locals 5

    .line 70
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getForbiddenTime()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 72
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 73
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getStartHour()I

    move-result v3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getStartHour()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 74
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getStartMin()I

    move-result v3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getStartMin()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 75
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getEndHour()I

    move-result v3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getEndHour()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 76
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getEndMin()I

    move-result v3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getEndMin()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 79
    invoke-interface {v1, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->setForbiddenTime(Ljava/util/List;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;->save(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBean mChildModeSettingBean "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForbiddenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->isValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;->setAlarm(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;I)V

    :cond_2
    return-void
.end method

.method public updateList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->setForbiddenTime(Ljava/util/List;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenTimeManager;->save(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V

    return-void
.end method
