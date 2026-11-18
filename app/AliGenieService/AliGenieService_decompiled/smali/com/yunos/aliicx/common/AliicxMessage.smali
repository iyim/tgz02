.class public Lcom/yunos/aliicx/common/AliicxMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final MSG_EVENTID_KEY:Ljava/lang/String; = "id"

.field public static final MSG_PROP_KEY:Ljava/lang/String; = "prop"

.field public static final MSG_TIME_KEY:Ljava/lang/String; = "time"

.field public static final MSG_TRACKID_KEY:Ljava/lang/String; = "trackId"

.field public static final MSG_UPLOADMODE_KEY:Ljava/lang/String; = "uploadMode"

.field public static final MSG_VERSION_KEY:Ljava/lang/String; = "version"


# instance fields
.field public eventId:Ljava/lang/String;

.field public properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public time:J

.field public trackId:Ljava/lang/String;

.field public uploadMode:I

.field public versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yunos/aliicx/common/AliicxMessage;->trackId:Ljava/lang/String;

    iput-object p2, p0, Lcom/yunos/aliicx/common/AliicxMessage;->eventId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/yunos/aliicx/common/AliicxMessage;->time:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/yunos/aliicx/common/AliicxMessage;->uploadMode:I

    const/4 p1, 0x5

    iput p1, p0, Lcom/yunos/aliicx/common/AliicxMessage;->versionCode:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/yunos/aliicx/common/AliicxMessage;->properties:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yunos/aliicx/common/AliicxMessage;->trackId:Ljava/lang/String;

    iput-object p2, p0, Lcom/yunos/aliicx/common/AliicxMessage;->eventId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/yunos/aliicx/common/AliicxMessage;->time:J

    iput p5, p0, Lcom/yunos/aliicx/common/AliicxMessage;->uploadMode:I

    const/4 p1, 0x5

    iput p1, p0, Lcom/yunos/aliicx/common/AliicxMessage;->versionCode:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/yunos/aliicx/common/AliicxMessage;->properties:Ljava/util/HashMap;

    return-void
.end method

.method public static fromByteArray([B)Lcom/yunos/aliicx/common/AliicxMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p0}, Lc/f/a/a/b;->a([B)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json string : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yunos/aliicx/common/AliicxMessage;->fromJson(Lorg/json/JSONObject;)Lcom/yunos/aliicx/common/AliicxMessage;

    move-result-object p0

    return-object p0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/yunos/aliicx/common/AliicxMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "trackId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "uploadMode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v7, Lcom/yunos/aliicx/common/AliicxMessage;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/yunos/aliicx/common/AliicxMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    iput v0, v7, Lcom/yunos/aliicx/common/AliicxMessage;->versionCode:I

    const-string v0, "prop"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lcom/yunos/aliicx/common/AliicxMessage;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v7
.end method


# virtual methods
.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/yunos/aliicx/common/AliicxMessage;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yunos/aliicx/common/AliicxMessage;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yunos/aliicx/common/AliicxMessage;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aliicx_event_time"

    invoke-virtual {p0, v2, v1}, Lcom/yunos/aliicx/common/AliicxMessage;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yunos/aliicx/common/AliicxMessage;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aliicx_event_version"

    invoke-virtual {p0, v1, v0}, Lcom/yunos/aliicx/common/AliicxMessage;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yunos/aliicx/common/AliicxMessage;->properties:Ljava/util/HashMap;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yunos/aliicx/common/AliicxMessage;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadMode()I
    .locals 1

    iget v0, p0, Lcom/yunos/aliicx/common/AliicxMessage;->uploadMode:I

    return v0
.end method

.method public toByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/yunos/aliicx/common/AliicxMessage;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1
    sget-object v1, Lc/f/a/a/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Ljava/util/TreeSet;

    iget-object v3, p0, Lcom/yunos/aliicx/common/AliicxMessage;->properties:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    :try_start_0
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/yunos/aliicx/common/AliicxMessage;->properties:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v2, "trackId"

    iget-object v3, p0, Lcom/yunos/aliicx/common/AliicxMessage;->trackId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "id"

    iget-object v3, p0, Lcom/yunos/aliicx/common/AliicxMessage;->eventId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "time"

    iget-wide v3, p0, Lcom/yunos/aliicx/common/AliicxMessage;->time:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "uploadMode"

    iget v3, p0, Lcom/yunos/aliicx/common/AliicxMessage;->uploadMode:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "version"

    iget v3, p0, Lcom/yunos/aliicx/common/AliicxMessage;->versionCode:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "prop"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/yunos/aliicx/common/AliicxMessage;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
