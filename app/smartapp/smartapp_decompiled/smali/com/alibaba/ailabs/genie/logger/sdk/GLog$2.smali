.class final Lcom/alibaba/ailabs/genie/logger/sdk/GLog$2;
.super Ljava/lang/Object;
.source "GLog.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/logger/sdk/GLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 171
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->access$200()Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 172
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied, sLoggerService is null, return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 175
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->access$200()Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 176
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->access$500()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
