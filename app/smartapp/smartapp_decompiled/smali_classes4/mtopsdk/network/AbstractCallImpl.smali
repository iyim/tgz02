.class public abstract Lmtopsdk/network/AbstractCallImpl;
.super Ljava/lang/Object;
.source "AbstractCallImpl.java"

# interfaces
.implements Lmtopsdk/network/Call;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.AbstractCallImpl"

.field protected static flag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile isDebugApk:Z

.field public static volatile isOpenMock:Z


# instance fields
.field protected volatile canceled:Z

.field protected future:Ljava/util/concurrent/Future;

.field protected mContext:Landroid/content/Context;

.field protected mRequest:Lmtopsdk/network/domain/Request;

.field protected seqNo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lmtopsdk/network/AbstractCallImpl;->flag:Ljava/util/concurrent/atomic/AtomicBoolean;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Lmtopsdk/network/domain/Request;Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lmtopsdk/network/AbstractCallImpl;->mRequest:Lmtopsdk/network/domain/Request;

    .line 48
    iget-object p1, p0, Lmtopsdk/network/AbstractCallImpl;->mRequest:Lmtopsdk/network/domain/Request;

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p1, Lmtopsdk/network/domain/Request;->seqNo:Ljava/lang/String;

    iput-object p1, p0, Lmtopsdk/network/AbstractCallImpl;->seqNo:Ljava/lang/String;

    .line 51
    :cond_0
    iput-object p2, p0, Lmtopsdk/network/AbstractCallImpl;->mContext:Landroid/content/Context;

    .line 52
    iget-object p1, p0, Lmtopsdk/network/AbstractCallImpl;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 53
    sget-object p1, Lmtopsdk/network/AbstractCallImpl;->flag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, Lmtopsdk/network/AbstractCallImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmtopsdk/common/util/MtopUtils;->isApkDebug(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lmtopsdk/network/AbstractCallImpl;->isDebugApk:Z

    .line 55
    iget-object p1, p0, Lmtopsdk/network/AbstractCallImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmtopsdk/common/util/MtopUtils;->isAppOpenMock(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lmtopsdk/network/AbstractCallImpl;->isOpenMock:Z

    .line 56
    iget-object p1, p0, Lmtopsdk/network/AbstractCallImpl;->seqNo:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDebugApk="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lmtopsdk/network/AbstractCallImpl;->isDebugApk:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isOpenMock="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lmtopsdk/network/AbstractCallImpl;->isOpenMock:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mtopsdk.AbstractCallImpl"

    invoke-static {v0, p1, p2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected buildResponse(Lmtopsdk/network/domain/Request;ILjava/lang/String;Ljava/util/Map;[BLmtopsdk/network/domain/NetworkStats;)Lmtopsdk/network/domain/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/network/domain/Request;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B",
            "Lmtopsdk/network/domain/NetworkStats;",
            ")",
            "Lmtopsdk/network/domain/Response;"
        }
    .end annotation

    .line 157
    new-instance v0, Lmtopsdk/network/AbstractCallImpl$1;

    invoke-direct {v0, p0, p4, p5}, Lmtopsdk/network/AbstractCallImpl$1;-><init>(Lmtopsdk/network/AbstractCallImpl;Ljava/util/Map;[B)V

    .line 181
    new-instance p5, Lmtopsdk/network/domain/Response$Builder;

    invoke-direct {p5}, Lmtopsdk/network/domain/Response$Builder;-><init>()V

    invoke-virtual {p5, p1}, Lmtopsdk/network/domain/Response$Builder;->request(Lmtopsdk/network/domain/Request;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmtopsdk/network/domain/Response$Builder;->code(I)Lmtopsdk/network/domain/Response$Builder;

    move-result-object p1

    .line 182
    invoke-virtual {p1, p3}, Lmtopsdk/network/domain/Response$Builder;->message(Ljava/lang/String;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lmtopsdk/network/domain/Response$Builder;->headers(Ljava/util/Map;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmtopsdk/network/domain/Response$Builder;->body(Lmtopsdk/network/domain/ResponseBody;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object p1

    invoke-virtual {p1, p6}, Lmtopsdk/network/domain/Response$Builder;->stat(Lmtopsdk/network/domain/NetworkStats;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmtopsdk/network/domain/Response$Builder;->build()Lmtopsdk/network/domain/Response;

    move-result-object p1

    return-object p1
.end method

.method public cancel()V
    .locals 2

    .line 68
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mtopsdk.AbstractCallImpl"

    const-string v1, "try to cancel call."

    .line 69
    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lmtopsdk/network/AbstractCallImpl;->canceled:Z

    .line 72
    iget-object v1, p0, Lmtopsdk/network/AbstractCallImpl;->future:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    .line 73
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method protected getMockResponse(Ljava/lang/String;)Lmtopsdk/mtop/domain/MockResponse;
    .locals 9

    const-string v0, "mtopsdk.AbstractCallImpl"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lmtopsdk/network/AbstractCallImpl;->seqNo:Ljava/lang/String;

    const-string v2, "[getMockResponse] apiName is null!"

    invoke-static {v0, p1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 89
    :cond_0
    iget-object v2, p0, Lmtopsdk/network/AbstractCallImpl;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 90
    iget-object p1, p0, Lmtopsdk/network/AbstractCallImpl;->seqNo:Ljava/lang/String;

    const-string v2, "[getMockResponse] mContext is null!"

    invoke-static {v0, p1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 97
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmtopsdk/network/AbstractCallImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/mock/deMock/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 103
    invoke-static {v2}, Lmtopsdk/common/util/MtopUtils;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_4

    .line 108
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance v2, Lmtopsdk/mtop/domain/MockResponse;

    invoke-direct {v2}, Lmtopsdk/mtop/domain/MockResponse;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :try_start_2
    iput-object p1, v2, Lmtopsdk/mtop/domain/MockResponse;->api:Ljava/lang/String;

    const-string v1, "mock_body"

    .line 114
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v4, "utf-8"

    .line 116
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v2, Lmtopsdk/mtop/domain/MockResponse;->byteData:[B

    :cond_2
    const-string v1, "response_header"

    .line 120
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 122
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v2, Lmtopsdk/mtop/domain/MockResponse;->headers:Ljava/util/Map;

    .line 123
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 124
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 125
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 126
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 127
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v6, v2, Lmtopsdk/mtop/domain/MockResponse;->headers:Ljava/util/Map;

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v1, "response_status"

    .line 133
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lmtopsdk/mtop/domain/MockResponse;->statusCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 139
    :goto_1
    iget-object v3, p0, Lmtopsdk/network/AbstractCallImpl;->seqNo:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getMockData] get MockData error.api="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    move-object v2, v1

    :cond_5
    :goto_2
    return-object v2

    :catch_2
    move-exception v2

    .line 99
    iget-object v3, p0, Lmtopsdk/network/AbstractCallImpl;->seqNo:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getMockResponse] parse ExternalFilesDir/mock/deMock/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json filePath error."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public request()Lmtopsdk/network/domain/Request;
    .locals 1

    .line 63
    iget-object v0, p0, Lmtopsdk/network/AbstractCallImpl;->mRequest:Lmtopsdk/network/domain/Request;

    return-object v0
.end method
