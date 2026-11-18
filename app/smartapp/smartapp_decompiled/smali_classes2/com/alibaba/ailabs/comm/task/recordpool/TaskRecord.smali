.class public Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$Record;,
        Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;
    }
.end annotation


# instance fields
.field private pkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;->pkgList:Ljava/util/List;

    return-object v0
.end method

.method public setPkgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord$PkgList;",
            ">;)V"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/recordpool/TaskRecord;->pkgList:Ljava/util/List;

    return-void
.end method
