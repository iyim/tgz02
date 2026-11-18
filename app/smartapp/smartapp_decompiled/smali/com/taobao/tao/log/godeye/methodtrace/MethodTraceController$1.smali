.class Lcom/taobao/tao/log/godeye/methodtrace/MethodTraceController$1;
.super Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;
.source "MethodTraceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/tao/log/godeye/methodtrace/MethodTraceController;->installTraceTask(Lcom/taobao/tao/log/godeye/api/command/TraceTask;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/tao/log/godeye/methodtrace/MethodTraceController;


# direct methods
.method constructor <init>(Lcom/taobao/tao/log/godeye/methodtrace/MethodTraceController;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/taobao/tao/log/godeye/methodtrace/MethodTraceController$1;->this$0:Lcom/taobao/tao/log/godeye/methodtrace/MethodTraceController;

    invoke-direct {p0}, Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public doCallback()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/taobao/tao/log/godeye/methodtrace/MethodTraceController$1;->this$0:Lcom/taobao/tao/log/godeye/methodtrace/MethodTraceController;

    invoke-virtual {v0}, Lcom/taobao/tao/log/godeye/methodtrace/MethodTraceController;->startTask()V

    return-void
.end method
