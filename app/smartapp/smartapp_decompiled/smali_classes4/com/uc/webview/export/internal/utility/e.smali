.class public final Lcom/uc/webview/export/internal/utility/e;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field private static c:Lcom/uc/webview/export/internal/utility/e;


# instance fields
.field private final a:I

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 13
    iput v0, p0, Lcom/uc/webview/export/internal/utility/e;->a:I

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/uc/webview/export/internal/utility/e;
    .locals 2

    .line 33
    sget-object v0, Lcom/uc/webview/export/internal/utility/e;->c:Lcom/uc/webview/export/internal/utility/e;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/uc/webview/export/internal/utility/e;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/utility/e;->c:Lcom/uc/webview/export/internal/utility/e;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/uc/webview/export/internal/utility/e;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/utility/e;-><init>()V

    sput-object v1, Lcom/uc/webview/export/internal/utility/e;->c:Lcom/uc/webview/export/internal/utility/e;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/uc/webview/export/internal/utility/e;->c:Lcom/uc/webview/export/internal/utility/e;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
