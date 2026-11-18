.class public Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;
.super Ljava/lang/Object;
.source "NewTaskConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExecuteBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean$DataBean;
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private data:Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean$DataBean;

.field private launchMode:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mode:Ljava/lang/String;

.field private pkg:Ljava/lang/String;

.field private policy:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean$DataBean;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->data:Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean$DataBean;

    return-object v0
.end method

.method public getLaunchMode()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->launchMode:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicy()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->policy:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->action:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean$DataBean;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->data:Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean$DataBean;

    return-void
.end method

.method public setLaunchMode(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->launchMode:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->list:Ljava/util/List;

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->mode:Ljava/lang/String;

    return-void
.end method

.method public setPkg(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->pkg:Ljava/lang/String;

    return-void
.end method

.method public setPolicy(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->policy:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->policy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " launchMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->launchMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->data:Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean$DataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
