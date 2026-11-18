.class final Lcom/alibaba/analytics/core/config/UTOrangeConfMgr$OrangeGetConfigsRunnable;
.super Ljava/lang/Object;
.source "UTOrangeConfMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OrangeGetConfigsRunnable"
.end annotation


# instance fields
.field private final mSleepIntervalList:[I

.field final synthetic this$0:Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;


# direct methods
.method constructor <init>(Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr$OrangeGetConfigsRunnable;->this$0:Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    .line 46
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr$OrangeGetConfigsRunnable;->mSleepIntervalList:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x4
        0x4
        0x8
        0x8
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 51
    invoke-static {}, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;->access$100()[Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr$OrangeGetConfigsRunnable;->this$0:Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;

    invoke-static {v1}, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;->access$201(Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;)V

    .line 54
    iget-object v1, p0, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr$OrangeGetConfigsRunnable;->this$0:Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;

    invoke-static {v1}, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;->access$301(Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;)V

    const-string v1, "0"

    .line 55
    invoke-static {v1}, Lcom/alibaba/analytics/core/config/UTBaseConfMgr;->sendConfigTimeStamp(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    move v4, v2

    const/4 v2, 0x0

    .line 61
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 62
    aget-object v5, v0, v2

    if-eqz v5, :cond_0

    .line 63
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v5

    invoke-static {}, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;->access$100()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Lcom/taobao/orange/OrangeConfig;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    .line 65
    aput-object v5, v0, v2

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 70
    :cond_1
    array-length v2, v0

    if-ne v4, v2, :cond_2

    goto :goto_3

    .line 74
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr$OrangeGetConfigsRunnable;->mSleepIntervalList:[I

    aget v2, v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 76
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 79
    iget-object v2, p0, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr$OrangeGetConfigsRunnable;->mSleepIntervalList:[I

    array-length v2, v2

    if-le v3, v2, :cond_5

    .line 85
    :goto_3
    array-length v2, v0

    :goto_4
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    if-eqz v3, :cond_3

    .line 88
    iget-object v4, p0, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr$OrangeGetConfigsRunnable;->this$0:Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;

    invoke-static {v4, v3}, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;->access$401(Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void

    :cond_5
    move v2, v4

    goto :goto_0
.end method
