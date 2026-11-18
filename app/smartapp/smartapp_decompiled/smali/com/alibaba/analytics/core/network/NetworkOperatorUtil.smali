.class public Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;
.super Ljava/lang/Object;
.source "NetworkOperatorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/analytics/core/network/NetworkOperatorUtil$NetworkOperatorHandler;
    }
.end annotation


# static fields
.field private static final NETWORK_OPERATOR_MOBILE:Ljava/lang/String; = "\u4e2d\u56fd\u79fb\u52a8"

.field private static final NETWORK_OPERATOR_TELECOM:Ljava/lang/String; = "\u4e2d\u56fd\u7535\u4fe1"

.field private static final NETWORK_OPERATOR_UNICOM:Ljava/lang/String; = "\u4e2d\u56fd\u8054\u901a"

.field private static final NETWORK_OPERATOR_UNKNOWN:Ljava/lang/String; = "Unknown"

.field private static final TAG:Ljava/lang/String; = "NetworkOperatorUtil"

.field private static mCurrentNetworkOperator:Ljava/lang/String; = "Unknown"

.field private static mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->registerSIMCardChanged(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->mCurrentNetworkOperator:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getCurrentNetworkOperatorName()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->mCurrentNetworkOperator:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized registerSIMCardChanged(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    const-class v0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;

    monitor-enter v0

    .line 54
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    .line 55
    monitor-exit v0

    return-void

    .line 58
    :cond_0
    :try_start_1
    sget-object v1, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :try_start_2
    const-string/jumbo v2, "telephony_subscription_service"

    .line 61
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    sput-object v2, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 62
    sget-object v2, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string p0, "NetworkOperatorUtil"

    .line 63
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "SubscriptionManager is null"

    aput-object v3, v2, v1

    invoke-static {p0, v2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    monitor-exit v0

    return-void

    .line 68
    :cond_1
    :try_start_3
    new-instance v2, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil$2;

    invoke-direct {v2, p0}, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil$2;-><init>(Landroid/content/Context;)V

    .line 81
    sget-object p0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    const-string p0, "NetworkOperatorUtil"

    .line 82
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "addOnSubscriptionsChangedListener"

    aput-object v3, v2, v1

    invoke-static {p0, v2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_4
    const-string v2, "NetworkOperatorUtil"

    .line 84
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized registerSIMCardChangedInHandler(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;

    monitor-enter v0

    .line 36
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    .line 37
    monitor-exit v0

    return-void

    .line 40
    :cond_0
    :try_start_1
    sget-object v1, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v1, :cond_1

    .line 41
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 42
    new-instance v1, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil$NetworkOperatorHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil$NetworkOperatorHandler;-><init>(Landroid/os/Looper;)V

    .line 43
    new-instance v2, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil$1;

    invoke-direct {v2, p0}, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil$NetworkOperatorHandler;->postTask(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized updateNetworkOperatorName(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;

    monitor-enter v0

    :try_start_0
    const-string v1, "NetworkOperatorUtil"

    const/4 v2, 0x1

    .line 90
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "updateNetworkOperatorName"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "phone"

    .line 92
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const-string p0, "Unknown"

    .line 94
    sput-object p0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->mCurrentNetworkOperator:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    monitor-exit v0

    return-void

    .line 98
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_a

    .line 99
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    .line 102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "Unknown"

    .line 103
    sput-object p0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->mCurrentNetworkOperator:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    monitor-exit v0

    return-void

    .line 106
    :cond_1
    :try_start_3
    sput-object p0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->mCurrentNetworkOperator:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    monitor-exit v0

    return-void

    :cond_2
    :try_start_4
    const-string v2, "46000"

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "46002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "46007"

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "46008"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "46001"

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "46006"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "46009"

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, "46003"

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "46005"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "46011"

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 124
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p0, "Unknown"

    .line 126
    sput-object p0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->mCurrentNetworkOperator:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    monitor-exit v0

    return-void

    .line 129
    :cond_6
    :try_start_5
    sput-object p0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->mCurrentNetworkOperator:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 130
    monitor-exit v0

    return-void

    :cond_7
    :goto_0
    :try_start_6
    const-string/jumbo p0, "\u4e2d\u56fd\u7535\u4fe1"

    .line 121
    sput-object p0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->mCurrentNetworkOperator:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 122
    monitor-exit v0

    return-void

    :cond_8
    :goto_1
    :try_start_7
    const-string/jumbo p0, "\u4e2d\u56fd\u8054\u901a"

    .line 117
    sput-object p0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->mCurrentNetworkOperator:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 118
    monitor-exit v0

    return-void

    :cond_9
    :goto_2
    :try_start_8
    const-string/jumbo p0, "\u4e2d\u56fd\u79fb\u52a8"

    .line 113
    sput-object p0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->mCurrentNetworkOperator:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 114
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    :try_start_9
    const-string v1, "NetworkOperatorUtil"

    .line 135
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_a
    const-string p0, "Unknown"

    .line 138
    sput-object p0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->mCurrentNetworkOperator:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 139
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
