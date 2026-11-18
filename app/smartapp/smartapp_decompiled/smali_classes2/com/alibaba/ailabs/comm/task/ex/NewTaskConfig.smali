.class public Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;
.super Ljava/lang/Object;
.source "NewTaskConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean;
    }
.end annotation


# instance fields
.field private cfg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean;",
            ">;"
        }
    .end annotation
.end field

.field private enable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCfg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;->cfg:Ljava/util/List;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;->enable:Z

    return v0
.end method

.method public setCfg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;->cfg:Ljava/util/List;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;->enable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " cfg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;->cfg:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
