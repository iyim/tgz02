.class public Lanet/channel/util/HttpUrl;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# instance fields
.field private host:Ljava/lang/String;

.field private volatile isSchemeLocked:Z

.field private path:Ljava/lang/String;

.field private port:I

.field private scheme:Ljava/lang/String;

.field private simpleUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lanet/channel/util/HttpUrl;->isSchemeLocked:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lanet/channel/util/HttpUrl;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lanet/channel/util/HttpUrl;->isSchemeLocked:Z

    .line 26
    iget-object v0, p1, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lanet/channel/util/HttpUrl;->host:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/util/HttpUrl;->host:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lanet/channel/util/HttpUrl;->path:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/util/HttpUrl;->path:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lanet/channel/util/HttpUrl;->simpleUrl:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/util/HttpUrl;->simpleUrl:Ljava/lang/String;

    .line 31
    iget-boolean p1, p1, Lanet/channel/util/HttpUrl;->isSchemeLocked:Z

    iput-boolean p1, p0, Lanet/channel/util/HttpUrl;->isSchemeLocked:Z

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;
    .locals 15

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 40
    new-instance v0, Lanet/channel/util/HttpUrl;

    invoke-direct {v0}, Lanet/channel/util/HttpUrl;-><init>()V

    .line 41
    iput-object p0, v0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    const-string v2, "//"

    .line 44
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v8, "http"

    const-string v9, "https"

    const/4 v10, 0x0

    if-eqz v2, :cond_1

    .line 45
    iput-object v1, v0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v4, 0x0

    const-string v5, "https:"

    move-object v2, p0

    .line 46
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    iput-object v9, v0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    const/4 v2, 0x6

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v4, 0x0

    const-string v5, "http:"

    move-object v2, p0

    .line 49
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 50
    iput-object v8, v0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    const/4 v2, 0x5

    .line 56
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v2, 0x2

    move v4, v2

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x3a

    const/16 v7, 0x23

    const/16 v11, 0x3f

    const/16 v12, 0x2f

    if-ge v4, v3, :cond_7

    .line 63
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5b

    if-ne v13, v14, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/16 v14, 0x5d

    if-ne v13, v14, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    if-eq v13, v12, :cond_6

    if-eq v13, v11, :cond_6

    if-eq v13, v7, :cond_6

    if-ne v13, v6, :cond_5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 69
    :cond_6
    :goto_3
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lanet/channel/util/HttpUrl;->host:Ljava/lang/String;

    :cond_7
    if-ne v4, v3, :cond_8

    .line 75
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lanet/channel/util/HttpUrl;->host:Ljava/lang/String;

    :cond_8
    const/4 v2, 0x0

    :goto_4
    if-ge v4, v3, :cond_c

    .line 81
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_9

    if-nez v2, :cond_9

    add-int/lit8 v2, v4, 0x1

    goto :goto_5

    :cond_9
    if-eq v5, v12, :cond_b

    if-eq v5, v7, :cond_b

    if-ne v5, v11, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    :goto_6
    move v5, v4

    goto :goto_7

    :cond_c
    move v5, v3

    :goto_7
    if-eqz v2, :cond_e

    .line 93
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 95
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lanet/channel/util/HttpUrl;->port:I

    .line 96
    iget v2, v0, Lanet/channel/util/HttpUrl;->port:I

    if-lez v2, :cond_d

    iget v2, v0, Lanet/channel/util/HttpUrl;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const v5, 0xffff

    if-le v2, v5, :cond_e

    :catch_0
    :cond_d
    return-object v1

    :cond_e
    :goto_8
    if-ge v4, v3, :cond_12

    .line 107
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v12, :cond_f

    if-nez v10, :cond_f

    move v10, v4

    goto :goto_9

    :cond_f
    if-eq v2, v11, :cond_11

    if-ne v2, v7, :cond_10

    goto :goto_a

    :cond_10
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_11
    :goto_a
    if-eqz v10, :cond_12

    move v2, v4

    goto :goto_b

    :cond_12
    move v2, v3

    :goto_b
    if-eqz v10, :cond_13

    .line 121
    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lanet/channel/util/HttpUrl;->path:Ljava/lang/String;

    goto :goto_c

    .line 123
    :cond_13
    iput-object v1, v0, Lanet/channel/util/HttpUrl;->path:Ljava/lang/String;

    .line 126
    :goto_c
    iget-object v2, v0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 127
    iget v2, v0, Lanet/channel/util/HttpUrl;->port:I

    const/16 v5, 0x50

    if-ne v2, v5, :cond_14

    .line 128
    iput-object v8, v0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    goto :goto_d

    :cond_14
    const/16 v5, 0x1bb

    if-ne v2, v5, :cond_15

    .line 130
    iput-object v9, v0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    goto :goto_d

    .line 132
    :cond_15
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v2

    iget-object v5, v0, Lanet/channel/util/HttpUrl;->host:Ljava/lang/String;

    invoke-interface {v2, v5, v1}, Lanet/channel/strategy/IStrategyInstance;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    .line 137
    :cond_16
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lanet/channel/util/HttpUrl;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Lanet/channel/util/HttpUrl;->containsNonDefaultPort()Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, ":"

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lanet/channel/util/HttpUrl;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    :cond_17
    iget-object v2, v0, Lanet/channel/util/HttpUrl;->path:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_18
    if-eq v4, v3, :cond_19

    const-string v2, "/"

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_19
    :goto_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lanet/channel/util/HttpUrl;->simpleUrl:Ljava/lang/String;

    .line 153
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    return-object v0

    :cond_1a
    return-object v1
