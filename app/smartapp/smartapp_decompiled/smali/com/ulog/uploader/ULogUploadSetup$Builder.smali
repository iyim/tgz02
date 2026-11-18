.class public Lcom/ulog/uploader/ULogUploadSetup$Builder;
.super Ljava/lang/Object;
.source "ULogUploadSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ulog/uploader/ULogUploadSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private appSubVersion:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private buildSeq:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private debug:Z

.field private final extraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private projectName:Ljava/lang/String;

.field private uLog:Lcom/uc/sdk/ulog/ULogSetup;

.field private uploadUrl:Ljava/lang/String;

.field private uploader:Lcom/ulog/uploader/client/IULogUploader;

.field private utdId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 136
    iput-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appId:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appSecret:Ljava/lang/String;

    const-string v0, "http://px1.test.uae-2.uc.cn"

    .line 142
    iput-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->uploadUrl:Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->extraInfo:Ljava/util/Map;

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->debug:Z

    if-eqz p1, :cond_0

    .line 152
    iput-object p1, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->context:Landroid/content/Context;

    return-void

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "ulog upload init, context is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private fillExtraInfo()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->extraInfo:Ljava/util/Map;

    const-string v1, "bserial"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->extraInfo:Ljava/util/Map;

    iget-object v2, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->buildSeq:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->extraInfo:Ljava/util/Map;

    const-string v1, "bsver"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->extraInfo:Ljava/util/Map;

    iget-object v2, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appSubVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->extraInfo:Ljava/util/Map;

    const-string/jumbo v1, "utdid"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->extraInfo:Ljava/util/Map;

    iget-object v2, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->utdId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->extraInfo:Ljava/util/Map;

    const-string v1, "appid"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->extraInfo:Ljava/util/Map;

    iget-object v2, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method


