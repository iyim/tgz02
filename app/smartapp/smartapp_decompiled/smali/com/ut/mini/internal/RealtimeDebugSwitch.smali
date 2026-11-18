.class public Lcom/ut/mini/internal/RealtimeDebugSwitch;
.super Ljava/lang/Object;
.source "RealtimeDebugSwitch.java"

# interfaces
.implements Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;


# static fields
.field static i:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 7

    .line 30
    sget p2, Lcom/ut/mini/internal/RealtimeDebugSwitch;->i:I

    if-nez p2, :cond_3

    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string/jumbo v4, "ut."

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "debugkey"

    .line 37
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "from"

    .line 38
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "debug_api_url"

    const-string v1, "http://muvp.alibaba-inc.com/online/UploadRecords.do"

    .line 41
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "debug_key"

    .line 42
    invoke-interface {p2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-interface {p2, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "debug_sampling_option"

    const-string/jumbo v0, "true"

    .line 44
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ut/mini/internal/UTTeamWork;->turnOnRealTimeDebug(Ljava/util/Map;)V

    goto :goto_0

    .line 47
    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "scheme"

    aput-object v1, p1, v0

    aput-object v3, p1, p2

    invoke-static {v2, p1}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "uri"

    aput-object v3, v1, v0

    aput-object p1, v1, p2

    invoke-static {v2, v1}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_2
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "i "

    aput-object v3, v1, v0

    aput-object p1, v1, p2

    invoke-static {v2, v1}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 65
    sget p1, Lcom/ut/mini/internal/RealtimeDebugSwitch;->i:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/ut/mini/internal/RealtimeDebugSwitch;->i:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 70
    sget p1, Lcom/ut/mini/internal/RealtimeDebugSwitch;->i:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/ut/mini/internal/RealtimeDebugSwitch;->i:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSwitchBackground()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSwitchForeground()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
