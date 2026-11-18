.class public abstract Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;
.super Ljava/lang/Object;
.source "AbsCommandController.java"


# instance fields
.field public currentSequence:Ljava/lang/String;

.field public opCode:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;->opCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInstructionHandler()Lcom/taobao/tao/log/godeye/api/command/InstructionHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartJointPointCallback()Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStopJointPointCallback()Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
