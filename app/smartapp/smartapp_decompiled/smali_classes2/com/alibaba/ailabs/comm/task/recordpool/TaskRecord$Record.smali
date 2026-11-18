.class public Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation


# instance fields
.field private dayTime:J

.field private hours:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDayTime()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;->dayTime:J

    return-wide v0
.end method

.method public getHours()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;->hours:Ljava/util/Set;

    return-object v0
.end method

.method public setDayTime(J)V
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;->dayTime:J

    return-void
.end method

.method public setHours(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;->hours:Ljava/util/Set;

    return-void
.end method
