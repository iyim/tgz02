.class public Lanet/channel/util/RequestPriorityTable;
.super Ljava/lang/Object;
.source "RequestPriorityTable.java"


# static fields
.field private static extPriorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanet/channel/util/RequestPriorityTable;->extPriorityMap:Ljava/util/Map;

    .line 28
    sget-object v0, Lanet/channel/util/RequestPriorityTable;->extPriorityMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tpatch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lanet/channel/util/RequestPriorityTable;->extPriorityMap:Ljava/util/Map;

    const-string/jumbo v2, "so"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lanet/channel/util/RequestPriorityTable;->extPriorityMap:Ljava/util/Map;

    const-string v2, "json"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lanet/channel/util/RequestPriorityTable;->extPriorityMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "html"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lanet/channel/util/RequestPriorityTable;->extPriorityMap:Ljava/util/Map;

    const-string v2, "htm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lanet/channel/util/RequestPriorityTable;->extPriorityMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "css"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lanet/channel/util/RequestPriorityTable;->extPriorityMap:Ljava/util/Map;

    const-string v2, "js"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lanet/channel/util/RequestPriorityTable;->extPriorityMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "webp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lanet/channel/util/RequestPriorityTable;->extPriorityMap:Ljava/util/Map;

    const-string v2, "png"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lanet/channel/util/RequestPriorityTable;->extPriorityMap:Ljava/util/Map;

    const-string v2, "jpg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lanet/channel/util/RequestPriorityTable;->extPriorityMap:Ljava/util/Map;

    const-string v2, "do"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lanet/channel/util/RequestPriorityTable;->extPriorityMap:Ljava/util/Map;

    sget v1, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->LOW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "zip"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lanet/channel/util/RequestPriorityTable;->extPriorityMap:Ljava/util/Map;

    sget v1, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->LOW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lanet/channel/util/RequestPriorityTable;->extPriorityMap:Ljava/util/Map;

    sget v1, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->LOW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "apk"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static lookup(Lanet/channel/request/Request;)I
    .locals 2

    if-eqz p0, :cond_3

    .line 52
    invoke-virtual {p0}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "x-pv"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lanet/channel/request/Request;->getHttpUrl()Lanet/channel/util/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lanet/channel/util/HttpUrl;->path()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lanet/channel/util/HttpHelper;->trySolveFileExtFromUrlPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    if-nez p0, :cond_1

    return v0

    .line 61
    :cond_1
    sget-object v1, Lanet/channel/util/RequestPriorityTable;->extPriorityMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    .line 63
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    return v0

    .line 49
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "url is null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
