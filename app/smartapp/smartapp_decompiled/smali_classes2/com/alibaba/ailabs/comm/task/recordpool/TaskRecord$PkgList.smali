.class public Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PkgList"
.end annotation


# instance fields
.field private oldestDay:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field private oldestRecord:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field private pkg:Ljava/lang/String;

.field private record:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getOldestDay()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->oldestDay:J

    return-wide v0
.end method

.method public getOldestRecord()Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->oldestRecord:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;

    return-object v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getRecord()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->record:Ljava/util/List;

    return-object v0
.end method

.method public setOldestDay(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->oldestDay:J

    return-void
.end method

.method public setOldestRecord(Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->oldestRecord:Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;

    return-void
.end method

.method public setPkg(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->pkg:Ljava/lang/String;

    return-void
.end method

.method public setRecord(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;->record:Ljava/util/List;

    return-void
.end method
