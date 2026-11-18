.class public final Lcom/alibaba/ailabs/genie/second/agds/AGDSParser;
.super Ljava/lang/Object;
.source "AGDSParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;,
        Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ResultWrap;,
        Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$IResultPayloadGJsonElementParser;,
        Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ErrorInfo;
    }
.end annotation


# static fields
.field public static final ERROR_CODE__1:Ljava/lang/String; = "-11"

.field public static final ERROR_CODE__1_INFO:Ljava/lang/String; = "No json data"

.field public static final ERROR_CODE__2:Ljava/lang/String; = "-12"

.field public static final ERROR_CODE__2_INFO:Ljava/lang/String; = "No payload"

.field public static final ERROR_CODE__3:Ljava/lang/String; = "-13"

.field public static final ERROR_CODE__3_INFO:Ljava/lang/String; = "Result json parse error: "

.field public static final ERROR_CODE__4:Ljava/lang/String; = "-14"

.field public static final ERROR_CODE__4_INFO:Ljava/lang/String; = "Request parse error: "

.field private static final TAG:Ljava/lang/String; = "AGDSParser"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static convertIMTOPDataObject(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;
    .locals 6

    .line 118
    new-instance v0, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;-><init>()V

    .line 120
    :try_start_0
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 122
    sget-object v2, Lcom/alibaba/ailabs/genie/second/utils/GsonUtils;->ourGSON:Lcom/google/gson/Gson;

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v2, "API_NAME"

    .line 124
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;->api:Ljava/lang/String;

    const-string v2, "api"

    .line 125
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;->api:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "NEED_SESSION"

    .line 127
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    const-string v2, "NEED_ECODE"

    .line 128
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    const-string v2, "apiName"

    .line 131
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    const-string v2, "version"

    .line 132
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    const-string v2, "needEcode"

    .line 133
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    const-string v2, "needSession"

    .line 134
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    const-string v2, "dataParams"

    .line 135
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    const-string v2, "VERSION"

    .line 138
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "v"

    .line 139
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "1.0"

    :goto_0
    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 142
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 143
    invoke-virtual {p0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_1

    :cond_1
    const-string p0, "data"

    .line 145
    invoke-virtual {v1, p0, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 155
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;->payload:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method private static convertMtopRequest(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;
    .locals 4

    .line 73
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser;->convertIMTOPDataObject(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;

    move-result-object p0

    return-object p0

    .line 80
    :cond_0
    new-instance v1, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;-><init>()V

    .line 82
    :try_start_0
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 83
    iput-object v0, v1, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;->api:Ljava/lang/String;

    const-string v0, "v"

    .line 84
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "api"

    .line 85
    iget-object v3, v1, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;->api:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopRequest;->getData()Ljava/lang/String;

    move-result-object p0

    .line 88
    sget-object v0, Lcom/alibaba/ailabs/genie/second/utils/GsonUtils;->ourGSON:Lcom/google/gson/Gson;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;

    const-string v0, "data"

    .line 89
    invoke-virtual {v2, v0, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "httpMethod"

    .line 92
    invoke-virtual {v2, p0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_1
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;->payload:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "-14"

    .line 105
    iput-object p1, v1, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;->errorCode:Ljava/lang/String;

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request parse error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;->errorMsg:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public static convertRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;
    .locals 1
    .param p0    # Lmtopsdk/mtop/domain/IMTOPDataObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 62
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser;->convertRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;

    move-result-object p0

    return-object p0
.end method

.method public static convertRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;
    .locals 1
    .param p0    # Lmtopsdk/mtop/domain/IMTOPDataObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 66
    instance-of v0, p0, Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v0, :cond_0

    .line 67
    nop

    nop

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser;->convertMtopRequest(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser;->convertIMTOPDataObject(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$RequestWrap;

    move-result-object p0

    return-object p0
.end method

.method public static parseResult(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$IResultPayloadGJsonElementParser;)Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ResultWrap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$IResultPayloadGJsonElementParser<",
            "TT;>;)",
            "Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ResultWrap<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "errorMsg"

    const-string v1, "errorCode"

    .line 175
    new-instance v2, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ResultWrap;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ResultWrap;-><init>()V

    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    .line 181
    :try_start_0
    sget-object v4, Lcom/alibaba/ailabs/genie/second/utils/GsonUtils;->ourGSON:Lcom/google/gson/Gson;

    const-class v5, Lcom/google/gson/JsonElement;

    invoke-virtual {v4, p1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v4, "commands"

    .line 182
    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v3

    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonElement;

    .line 185
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "payload"

    .line 187
    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x0

    .line 190
    invoke-virtual {v5, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    .line 192
    invoke-virtual {v5, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    .line 194
    :cond_1
    invoke-virtual {v5, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 196
    invoke-virtual {v5, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    :cond_2
    if-nez v6, :cond_0

    .line 200
    invoke-interface {p2, v5}, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$IResultPayloadGJsonElementParser;->parse(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v2, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ResultWrap;->yours:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v4, v3

    .line 207
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    if-nez v3, :cond_4

    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Result json parse error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "-13"

    move-object v4, p1

    move-object v3, p2

    goto :goto_1

    :cond_3
    const-string v4, "No json data"

    const-string v3, "-11"

    .line 218
    :cond_4
    :goto_1
    iget-object p1, v2, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ResultWrap;->yours:Ljava/lang/Object;

    if-nez p1, :cond_6

    if-nez v3, :cond_5

    const-string v3, "-12"

    const-string v4, "No payload"

    .line 224
    :cond_5
    new-instance p1, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ErrorInfo;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ErrorInfo;-><init>()V

    iput-object p1, v2, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ResultWrap;->errorInfo:Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ErrorInfo;

    .line 225
    iget-object p1, v2, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ResultWrap;->errorInfo:Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ErrorInfo;

    iput-object p0, p1, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ErrorInfo;->api:Ljava/lang/String;

    .line 226
    iget-object p0, v2, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ResultWrap;->errorInfo:Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ErrorInfo;

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ErrorInfo;->errorCode:Ljava/lang/String;

    .line 227
    iget-object p0, v2, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ResultWrap;->errorInfo:Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ErrorInfo;

    iput-object v4, p0, Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$ErrorInfo;->errorInfo:Ljava/lang/String;

    :cond_6
    return-object v2
.end method
