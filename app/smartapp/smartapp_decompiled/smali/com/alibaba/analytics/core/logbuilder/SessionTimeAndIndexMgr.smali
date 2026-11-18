.class public Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;
.super Ljava/lang/Object;
.source "SessionTimeAndIndexMgr.java"


# static fields
.field private static instance:Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;


# instance fields
.field private final m2202LogIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mLogIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSessionTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->instance:Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->mLogIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->m2202LogIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->mSessionTime:J

    return-void
.end method

.method public static getInstance()Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;
    .locals 1

    .line 26
    sget-object v0, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->instance:Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;

    return-object v0
.end method


# virtual methods
.method public getSessionTimestamp()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->mSessionTime:J

    return-wide v0
.end method

.method public logIndexIncrementAndGet()J
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->mLogIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public m2202LogIndexIncrementAndGet()J
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->m2202LogIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public sessionTimeout()V
    .locals 4

    const/4 v0, 0x1

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "changeSession"

    aput-object v2, v0, v1

    const-string v2, "SessionTimeAndIndexMgr"

    invoke-static {v2, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->mSessionTime:J

    .line 40
    iget-object v0, p0, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->mLogIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 41
    iget-object v0, p0, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->m2202LogIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
