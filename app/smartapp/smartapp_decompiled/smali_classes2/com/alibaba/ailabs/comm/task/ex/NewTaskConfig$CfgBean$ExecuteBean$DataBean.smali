.class public Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean$DataBean;
.super Ljava/lang/Object;
.source "NewTaskConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private Control:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getControl()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean$DataBean;->Control:I

    return v0
.end method

.method public setControl(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean$DataBean;->Control:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Control="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig$CfgBean$ExecuteBean$DataBean;->Control:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
