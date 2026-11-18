.class public Lcom/alibaba/ailabs/appbox/childmodel/common/ProfilerTool;
.super Ljava/lang/Object;
.source "ProfilerTool.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfilerTool"

.field private static isDebug:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static startMethodTracingSampling(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ProfilerTool"

    const-string/jumbo v1, "startMethodTracingSampling() called"

    .line 14
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-boolean v1, Lcom/alibaba/ailabs/appbox/childmodel/common/ProfilerTool;->isDebug:Z

    if-nez v1, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const-string/jumbo v1, "startMethodTracingSampling: call Debug.startMethodTracingSampling(), it\'s only run in debug mode."

    .line 20
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const/high16 v0, 0xa00000

    const/16 v1, 0x3e8

    .line 22
    invoke-static {p0, v0, v1}, Landroid/os/Debug;->startMethodTracingSampling(Ljava/lang/String;II)V

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static stopMethodTracing()V
    .locals 2

    const-string v0, "ProfilerTool"

    const-string/jumbo v1, "stopMethodTracing() called"

    .line 27
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-boolean v1, Lcom/alibaba/ailabs/appbox/childmodel/common/ProfilerTool;->isDebug:Z

    if-nez v1, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const-string/jumbo v1, "startMethodTracingSampling: call Debug.stopMethodTracing(), it\'s only run in debug mode."

    .line 33
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
