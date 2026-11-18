.class public Lcom/alibaba/analytics/core/config/DebugPluginSwitch;
.super Ljava/lang/Object;
.source "DebugPluginSwitch.java"

# interfaces
.implements Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "sw_plugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sw_plugin"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 17
    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 19
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    .line 22
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/analytics/core/Variables;->turnOffDebugPlugin()V

    :cond_0
    return-void
.end method
