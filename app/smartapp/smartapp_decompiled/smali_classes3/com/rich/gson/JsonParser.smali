.class public final Lcom/rich/gson/JsonParser;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public parse(Lcom/rich/gson/stream/JsonReader;)Lcom/rich/gson/JsonElement;
    .locals 6

    const-string v0, " to Json"

    const-string v1, "Failed parsing JSON source: "

    invoke-virtual {p1}, Lcom/rich/gson/stream/JsonReader;->isLenient()Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/rich/gson/stream/JsonReader;->setLenient(Z)V

    :try_start_0
    invoke-static {p1}, Lcom/rich/gson/internal/Streams;->parse(Lcom/rich/gson/stream/JsonReader;)Lcom/rich/gson/JsonElement;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v2}, Lcom/rich/gson/stream/JsonReader;->setLenient(Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v4, Lcom/rich/gson/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/rich/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    new-instance v4, Lcom/rich/gson/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/rich/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p1, v2}, Lcom/rich/gson/stream/JsonReader;->setLenient(Z)V

    throw v0
.end method

.method public parse(Ljava/io/Reader;)Lcom/rich/gson/JsonElement;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/rich/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/rich/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lcom/rich/gson/JsonParser;->parse(Lcom/rich/gson/stream/JsonReader;)Lcom/rich/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rich/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/rich/gson/stream/JsonReader;->peek()Lcom/rich/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/rich/gson/stream/JsonToken;->END_DOCUMENT:Lcom/rich/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/rich/gson/JsonSyntaxException;

    const-string v0, "Did not consume the entire document."

    invoke-direct {p1, v0}, Lcom/rich/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/rich/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/rich/gson/JsonSyntaxException;

    invoke-direct {v0, p1}, Lcom/rich/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/rich/gson/JsonIOException;

    invoke-direct {v0, p1}, Lcom/rich/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Lcom/rich/gson/JsonSyntaxException;

    invoke-direct {v0, p1}, Lcom/rich/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public parse(Ljava/lang/String;)Lcom/rich/gson/JsonElement;
    .locals 1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/rich/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/rich/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
