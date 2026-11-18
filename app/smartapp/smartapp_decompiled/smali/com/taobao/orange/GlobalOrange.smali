.class public Lcom/taobao/orange/GlobalOrange;
.super Ljava/lang/Object;
.source "GlobalOrange.java"


# static fields
.field static final TAG:Ljava/lang/String; = "GlobalOrange"

.field public static ackHost:Ljava/lang/String;

.field public static ackVips:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static appKey:Ljava/lang/String;

.field public static appSecret:Ljava/lang/String;

.field public static appVersion:Ljava/lang/String;

.field public static authCode:Ljava/lang/String;

.field public static context:Landroid/content/Context;

.field public static dcHost:Ljava/lang/String;

.field public static dcVips:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static deviceId:Ljava/lang/String;

.field public static env:Lcom/taobao/orange/OConstant$ENV;

.field public static indexContinueFailsNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static volatile indexUpdMode:Lcom/taobao/orange/OConstant$UPDMODE;

.field public static netConnection:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/orange/inner/INetConnection;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile probeHosts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile randomDelayAckInterval:J

.field public static volatile reportUpdateAck:Z

.field public static volatile reqOrangeHeader:Ljava/lang/String;

.field public static volatile reqRetryNum:I

.field public static volatile reqTimestampOffset:J

.field public static volatile schema:Ljava/lang/String;

.field public static statUsedConfig:Z

.field public static userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "anetwork.channel.degrade.DegradableNetwork"

    .line 20
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    const-class v1, Lcom/taobao/orange/impl/TBNetConnection;

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->netConnection:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    :catch_0
    const-class v1, Lcom/taobao/orange/impl/HurlNetConnection;

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->netConnection:Ljava/lang/Class;

    .line 24
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "GlobalOrange"

    const-string v3, "init not found networksdk"

    invoke-static {v2, v3, v1}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-string v1, "https"

    .line 38
    sput-object v1, Lcom/taobao/orange/GlobalOrange;->schema:Ljava/lang/String;

    const/4 v1, 0x3

    .line 40
    sput v1, Lcom/taobao/orange/GlobalOrange;->reqRetryNum:I

    .line 41
    sput-boolean v0, Lcom/taobao/orange/GlobalOrange;->reportUpdateAck:Z

    .line 42
    sput-boolean v0, Lcom/taobao/orange/GlobalOrange;->statUsedConfig:Z

    const-wide/16 v1, 0xa

    .line 43
    sput-wide v1, Lcom/taobao/orange/GlobalOrange;->randomDelayAckInterval:J

    .line 44
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->probeHosts:Ljava/util/Set;

    .line 45
    sget-object v1, Lcom/taobao/orange/OConstant$UPDMODE;->O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->indexUpdMode:Lcom/taobao/orange/OConstant$UPDMODE;

    .line 47
    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->env:Lcom/taobao/orange/OConstant$ENV;

    .line 49
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->dcVips:Ljava/util/Set;

    .line 51
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->ackVips:Ljava/util/Set;

    .line 53
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->indexContinueFailsNum:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v0, 0x0

    .line 54
    sput-wide v0, Lcom/taobao/orange/GlobalOrange;->reqTimestampOffset:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
