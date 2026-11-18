.class final Lcom/alibaba/ailabs/genie/logger/sdk/GLog$1;
.super Ljava/lang/Object;
.source "GLog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 150
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->access$202(Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;)Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    .line 152
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->access$300()Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    move-result-object p1

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->access$200()Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->setBinder(Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;)V

    .line 154
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->access$200()Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->access$400()Landroid/os/IBinder$DeathRecipient;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->access$100()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p1, 0x0

    .line 162
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->access$202(Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;)Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    .line 163
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->access$500()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
