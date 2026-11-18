.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;
.super Ljava/lang/Object;
.source "QueryRightRecordBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelList"
.end annotation


# instance fields
.field private model:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;",
            ">;"
        }
    .end annotation
.end field

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;->model:Ljava/util/List;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;->success:Z

    return v0
.end method

.method public setModel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;->model:Ljava/util/List;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;->success:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelList{model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;->model:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelList;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