.end method


# virtual methods
.method public containsNonDefaultPort()Z
    .locals 2

    .line 192
    iget v0, p0, Lanet/channel/util/HttpUrl;->port:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lanet/channel/util/HttpUrl;->port:I

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lanet/channel/util/HttpUrl;->port:I

    const/16 v1, 0x1bb

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public downgradeSchemeAndLock()V
    .locals 3

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lanet/channel/util/HttpUrl;->isSchemeLocked:Z

    .line 197
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iput-object v1, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    iget-object v1, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-static {v0, v2, v1}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getPort()I
    .locals 1

    .line 172
    iget v0, p0, Lanet/channel/util/HttpUrl;->port:I

    return v0
.end method

.method public host()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public isSchemeLocked()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lanet/channel/util/HttpUrl;->isSchemeLocked:Z

    return v0
.end method

.method public lockScheme()V
    .locals 1

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lanet/channel/util/HttpUrl;->isSchemeLocked:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->path:Ljava/lang/String;

    return-object v0
.end method

.method public replaceIpAndPort(Ljava/lang/String;I)V
    .locals 5

    if-eqz p1, :cond_6

    .line 223
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 224
    :goto_0
    iget-object v1, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 225
    iget-object v1, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_1
    :goto_1
    invoke-static {p1}, Lanet/channel/strategy/utils/Utils;->isIPV6Address(Ljava/lang/String;)Z

    move-result v1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 233
    iget-object v3, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const/16 v3, 0x5b

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    const/16 p1, 0x5d

    .line 239
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const/16 p1, 0x3a

    if-eqz p2, :cond_4

    .line 242
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 243
    :cond_4
    iget p2, p0, Lanet/channel/util/HttpUrl;->port:I

    if-eqz p2, :cond_5

    .line 244
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p0, Lanet/channel/util/HttpUrl;->port:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    :cond_5
    :goto_2
    iget-object p1, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public scheme()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 4

    .line 212
    iget-boolean v0, p0, Lanet/channel/util/HttpUrl;->isSchemeLocked:Z

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iput-object p1, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-static {p1, v2, v0}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->simpleUrl:Ljava/lang/String;

    iget-object v3, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/util/HttpUrl;->simpleUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public simpleUrlString()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->simpleUrl:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 2

    .line 185
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public urlString()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    return-object v0
.end method