# virtual methods
.method public appId(Ljava/lang/String;)Lcom/ulog/uploader/ULogUploadSetup$Builder;
    .locals 1

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iput-object p1, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appId:Ljava/lang/String;

    return-object p0

    .line 209
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appId should not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appSecret(Ljava/lang/String;)Lcom/ulog/uploader/ULogUploadSetup$Builder;
    .locals 1

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iput-object p1, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appSecret:Ljava/lang/String;

    return-object p0

    .line 217
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appSecret should be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appSubVersion(Ljava/lang/String;)Lcom/ulog/uploader/ULogUploadSetup$Builder;
    .locals 1

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iput-object p1, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appSubVersion:Ljava/lang/String;

    return-object p0

    .line 175
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appSubVersion should not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appVersion(Ljava/lang/String;)Lcom/ulog/uploader/ULogUploadSetup$Builder;
    .locals 1

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iput-object p1, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appVersion:Ljava/lang/String;

    return-object p0

    .line 166
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appVersion should not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/ulog/uploader/ULogUploadSetup;
    .locals 14

    .line 256
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->uLog:Lcom/uc/sdk/ulog/ULogSetup;

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v0}, Lcom/uc/sdk/ulog/ULogSetup;->getLogFileDir()Ljava/lang/String;

    move-result-object v5

    const-string v0, "logDir"

    .line 261
    invoke-static {v0, v5}, Lcom/ulog/uploader/ULogUploadSetup;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->projectName:Ljava/lang/String;

    const-string v1, "projectName"

    invoke-static {v1, v0}, Lcom/ulog/uploader/ULogUploadSetup;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appVersion:Ljava/lang/String;

    const-string v1, "appVersion"

    invoke-static {v1, v0}, Lcom/ulog/uploader/ULogUploadSetup;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appSubVersion:Ljava/lang/String;

    const-string v1, "appSubVersion"

    invoke-static {v1, v0}, Lcom/ulog/uploader/ULogUploadSetup;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->buildSeq:Ljava/lang/String;

    const-string v1, "buildSeq"

    invoke-static {v1, v0}, Lcom/ulog/uploader/ULogUploadSetup;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->utdId:Ljava/lang/String;

    const-string/jumbo v1, "utdid"

    invoke-static {v1, v0}, Lcom/ulog/uploader/ULogUploadSetup;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appSecret:Ljava/lang/String;

    const-string v1, "appSecret"

    invoke-static {v1, v0}, Lcom/ulog/uploader/ULogUploadSetup;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Lcom/ulog/uploader/ULogUploadSetup$Builder;->fillExtraInfo()V

    .line 270
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->uploader:Lcom/ulog/uploader/client/IULogUploader;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lcom/ulog/uploader/client/DefaultULogUploader;

    iget-object v7, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->uploadUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appId:Ljava/lang/String;

    iget-object v9, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appSecret:Ljava/lang/String;

    iget-object v10, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appVersion:Ljava/lang/String;

    iget-object v11, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appSubVersion:Ljava/lang/String;

    iget-object v12, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->buildSeq:Ljava/lang/String;

    iget-object v13, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->utdId:Ljava/lang/String;

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Lcom/ulog/uploader/client/DefaultULogUploader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->uploader:Lcom/ulog/uploader/client/IULogUploader;

    .line 274
    :cond_0
    new-instance v0, Lcom/ulog/uploader/ULogUploadSetup;

    iget-object v2, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->uLog:Lcom/uc/sdk/ulog/ULogSetup;

    iget-object v4, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->projectName:Ljava/lang/String;

    iget-object v6, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appVersion:Ljava/lang/String;

    iget-object v7, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appId:Ljava/lang/String;

    iget-object v8, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appSecret:Ljava/lang/String;

    iget-object v9, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->buildSeq:Ljava/lang/String;

    iget-object v10, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->utdId:Ljava/lang/String;

    iget-object v11, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->extraInfo:Ljava/util/Map;

    iget-boolean v12, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->debug:Z

    iget-object v13, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->uploader:Lcom/ulog/uploader/client/IULogUploader;

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/ulog/uploader/ULogUploadSetup;-><init>(Landroid/content/Context;Lcom/uc/sdk/ulog/ULogSetup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/ulog/uploader/client/IULogUploader;)V

    return-object v0

    .line 257
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ulogSetup should not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buildSeq(Ljava/lang/String;)Lcom/ulog/uploader/ULogUploadSetup$Builder;
    .locals 1

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iput-object p1, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->buildSeq:Ljava/lang/String;

    return-object p0

    .line 192
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "buildSeqSec should not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public debug(Z)Lcom/ulog/uploader/ULogUploadSetup$Builder;
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->debug:Z

    return-object p0
.end method

.method public extraInfo(Ljava/util/LinkedHashMap;)Lcom/ulog/uploader/ULogUploadSetup$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ulog/uploader/ULogUploadSetup$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->extraInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0

    .line 235
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "extraInfo should not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public projectName(Ljava/lang/String;)Lcom/ulog/uploader/ULogUploadSetup$Builder;
    .locals 1

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iput-object p1, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->projectName:Ljava/lang/String;

    return-object p0

    .line 157
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "projectName should not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ulogSetup(Lcom/uc/sdk/ulog/ULogSetup;)Lcom/ulog/uploader/ULogUploadSetup$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 246
    iput-object p1, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->uLog:Lcom/uc/sdk/ulog/ULogSetup;

    return-object p0

    .line 243
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "ulogSetup should not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public uploadUrl(Ljava/lang/String;)Lcom/ulog/uploader/ULogUploadSetup$Builder;
    .locals 1

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iput-object p1, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->uploadUrl:Ljava/lang/String;

    return-object p0

    .line 184
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "uploadUrl should not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public uploader(Lcom/ulog/uploader/client/IULogUploader;)Lcom/ulog/uploader/ULogUploadSetup$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 229
    iput-object p1, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->uploader:Lcom/ulog/uploader/client/IULogUploader;

    return-object p0

    .line 226
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "uploader should not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public utdId(Ljava/lang/String;)Lcom/ulog/uploader/ULogUploadSetup$Builder;
    .locals 1

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iput-object p1, p0, Lcom/ulog/uploader/ULogUploadSetup$Builder;->utdId:Ljava/lang/String;

    return-object p0

    .line 201
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "utdId should not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
