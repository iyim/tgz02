.class public Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;
.super Ljava/lang/Object;
.source "ForbiddenModeScheduledExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ForbiddenMode"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->mName:Ljava/lang/String;

    return-void
.end method

.method private handleAppConfigList(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)Z
    .locals 8

    .line 208
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getAppConfigList()Ljava/util/List;

    move-result-object p2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u624b\u673a\u8bbe\u7f6eapp\u53ef\u7528\u65f6\u957f\u5217\u8868="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForbiddenMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u624b\u673a\u8bbe\u7f6eapp\u53ef\u7528\u65f6\u957f\u5217\u8868\u4e3a\u7a7a "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 217
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getInstance()Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getCurrentApp()Ljava/lang/String;

    move-result-object v2

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6b63\u5728\u8fd0\u884c\u7684app\u5305\u540d\u6216\u8005\u5c0f\u7a0b\u5e8f\u7684appid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "\u6b63\u5728\u8fd0\u884c\u7684app\u5305\u540d\u6216\u8005\u5c0f\u7a0b\u5e8f\u7684appid=null"

    .line 221
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 226
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getInstance()Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getAppUsedTime(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u83b7\u53d6\u5f53\u524d\u5e94\u7528\u6216\u8005\u5c0f\u7a0b\u5e8f\u7684\u4eca\u65e5\u4f7f\u7528\u65f6\u957f="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;

    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u624b\u673a\u8bbe\u7f6e\u5e94\u7528\u6216\u8005\u5c0f\u7a0b\u5e8f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;->getIdentify()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u4f7f\u7528\u65f6\u957f="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;->getUsedTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :try_start_0
    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;->getUsedTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 233
    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;->getUsedTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3

    .line 236
    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;->getIdentify()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    int-to-long v5, v6

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 237
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->handleForbiddenApp()V

    const/4 p1, 0x1

    return p1

    :cond_3
    const-string v5, "\u624b\u673aAPP\u8bbe\u7f6e\u7684\u5355\u6b21\u53ef\u770b\u65f6\u957f  == -1 \u4e0d\u9650\u5236"

    .line 241
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 245
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u624b\u673aAPP\u8bbe\u7f6e\u7684\u5355\u6b21\u53ef\u770b\u65f6\u957f  == null !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;->getUsedTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v5, "handleAppConfigList"

    const-string v6, "error"

    .line 248
    invoke-static {v5, v6}, Lcom/alibaba/ailabs/genie/time/utils/AGUILog;->sendErrorToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return v0
.end method

.method private handleDailyAvailableTime(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)Z
    .locals 7

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u624b\u673aAPP\u8bbe\u7f6e\u7684\u5de5\u4f5c\u65e5\u603b\u65f6\u957f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getDailyAvailableTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForbiddenMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getInstance()Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getDailyUsedTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u672c\u5730\u4eca\u5929\u7684\u4f7f\u7528\u65f6\u957f="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getDailyAvailableTime()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    const-string p1, "\u624b\u673aAPP\u8bbe\u7f6e\u7684\u5de5\u4f5c\u65e5\u603b\u65f6\u957f  == -1 \u4e0d\u9650\u5236\u5f53\u65e5\u603b\u65f6\u957f"

    .line 143
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 148
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getDailyAvailableTime()I

    move-result p2

    int-to-long v5, p2

    cmp-long p2, v2, v5

    if-lez p2, :cond_1

    const-string p2, "\u672c\u5730\u4eca\u5929\u7684\u4f7f\u7528\u65f6\u957f > \u624b\u673aAPP\u8bbe\u7f6e\u7684\u603b\u65f6\u957f, \u5f39\u9632\u6c89\u8ff7\u754c\u9762"

    .line 149
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->handleTotalAvailableTime()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v4
.end method

.method private handleSingleAvailableTime(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)Z
    .locals 7

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u624b\u673a\u5355\u6b21\u4f7f\u7528\u65f6\u957f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getSingleAvailableTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForbiddenMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getInstance()Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getSingleUsedTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u672c\u5730\u5355\u6b21\u4f7f\u7528\u65f6\u957f="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getSingleAvailableTime()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    const-string p1, "\u624b\u673aAPP\u8bbe\u7f6e\u7684\u5355\u6b21\u53ef\u770b\u65f6\u957f  == -1 \u4e0d\u9650\u5236"

    .line 191
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 195
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getSingleAvailableTime()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v2, v5

    if-lez v0, :cond_1

    const-string v0, "\u672c\u5730\u5355\u6b21\u4f7f\u7528\u65f6\u957f>\u624b\u673a\u5355\u6b21\u4f7f\u7528\u65f6\u957f,\u5f39\u51fa\u9632\u6c89\u8ff7\u754c\u9762"

    .line 196
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->handleSingleAvailableTime(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v4
.end method

.method private handleTotalAvailableTime(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)Z
    .locals 4

    .line 109
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->isTotalTimeEnable()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ForbiddenMode"

    if-nez v0, :cond_0

    const-string p1, "\u7528\u6237\u5728\u624b\u673aapp\u4e0a\u5173\u95ed\u4e86\u603b\u65f6\u957f\u9650\u5236, \u4e0d\u518d\u68c0\u6d4b\u603b\u65f6\u957f"

    .line 110
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 114
    :cond_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object v0

    const-string v3, "sp_key_total_available_time"

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->getFlagCloseByUser(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u7528\u6237\u4e3b\u52a8\u89e3\u9664\u4e86\u6bcf\u65e5\u603b\u65f6\u957f"

    .line 115
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 119
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    .line 120
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dayOfWeek = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/4 v1, 0x6

    if-gt v0, v1, :cond_2

    const-string v0, "\u5468\u4e00\u5230\u5468\u4e94\u5de5\u4f5c\u65e5\u53ef\u7528\u603b\u65f6\u957f"

    .line 123
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->handleDailyAvailableTime(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)Z

    move-result p1

    return p1

    :cond_2
    const-string v0, "\u5468\u516d\u5468\u65e5\u53ef\u7528\u603b\u65f6\u957f"

    .line 126
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->handleWeekendAvailableTime(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)Z

    move-result p1

    return p1
.end method

.method private handleWeekendAvailableTime(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)Z
    .locals 7

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u624b\u673aAPP\u8bbe\u7f6e\u5468\u672b\u6bcf\u65e5\u603b\u65f6\u957f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getWeekendAvailableTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForbiddenMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getWeekendAvailableTime()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const-string p1, "\u624b\u673aAPP\u8bbe\u7f6e\u7684\u5468\u672b\u603b\u65f6\u957f  == -1 \u4e0d\u9650\u5236\u5f53\u65e5\u603b\u65f6\u957f"

    .line 164
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 169
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getInstance()Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getDailyUsedTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u672c\u5730\u4eca\u5929\u7684\u4f7f\u7528\u65f6\u957f="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getWeekendAvailableTime()I

    move-result p2

    int-to-long v5, p2

    cmp-long p2, v3, v5

    if-lez p2, :cond_1

    const-string p2, "\u672c\u5730\u4eca\u5929\u7684\u4f7f\u7528\u65f6\u957f > \u624b\u673aAPP\u8bbe\u7f6e\u7684\u603b\u65f6\u957f, \u5f39\u9632\u6c89\u8ff7\u754c\u9762"

    .line 173
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->handleTotalAvailableTime()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method


# virtual methods
.method public doForbiddenMode()V
    .locals 4

    .line 71
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->isChildModel()Z

    move-result v0

    const-string v1, "ForbiddenMode"

    if-nez v0, :cond_0

    const-string v0, "\u5f53\u524d\u975e\u513f\u7ae5\u6a21\u5f0f\uff0c\u4e0d\u68c0\u6d4b\u9632\u6c89\u8ff7"

    .line 72
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->isSkipForbiddenTimeActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/ActivityUtils;->getTopActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SkipForbiddenTimeActivity topActivityName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "checkChildModeForbiddenTime"

    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "childModeSettingBean = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->handleTotalAvailableTime(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 94
    :cond_2
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->handleSingleAvailableTime(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->checkBreakTime(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)Z

    return-void

    .line 100
    :cond_3
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->handleAppConfigList(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const-string v0, "\u5904\u7406\u7981\u770b\u65f6\u95f4\u6bb5"

    .line 104
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->handleForbiddenTime()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForbiddenModeScheduledExecutor run time at:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForbiddenMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "ForbiddenModeScheduledExecutor begin check "

    .line 55
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor$1;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Exception"

    .line 63
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
