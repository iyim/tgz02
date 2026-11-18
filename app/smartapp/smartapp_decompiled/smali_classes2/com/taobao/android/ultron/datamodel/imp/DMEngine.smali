.class public Lcom/taobao/android/ultron/datamodel/imp/DMEngine;
.super Ljava/lang/Object;
.source "DMEngine.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final ENCODE_UTF8:Ljava/lang/String; = "utf-8"

.field private static final TAG:Ljava/lang/String; = "DMEngine"


# instance fields
.field mGzip:Z

.field private mParseModule:Lcom/taobao/android/ultron/datamodel/imp/ParseModule;

.field private mSubmitModule:Lcom/taobao/android/ultron/datamodel/ISubmitModule;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;

    invoke-direct {v0}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->mParseModule:Lcom/taobao/android/ultron/datamodel/imp/ParseModule;

    .line 27
    new-instance v0, Lcom/taobao/android/ultron/datamodel/imp/SubmitModule;

    invoke-direct {v0}, Lcom/taobao/android/ultron/datamodel/imp/SubmitModule;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->mSubmitModule:Lcom/taobao/android/ultron/datamodel/ISubmitModule;

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->mGzip:Z

    .line 32
    iput-boolean p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->mGzip:Z

    return-void
.end method

.method private static compress(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-eqz p0, :cond_4

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 99
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 104
    :try_start_0
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "utf-8"

    .line 105
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v5, v3

    :goto_0
    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 115
    :catch_0
    :cond_1
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_1
    move-object v5, v3

    :catch_2
    if-eqz v5, :cond_2

    .line 111
    :try_start_5
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    goto :goto_3

    :catch_3
    :cond_2
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    .line 125
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    return-object v0

    .line 121
    :cond_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 125
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 131
    :catch_5
    invoke-static {p0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 125
    :goto_3
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 129
    :catch_6
    throw p0

    :cond_4
    :goto_4
    return-object v0
.end method


# virtual methods
.method public asyncRequestData(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->mSubmitModule:Lcom/taobao/android/ultron/datamodel/ISubmitModule;

    invoke-interface {v0, p1, p2}, Lcom/taobao/android/ultron/datamodel/ISubmitModule;->asyncRequestData(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/taobao/android/ultron/common/model/IDMComponent;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 68
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 69
    new-array p2, p2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asyncRequestData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "DMEngine"

    invoke-static {v0, p2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 70
    iget-boolean p2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->mGzip:Z

    if-eqz p2, :cond_0

    .line 71
    invoke-static {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->compress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method getComponentsByRoot(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/ultron/datamodel/imp/DMContext;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->mParseModule:Lcom/taobao/android/ultron/datamodel/imp/ParseModule;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getComponentsByRoot(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getRootComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->mParseModule:Lcom/taobao/android/ultron/datamodel/imp/ParseModule;

    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getRootComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v0

    return-object v0
.end method

.method parseProcess(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->mParseModule:Lcom/taobao/android/ultron/datamodel/imp/ParseModule;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->parseComponents(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public setSubmitModule(Lcom/taobao/android/ultron/datamodel/ISubmitModule;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->mSubmitModule:Lcom/taobao/android/ultron/datamodel/ISubmitModule;

    :cond_0
    return-void
.end method

.method public submitRequestData(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)Ljava/lang/String;
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->mSubmitModule:Lcom/taobao/android/ultron/datamodel/ISubmitModule;

    invoke-interface {v0, p1}, Lcom/taobao/android/ultron/datamodel/ISubmitModule;->submitRequestData(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 80
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 81
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submitRequestData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "DMEngine"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 82
    iget-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->mGzip:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->compress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
