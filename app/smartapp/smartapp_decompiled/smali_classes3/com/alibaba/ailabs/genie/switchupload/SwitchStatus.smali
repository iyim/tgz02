.class public Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;
.super Ljava/lang/Object;
.source "SwitchStatus.java"


# instance fields
.field private switchKey:Ljava/lang/String;

.field private switchValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getSwitchKey()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;->switchKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSwitchValue()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;->switchValue:I

    return v0
.end method

.method public setSwitchKey(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;->switchKey:Ljava/lang/String;

    return-void
.end method

.method public setSwitchValue(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;->switchValue:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwitchStatus{switchKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;->switchKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", switchValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatus;->switchValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
