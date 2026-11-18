.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;
.super Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;
.source "UniversalCard.java"


# static fields
.field private static mImageIndex:I


# instance fields
.field public final TAG:Ljava/lang/String;

.field private displayAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayContent:Ljava/lang/String;

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;",
            ">;"
        }
    .end annotation
.end field

.field private isFallback:Z

.field private isForceCard:Z

.field private isImportancePerson:Z

.field private linkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;",
            ">;"
        }
    .end annotation
.end field

.field private originJson:Lorg/json/JSONObject;

.field private template:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "UniversalCard"

    .line 21
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isForceCard:Z

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->originJson:Lorg/json/JSONObject;

    :try_start_0
    const-string v1, "template"

    .line 39
    invoke-static {p1, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->template:Ljava/lang/String;

    const-string v1, "isImportant"

    .line 40
    invoke-static {p1, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parseBoolean(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isImportancePerson:Z

    .line 41
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->originJson:Lorg/json/JSONObject;

    const-string v1, "isFallback"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isFallback:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "parse UniversalCard err"

    .line 43
    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private parseAttributes()V
    .locals 5

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->displayAttributes:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->displayAttributes:Ljava/util/Map;

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->originJson:Lorg/json/JSONObject;

    const-string v1, "displayAttributes"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 207
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->displayAttributes:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse UniversalCard image err, origin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->originJson:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniversalCard"

    invoke-static {v2, v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private parseImages()V
    .locals 5

    .line 219
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->imageList:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    .line 222
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->imageList:Ljava/util/List;

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->originJson:Lorg/json/JSONObject;

    const-string v1, "images"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 226
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->imageList:Ljava/util/List;

    new-instance v3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse UniversalCard image err, origin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->originJson:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniversalCard"

    invoke-static {v2, v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private parseLinks()V
    .locals 8

    const-string v0, "parse UniversalCard audio err, origin:"

    const-string v1, "UniversalCard"

    .line 237
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->linkList:Ljava/util/List;

    if-eqz v2, :cond_0

    return-void

    .line 240
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->linkList:Ljava/util/List;

    const/4 v2, 0x0

    .line 242
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->originJson:Lorg/json/JSONObject;

    const-string v4, "videos"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videoJsonArray:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    .line 245
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 246
    iget-object v5, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->linkList:Ljava/util/List;

    new-instance v6, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoLink;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoLink;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse UniversalCard video err, origin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->originJson:Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    :cond_1
    :try_start_1
    new-instance v3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/AudioLink;

    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->originJson:Lorg/json/JSONObject;

    const-string v5, "audios"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/AudioLink;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/AudioLink;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 256
    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->linkList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->originJson:Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    :cond_2
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->originJson:Lorg/json/JSONObject;

    const-string v4, "querys"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "textJsonArray:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    .line 266
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 267
    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->linkList:Ljava/util/List;

    new-instance v5, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/TextLink;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/TextLink;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_2
    move-exception v2

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->originJson:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/lang/String;
    .locals 8

    .line 98
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->parseAttributes()V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->displayAttributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 103
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    goto :goto_2

    .line 108
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 110
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff1a"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x1a

    const-string v6, "\n"

    if-le v3, v4, :cond_1

    const/16 v3, 0x19

    .line 114
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const-string v7, "..."

    invoke-virtual {v5, v3, v4, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayContent()Ljava/lang/String;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->displayContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->originJson:Lorg/json/JSONObject;

    const-string v1, "text"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->displayContent:Ljava/lang/String;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->displayContent:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;
    .locals 4

    .line 125
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->parseImages()V

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->imageList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->imageList:Ljava/util/List;

    sget v2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->mImageIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageUrlList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->parseImages()V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->imageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    .line 159
    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLinkList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->parseLinks()V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "linkList :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->linkList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniversalCard"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->linkList:Ljava/util/List;

    return-object v0
.end method

.method public getOriginJson()Lorg/json/JSONObject;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->originJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getStepImg(I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;
    .locals 3

    .line 133
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->parseImages()V

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->imageList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-ne p1, v1, :cond_1

    .line 139
    sget v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->mImageIndex:I

    add-int/2addr v0, v1

    sput v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->mImageIndex:I

    .line 140
    sget v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->mImageIndex:I

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->imageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    .line 141
    sput v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->mImageIndex:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 144
    sget v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->mImageIndex:I

    sub-int/2addr v0, v1

    sput v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->mImageIndex:I

    .line 145
    sget v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->mImageIndex:I

    if-gez v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->imageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    sput v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->mImageIndex:I

    .line 150
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStepImg index:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->mImageIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " step:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UniversalCard"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->imageList:Ljava/util/List;

    sget v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->mImageIndex:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasImage()Z
    .locals 1

    .line 165
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->parseImages()V

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->imageList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFallback()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isFallback:Z

    return v0
.end method

.method public isFieldCompleted()Z
    .locals 3

    .line 173
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 179
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->parseAttributes()V

    .line 180
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->displayAttributes:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public isForceCard()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isForceCard:Z

    return v0
.end method

.method public isImportancePerson()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isImportancePerson:Z

    return v0
.end method

.method public isRenderByGenieBall()Z
    .locals 3

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getDisplayContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->displayContent:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->displayContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->displayContent:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->hasImage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRenderByGenieBall displayContent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->displayContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hasImage:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->hasImage()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UniversalCard"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isFallback()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoTemplate()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->template:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->template:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public open(Landroid/content/Context;)V
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You click title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isForceCard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isForceCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniversalCard"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "aligenie.baike.base"

    invoke-virtual {p1, p0, v1, v0, v0}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->setData(Ljava/lang/Object;Ljava/lang/String;ZI)V

    return-void
.end method

.method public setForceCardPage(Z)V
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " setForceCardPage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniversalCard"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isForceCard:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UniversalCard{originJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->originJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isFallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", displayContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->displayContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", displayAttributes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->displayAttributes:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", linkList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->linkList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", imageList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->imageList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isForceCard="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->isForceCard:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", template=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->template:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subtitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", speechAnswer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalCard;->speechAnswer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
