.class public Lcom/uc/webview/export/internal/utility/Log;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# static fields
.field private static a:Z = false

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/uc/webview/export/cyclone/UCLogger;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/utility/Log;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lcom/uc/webview/export/internal/utility/Log;->c:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;
    .locals 1

    .line 32
    invoke-static {p0, p1}, Lcom/uc/webview/export/cyclone/UCLogger;->enable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 33
    sget-object p1, Lcom/uc/webview/export/internal/utility/Log;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    sget-object p1, Lcom/uc/webview/export/internal/utility/Log;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/cyclone/UCLogger;

    return-object p0

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object p1

    .line 37
    sget-object v0, Lcom/uc/webview/export/internal/utility/Log;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "d"

    .line 53
    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 55
    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, p0, p1, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "d"

    .line 67
    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 69
    new-array v1, v1, [Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, p1, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "e"

    .line 80
    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 82
    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, p0, p1, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "e"

    .line 94
    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 96
    new-array v1, v1, [Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, p1, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static enableUCLogger()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/Log;->a:Z

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "i"

    .line 107
    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 109
    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, p0, p1, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "i"

    .line 120
    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 122
    new-array v1, v1, [Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, p1, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static rInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-static {p0, p1, v0}, Lcom/uc/webview/export/internal/utility/Log;->rInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static rInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 168
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/Log;->c:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-static {p0, p1, p2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/uc/webview/export/cyclone/UCCyclone;->logExtraTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "i"

    .line 173
    invoke-static {v0, p0, p1, p2}, Lcom/uc/webview/export/cyclone/UCLogger;->addLogItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setPrintLog(Z[Ljava/lang/Object;)V
    .locals 2

    .line 154
    sput-boolean p0, Lcom/uc/webview/export/internal/utility/Log;->a:Z

    if-eqz p1, :cond_0

    .line 156
    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 157
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v0

    .line 158
    invoke-static {p1}, Lcom/uc/webview/export/cyclone/UCLogger;->setup([Ljava/lang/Object;)V

    const/4 p0, 0x1

    .line 159
    sput-boolean p0, Lcom/uc/webview/export/internal/utility/Log;->c:Z

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "w"

    .line 133
    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 135
    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, p0, p1, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "w"

    .line 147
    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 149
    new-array v1, v1, [Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, p1, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
