.class public Lmtopsdk/security/util/SignStatistics;
.super Ljava/lang/Object;
.source "SignStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/security/util/SignStatistics$SignStatsType;
    }
.end annotation


# static fields
.field private static final SIGN_EXCEPTION_MONITOR_POINT:Ljava/lang/String; = "signException"

.field private static final SIGN_STATS_MODULE:Ljava/lang/String; = "mtopsdk"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.SignStatistics"

.field private static volatile mUploadStats:Lmtopsdk/mtop/stat/IUploadStats;

.field private static volatile registerFlag:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lmtopsdk/security/util/SignStatistics;->registerFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static commitStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 75
    sget-object v0, Lmtopsdk/security/util/SignStatistics;->mUploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    sget-object v0, Lmtopsdk/security/util/SignStatistics;->registerFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {}, Lmtopsdk/security/util/SignStatistics;->registerStats()V

    .line 83
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 84
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "errorcode"

    .line 85
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "flag"

    .line 86
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object p0, Lmtopsdk/security/util/SignStatistics;->mUploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    if-eqz p0, :cond_2

    .line 89
    sget-object p0, Lmtopsdk/security/util/SignStatistics;->mUploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    const/4 p1, 0x0

    const-string p2, "mtopsdk"

    const-string v1, "signException"

    invoke-interface {p0, p2, v1, v0, p1}, Lmtopsdk/mtop/stat/IUploadStats;->onCommit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method private static registerStats()V
    .locals 6

    .line 59
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v0, "type"

    .line 60
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "errorcode"

    .line 61
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "flag"

    .line 62
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lmtopsdk/security/util/SignStatistics;->mUploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lmtopsdk/security/util/SignStatistics;->mUploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "mtopsdk"

    const-string v2, "signException"

    invoke-interface/range {v0 .. v5}, Lmtopsdk/mtop/stat/IUploadStats;->onRegister(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Z)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setIUploadStats(Lmtopsdk/mtop/stat/IUploadStats;)V
    .locals 2

    .line 53
    sput-object p0, Lmtopsdk/security/util/SignStatistics;->mUploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set IUploadStats ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mtopsdk.SignStatistics"

    invoke-static {v0, p0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
