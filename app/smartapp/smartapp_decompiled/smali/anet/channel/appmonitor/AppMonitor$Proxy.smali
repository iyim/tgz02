.class Lanet/channel/appmonitor/AppMonitor$Proxy;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Lanet/channel/appmonitor/IAppMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/appmonitor/AppMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# instance fields
.field appMonitor:Lanet/channel/appmonitor/IAppMonitor;


# direct methods
.method constructor <init>(Lanet/channel/appmonitor/IAppMonitor;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lanet/channel/appmonitor/AppMonitor$Proxy;->appMonitor:Lanet/channel/appmonitor/IAppMonitor;

    .line 30
    iput-object p1, p0, Lanet/channel/appmonitor/AppMonitor$Proxy;->appMonitor:Lanet/channel/appmonitor/IAppMonitor;

    return-void
.end method


# virtual methods
.method public commitAlarm(Lanet/channel/statist/AlarmObject;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lanet/channel/appmonitor/AppMonitor$Proxy;->appMonitor:Lanet/channel/appmonitor/IAppMonitor;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1}, Lanet/channel/appmonitor/IAppMonitor;->commitAlarm(Lanet/channel/statist/AlarmObject;)V

    :cond_0
    return-void
.end method

.method public commitCount(Lanet/channel/statist/CountObject;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lanet/channel/appmonitor/AppMonitor$Proxy;->appMonitor:Lanet/channel/appmonitor/IAppMonitor;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p1}, Lanet/channel/appmonitor/IAppMonitor;->commitCount(Lanet/channel/statist/CountObject;)V

    :cond_0
    return-void
.end method

.method public commitStat(Lanet/channel/statist/StatObject;)V
    .locals 1

    .line 43
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->access$000()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->access$000()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    invoke-interface {v0, p1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lanet/channel/appmonitor/AppMonitor$Proxy;->appMonitor:Lanet/channel/appmonitor/IAppMonitor;

    if-eqz v0, :cond_1

    .line 48
    invoke-interface {v0, p1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    :cond_1
    return-void
.end method

.method public register()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public register(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
